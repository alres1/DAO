package ru.netology.dao2.controller;

import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import ru.netology.dao2.repository.AppRepository;

import java.util.List;

@RestController
@AllArgsConstructor
public class AppController {

    private AppRepository appRepository;

    @GetMapping("/products/fetch-product")
    public List<String> getAuthorities(@RequestParam("name") String customer) {
        return appRepository.getProductName(customer);
    }

}
