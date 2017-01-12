package com.snmill.jffmpeg;

import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 */
public class VideoCodecJNITest {

    public VideoCodecJNITest() {
    }

    @BeforeClass
    public static void setUpClass() {
        System.loadLibrary("libffmpegjni");
    }

    @Test
    public void testGetCodecNameOfFile() {
        System.out.println("getCodecNameOfFile");
        String file = "D:\\video\\ffmpeg\\using_ffmpeg\\video_file.mkv";
        VideoCodecJNI instance = new VideoCodecJNI();
        String expResult = "H.264 / AVC / MPEG-4 AVC / MPEG-4 part 10";
        String result = instance.getCodecNameOfFile(file);
        assertEquals(expResult, result);
    }

}
