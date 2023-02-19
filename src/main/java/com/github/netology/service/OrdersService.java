package com.github.netology.service;

import com.github.netology.repository.OrdersRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrdersService {
    private final OrdersRepository ordersRepository;

    public OrdersService(OrdersRepository ordersRepository) {
        this.ordersRepository = ordersRepository;
    }

    public List<String> getProductName(String name) {
        return ordersRepository.getProductName(name);
    }
}
