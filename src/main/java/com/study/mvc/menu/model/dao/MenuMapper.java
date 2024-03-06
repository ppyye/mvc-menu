package com.study.mvc.menu.model.dao;

import com.study.mvc.menu.model.dto.MenuDTO;

import java.util.List;

public interface MenuMapper {
    List<MenuDTO> selectAllMenu();

    MenuDTO selectMenuByMenuCode(String menuCode);

    int insertMenu(MenuDTO menu);

    int updateMenu(MenuDTO menu);

    int deleteMenu(String menuCode);
}
