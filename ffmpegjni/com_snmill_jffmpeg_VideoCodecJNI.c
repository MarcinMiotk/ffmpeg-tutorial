#include <com_snmill_jffmpeg_VideoCodecJNI.h>
#include <avformat.h>

#ifdef __cplusplus
extern "C" {
#endif

    /*
     * Class:     com_snmill_jffmpeg_VideoCodecJNI
     * Method:    getCodecNameOfFile
     * Signature: (Ljava/lang/String;)Ljava/lang/String;
     */
    JNIEXPORT jstring JNICALL Java_com_snmill_jffmpeg_VideoCodecJNI_getCodecNameOfFile
    (JNIEnv *env, jobject thisObject, jstring urlToFile) {
        const char* pathToFile = (*env)->GetStringUTFChars(env, urlToFile, 0);
        // Initialize libavformat and register all the muxers, demuxers and protocols.
        av_register_all();
        AVFormatContext* context = avformat_alloc_context();
        int fd = avformat_open_input(&context, pathToFile, NULL, NULL);
        AVCodecContext *codecContext = context->streams[0]->codec;
        AVCodec *codec = avcodec_find_decoder(codecContext->codec_id);
        const char* codecName = codec->long_name;
        jstring result = (*env)->NewStringUTF(env, codecName);
        avformat_close_input(&context);
        avformat_free_context(context);
        (*env)->ReleaseStringUTFChars(env, urlToFile, pathToFile);
        return result;
    }

#ifdef __cplusplus
}
#endif