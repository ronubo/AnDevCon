#include <stdio.h>
#include <android/log.h>
#define LOG_TAG "hello_c_example"
int main () 
	{
	printf("Hello native Android world\n");
	__android_log_print(ANDROID_LOG_INFO, LOG_TAG, "Hello native Android world\n");
	return 0;
	}
