package com.ywb.controller;

import com.ywb.pojo.User;
import com.ywb.service.CardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
//这里引入的包是servlet.ModelAndView不是portlet.ModelAndView！！！！！！！！！！！！
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * @title:
 * @package
 * @description:
 * @author: Yuan
 * @date:
 * @version: V1.0
 */
@RestController
public class CardController {
    @Autowired
    CardService cardService;
    @GetMapping("cards")
    public ModelAndView cardList() {
        //获取到查询的数据
        List<User> cardList = cardService.getAll();
        ModelAndView mav = new ModelAndView();
        //将数据放置到ModelAndView对象view中,第二个参数可以是任何java类型
        mav.addObject("cardList", cardList);
        mav.setViewName("cardList");
        return mav;
    }
    @GetMapping("cards/card")
    public ModelAndView addGo(ModelAndView mav) {
        mav.setViewName("add");
        return mav;
    }
    @PostMapping("cards")
    //在需要校验的pojo前，添加@Validated，在需要校验的pojo后添加BindingResult bindingResult接收校验出错信息
    //注意！！@Validated和BindingResult bindingResult 是配对出现的，并且在形参里的顺序是固定的（一前一后）
    public ModelAndView add(@Validated @ModelAttribute("user") User user, BindingResult bindingResult) {
        ModelAndView mav = new ModelAndView();
        //获取校验的错误信息
        while (bindingResult.hasErrors()){
/*           // 输出错误信息，此处可用在有单独错误信息jsp的地方
            List<ObjectError> allErrors = bindingResult.getAllErrors();
            System.out.println("你说"+allErrors);
            //将错误信息传至页面
            mav.addObject("allErrors",allErrors);*/
            mav.setViewName("add");
            //出错则重新至添加页面
            return mav;
        }
        cardService.add(user);
        mav = new ModelAndView("redirect:/cards");
        return mav;

    }
    @DeleteMapping("cards/{id}")
    public ModelAndView del(@PathVariable Integer id) {
        cardService.del(id);
        ModelAndView mav = new ModelAndView("redirect:/cards");
        return mav;
    }
    @GetMapping("/cards/{id}")
    public ModelAndView updateGo(@PathVariable Integer id) {
        User user = cardService.selectById(id);
        ModelAndView mav = new ModelAndView("update");
        mav.addObject("user", user);
        return mav;
    }
    @PutMapping("/cards/{id}")
    public ModelAndView update(User user) {
        cardService.update(user);
        ModelAndView mav = new ModelAndView("redirect:/cards");
        return mav;
    }

//    //在json页面显示设置的json格式数据
//    @GetMapping("cards/json")
//    public ModelAndView json(ModelAndView mav) {
//        User user = new User();
//        user.setId(19);
//        user.setName("小明");
//        user.setJob("java");
//        mav.addObject("user", user);
//        mav.setViewName("json");
//        return mav;
//    }
//
//    //在add页面添加数据,在json页面显示添加的json格式数据
//    @PostMapping("cards/json")
//    //@ModelAttribute通常用在Controller方法注解中，用于解释model entity。此时分两种情况：从Model中获取或者从Form表单/URL
//    //参数中获取，如果是后者，则不添加此注释也能拿到对象
//    public ModelAndView addJson(@ModelAttribute User user) {
//        User user1 = new User();
//        user1.setQQ(user.getQQ());
//        user1.setName(user.getName());
//        user1.setJob(user.getJob());
//        ModelAndView mav = new ModelAndView("json");
//        mav.addObject("user", user1);
//        return mav;
//    }
}
