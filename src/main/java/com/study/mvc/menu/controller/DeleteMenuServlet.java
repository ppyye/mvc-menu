package com.study.mvc.menu.controller;

import com.study.mvc.menu.model.service.MenuService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/menu/delete")
public class DeleteMenuServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String menuCode = req.getParameter("menuCode");

        MenuService menuService = new MenuService();
        int result = menuService.deleteMenu(menuCode);

        if(result > 0) {
            resp.sendRedirect(req.getContextPath() + "/menu/list");
        } else {
            req.setAttribute("message", "메뉴 삭제에 실패하였습니다.");
            req.getRequestDispatcher("/WEB-INF/views/common/errorPage.jsp").forward(req, resp);
        }
    }
}
