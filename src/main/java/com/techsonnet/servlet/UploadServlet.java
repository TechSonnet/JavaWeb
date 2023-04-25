package com.techsonnet.servlet;

import javax.servlet.ServletException;
import javax.servlet.ServletInputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.nio.charset.StandardCharsets;

@WebServlet("/upload")
public class UploadServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 获取上传文件的字节流
        ServletInputStream inputStream = req.getInputStream();

        // 将字节流转换为输出缓冲字节流
        BufferedInputStream bufferedInputStream = null;
        bufferedInputStream = new BufferedInputStream(inputStream);

        // 将文件保存到服务器

        // 1.拿到文件保存到 Tomcat 服务器的绝对路径
        String realPath = req.getServletContext().getRealPath("/file/copy.txt");
        System.out.println(realPath);

        // 2.输出字节缓冲流保存文件
        OutputStream outputStream = new FileOutputStream(realPath);
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(outputStream);

        int temp = 0;
        while ((temp = bufferedInputStream.read()) != -1){

            bufferedOutputStream.write(temp);
            bufferedOutputStream.flush();
        }


        // 3.关闭文件流
        inputStream.close();
        outputStream.close();
        bufferedInputStream.close();
        bufferedOutputStream.close();

    }
}
