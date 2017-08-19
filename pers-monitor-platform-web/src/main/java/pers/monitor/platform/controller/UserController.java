package pers.monitor.platform.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import pers.monitor.platform.model.User;
import pers.monitor.platform.service.UserService;

@RestController
@Controller
public class UserController {

    @Resource
    UserService userServuce;

    // @RequestMapping(value = "/login.html", method = RequestMethod.POST,
    // consumes = "application/json")
    @RequestMapping(value = "/login.html")
    public ModelAndView login(User user) {
        ModelAndView modelAndView = new ModelAndView();
        User user2 = userServuce.getUserByIdAndName(user.getUserName(),
                user.getPassword());
        modelAndView.addObject("message", "helloworld");
        if (user2 != null) {
            modelAndView.setViewName("/admin/mainPage");
        } else {
            modelAndView.setViewName("/index");
        }
        return modelAndView;
    }

    @RequestMapping(value = "/api/users")
    public User getAll() {
        return userServuce.getUserById(1);
    }

}
