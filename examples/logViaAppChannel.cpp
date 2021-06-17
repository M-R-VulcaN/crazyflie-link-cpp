#define TRACEPOINT_DEFINE

#include <iostream>
#include <thread>
#include <mutex>
#include <condition_variable>
#include <chrono>
#include <sstream>
#include <queue>
#include <vector>
#include <thread>

#include "LoggingCrazyflieWrapper.h"
#include "utilsPlus.hpp"
#include "tracepoint-provider.h"
#define ACK_DELAY_MICRO_SEC 30

using namespace bitcraze::crazyflieLinkCpp;

int main()
{
    resetUSB();

    Crazyflie crazyflie("usb://0");
    // LoggingCrazyflieWrapper logging(crazyflie);
    crazyflie.init();
    LoggingCrazyflieWrapper loggingWrapper(crazyflie);
    // tr
    tracepoint(gydle_om, foo, "start logging");

    loggingWrapper.start();

    tracepoint(gydle_om, foo, "stop logging");

    return 0;
}
