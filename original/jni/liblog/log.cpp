#include <log/log.h>

int __android_log_print(int prio, const char* tag, const char* fmt, ...){
    return 0;
}

int __android_log_buf_print(int bufID, int prio, const char* tag,
                            const char* fmt, ...){
    return 0;
}
void __android_log_assert(const char* cond, const char* tag, const char* fmt,
                          ...){}
int __android_log_error_write(int tag, const char* subTag, int32_t uid,
                              const char* data, uint32_t dataLen){
    return 0;
}
