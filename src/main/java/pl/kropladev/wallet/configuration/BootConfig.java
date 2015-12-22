package pl.kropladev.wallet.configuration;

/**
 * Created by kropla on 22.12.15.
 */
import org.springframework.boot.*;
import org.springframework.boot.autoconfigure.*;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;

//@RestController
//@EnableAutoConfiguration
@SpringBootApplication
public class BootConfig {

 /*   @RequestMapping("/")
    String home() {
        return "Hello World!";
    }*/

    public static void main(String[] args) throws Exception {
        SpringApplication.run(BootConfig.class, args);
    }

}