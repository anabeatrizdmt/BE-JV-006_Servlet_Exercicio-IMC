package com.example.imc;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.annotation.WebServlet;
import java.io.IOException;

@WebServlet(name = "IMCServlet", urlPatterns = "/calc")
public class IMCServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Double peso = Double.valueOf(req.getParameter("peso"));
        Double altura = Double.valueOf(req.getParameter("altura"));

        Double imc = peso / (altura * altura);

        req.setAttribute("imc", String.format("%.2f", imc));
        resp.setHeader("imc", String.format("%.2f", imc));
        req.getRequestDispatcher("/index.jsp").forward(req, resp);

    }
}
