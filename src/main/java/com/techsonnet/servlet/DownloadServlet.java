package com.techsonnet.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;

@WebServlet("/download")
public class DownloadServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 设置响应方式，如果不设置，有些浏览器会出错
        resp.setContentType("application/x-msdownload");

        // 设置下载之后的文件名
        resp.setHeader("Content-Disposition","attachment;filename=1.png");

        // 获取输出流
        OutputStream outputStream = resp.getOutputStream();
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(outputStream);

        // 获取绝对路径
        String path = req.getServletContext().getRealPath("file/1.png");

        InputStream inputStream = new FileInputStream(path);
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
        int temp = 0;
        while ((temp = bufferedInputStream.read()) != -1){
            bufferedOutputStream.write(temp);
            bufferedOutputStream.flush();
        }

        inputStream.close();
        outputStream.close();
        bufferedInputStream.close();
        bufferedOutputStream.close();
    }
}
