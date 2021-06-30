#include "TocWrapper.h"

using bitcraze::crazyflieLinkCpp::Connection;

TocWrapper::TocWrapper(Toc& toc, ConnectionWrapper & conWprToc, ConnectionWrapper & conWprRead) : WrapperTemplate<Toc, TocWrapper>(toc), _conWprToc(&conWprToc), _conWprRead(&conWprRead)
{
}

TocWrapper::~TocWrapper()
{
}


void TocWrapper::initToc() 
{
     // ask for the toc info
    uint8_t cmd = CMD_TOC_INFO_V2;

    _conWprToc->sendData(&cmd, sizeof(cmd));

    TocInfo cfTocInfo(_conWprToc->recvFilteredData(0));

    uint16_t num_of_elements = cfTocInfo._numberOfElements;

    for (uint16_t i = 0; i < num_of_elements; i++)
    {
        TocItem tocItem();
        _core->insert(getTocItemFromCrazyflie(i));
    }

}

TocItem TocWrapper::getTocItemFromCrazyflie(uint16_t id) const
{
    uint8_t cmd = CMD_TOC_ITEM_V2;
    // ask for a param with the given id
    _conWprToc->sendData(&cmd, sizeof(uint8_t), &id, sizeof(id));

    return TocItem(_conWprToc->recvFilteredData(0));
}

std::pair<TocItem, ParamValue> TocWrapper::getTocItemAndValueFromCrazyflie(const TocItem& tocItem) const
{
    std::pair<TocItem, ParamValue> res;
    res.first = tocItem;
    _conWprRead->sendData(&res.first._id, sizeof(res.first._id));
    
    if(!recvValue(res.second, res.first._type))
        std::cout << "Error reading value recvValue - func getTocItemAndValueFromCrazyflie" << std::endl;

    return res;
}

std::pair<TocItem, ParamValue> TocWrapper::getTocItemAndValueFromCrazyflie(const std::string &groupName, const std::string &paramName) const
{
    return getTocItemAndValueFromCrazyflie(_core->getItem(groupName,paramName));
}


bool TocWrapper::recvValue(ParamValue& result, const TocItemType& tocItemType) const
{
    switch (tocItemType._type)
    {
    case INT8_T_CODE:
        return recvValue(result._int8Val);
    
    case INT16_T_CODE:
        return recvValue(result._int16Val);
    
    case INT32_T_CODE:
        return recvValue(result._int32Val);
    
    case INT64_T_CODE:
        return recvValue(result._int64Val);
    
    case FP16_CODE:
        return recvValue(result._FP16val);
    
    case FLOAT_CODE:
        return recvValue(result._floatVal);
    
    case DOUBLE_CODE:
        return recvValue(result._doubleVal);

   case UINT8_T_CODE:
        return recvValue(result._uint8Val);
    
    case UINT16_T_CODE:
        return recvValue(result._uint16Val);
    
    case UINT32_T_CODE:
        return recvValue(result._uint32Val);
    
    case UINT64_T_CODE:
        return recvValue(result._uint64Val);
    
    default:
        return false;
    }
}