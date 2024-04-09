package dev.jguard.judge.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@Slf4j
@RestController
@RequestMapping("/verdict")
public class VerdictController {

    public Object getVerdict(@RequestParam String action) {

    }
}
