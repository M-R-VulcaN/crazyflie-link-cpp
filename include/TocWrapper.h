#pragma once

#include "WrapperTemplate.h"
#include "Toc.h"
#include "ConnectionWrapper.h"


#define CMD_TOC_ELEMENT 0 // original version: up to 255 entries
#define CMD_TOC_INFO 1    // original version: up to 255 entries
#define CMD_TOC_ITEM_V2 2 // version 2: up to 16k entries
#define CMD_TOC_INFO_V2 3 // version 2: up to 16k entries


class TocWrapper : WrapperTemplate<Toc, TocWrapper>
{
private:
    ConnectionWrapper* _conWprToc;
    ConnectionWrapper* _conWprRead;
    TocItem getTocItemFromCrazyflie(uint16_t id) const;
    bool recvValue(ParamValue& result, const TocItemType& tocItemType) const;


  template<typename ValType>
    bool recvValue(ValType& result) const
    {
        // std::cout << (int)objectToSend << std::endl;
        auto p_recv = _conWprRead->recvFilteredData(0);
        if(sizeof(result)<p_recv.payloadSize())
            return false;
        std::copy_n(p_recv.payload(),p_recv.payloadSize(),(uint8_t*)&result);
        return true;
    }
public:
    TocWrapper(Toc &toc, ConnectionWrapper& conToc, ConnectionWrapper& conRead);
    void initToc();
    
    virtual TocWrapper &operator=(Toc &toc)
    {
        WrapperTemplate<Toc, TocWrapper>::_core = &toc;
        return *this;
    }
    std::pair<TocItem, ParamValue> getTocItemAndValueFromCrazyflie(const TocItem& tocItem) const;

    std::pair<TocItem, ParamValue> getTocItemAndValueFromCrazyflie(const std::string &groupName, const std::string &paramName) const;
    
    virtual ~TocWrapper();
};
