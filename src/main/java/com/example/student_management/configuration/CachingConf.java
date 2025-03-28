package com.example.student_management.configuration;


import org.springframework.cache.CacheManager;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.cache.concurrent.ConcurrentMapCacheManager;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@EnableCaching
@Configuration
public class CachingConf {

    @Bean
    public CacheManager cacheManager() {
        return new ConcurrentMapCacheManager("userData");
    }
}
