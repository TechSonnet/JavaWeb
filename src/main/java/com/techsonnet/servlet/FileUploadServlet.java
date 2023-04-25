package com.techsonnet.servlet;

import org.apache.commons.fileupload.FileItem;

import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.List;

@WebServlet("/upload2")
public class FileUploadServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        InputStream inputStream = null;
        BufferedInputStream bufferedInputStream = null;
        OutputStream outputStream = null;
        BufferedOutputStream bufferedOutputStream = null;

        try {
            // 获取请求封装的信息
            FileItemFactory fileItemFactory = new DiskFileItemFactory();
            ServletFileUpload servletFileUpload = new ServletFileUpload(fileItemFactory);
            List<FileItem> fileItems = servletFileUpload.parseRequest(req);

            for (FileItem fileItem : fileItems) {

                // 判断是否为文件
                if(fileItem.isFormField()){
                    // 不是文件
                    String name = fileItem.getFieldName();
                    String value = fileItem.getString("UTF-8");
                    System.out.println(name + ": "+value);
                } else {
                    // 是文件，则保存
                    String fileName = fileItem.getName();
                    inputStream = fileItem.getInputStream();
                    bufferedInputStream = new BufferedInputStream(inputStream);

                    // 获取文件保存路径
                    String path = req.getServletContext().getRealPath("file/"+fileName);
                    outputStream = new FileOutputStream(path);
                    bufferedOutputStream = new BufferedOutputStream(outputStream);

                    // 缓冲流保存文件至服务器
                    int temp = 0;
                    while ((temp = bufferedInputStream.read()) != -1){
                        bufferedOutputStream.write(temp);
                        bufferedOutputStream.flush();
                    }

                }

            }
        } catch (FileUploadException e) {
            e.printStackTrace();
        }finally {
            try {
                inputStream.close();
                bufferedInputStream.close();
                outputStream.close();
                bufferedOutputStream.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }



    }
}
