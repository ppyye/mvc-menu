package com.study.mvc.menu.controller;

import com.study.mvc.menu.model.dto.MenuDTO;
import com.study.mvc.menu.model.service.MenuService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/menu/select")
public class SelectMenuByMenuCodeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String menuCode = req.getParameter("menuCode");

        MenuService menuService = new MenuService();
        MenuDTO selectedMenu = menuService.selectMenuByMenuCode(menuCode);

        String path = "";
        if(selectedMenu != null) {
            path = "/WEB-INF/views/menu/showMenuInfo.jsp";
            req.setAttribute("selectedMenu", selectedMenu);
        } else {
            path = "/WEB-INF/views/common/errorPage.jsp";
            req.setAttribute("message", "해당 코드를 가진 메뉴가 없습니다.");
        }
        req.getRequestDispatcher(path).forward(req, resp);
    }
}
