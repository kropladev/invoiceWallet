package pl.kropladev.wallet.configuration;

/**
 * Created by kropla on 22.12.15.
 */
import org.springframework.boot.*;
import org.springframework.boot.autoconfigure.*;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@EnableAutoConfiguration
@SpringBootApplication
@EnableTransactionManagement
public class BootConfig {

    public static void main(String[] args) throws Exception {
        SpringApplication.run(BootConfig.class, args);
    }
}