package com.shelfcontrol.shelfcontrol.Methods;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

import org.springframework.web.multipart.MultipartFile;

public class storeImage {
    private String iconBasePath = "/Users/sarinamagar/Batch-31B---GroupE/shelfcontrol/src/main/resources/static/template/images/books/";
    private String previewBasePath = "/Users/sarinamagar/Batch-31B---GroupE/shelfcontrol/src/main/resources/static/preview/";
    public int store(MultipartFile thumbnail, MultipartFile preview, String isbn) throws IOException{
        
        File thumbnailPath = new File(iconBasePath + isbn +".png" );
        File previewPath = new File(previewBasePath+ isbn +".pdf");
        FileOutputStream thumbnailOutput;
        FileOutputStream previewOutput;
        int status = 0;
        try {
            thumbnailOutput = new FileOutputStream(thumbnailPath);
            thumbnailOutput.write(thumbnail.getBytes());
            thumbnailOutput.close();
            thumbnailPath.createNewFile();
            
            previewOutput = new FileOutputStream(previewPath);
            previewOutput.write(preview.getBytes());
            previewOutput.close();
            previewPath.createNewFile();
            status = 1;
            
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        return status;
    }
}
