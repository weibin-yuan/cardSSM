package com.ywb.service.impl;

import com.ywb.dao.CardDao;
import com.ywb.pojo.User;
import com.ywb.service.CardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @title:
 * @package
 * @description:
 * @author: Yuan
 * @date:
 * @version: V1.0
 */
@Service
public class CardServiceImpl implements CardService {
    @Autowired
    private CardDao cardDao;

    @Override
    public void add(User rc) {
        cardDao.add(rc);
    }

    @Override
    public void del(Integer id) {
        cardDao.del(id);
    }

    @Override
    public void update(User user) {
        cardDao.update(user);
    }

    @Override
    public List<User> getAll() {
        return cardDao.getAll();
    }

    @Override
    public User selectById(Integer id) {
        return cardDao.selectById(id);
    }

    @Override
    public User selectByName(String name) {
        return cardDao.selectByName(name);
    }

    @Override
    public User selectByNumber(int number) {
        return cardDao.selectByNumber(number);
    }
}
