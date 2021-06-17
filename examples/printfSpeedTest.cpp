#define TRACEPOINT_DEFINE

#include <stdio.h>

void foo(char string100[]);
#include "tracepoint-provider.h"

int main()
{
    char string100[101] ;
        int i = 0;
for (i = 0; i<100;i++)
    {
        string100[i] = 'c';
    }

    string100[100] = 0;

    foo(string100);

    return 0;
}
void foo(char string100[])
{
    tracepoint(gydle_om, foo, "printf 100 chars x100 start");
  
        int i = 0;

      for (i = 0; i<100;i++)
    {
        printf("%s",string100);
    }
    tracepoint(gydle_om, foo, "printf 100 chars x100 stop");

}