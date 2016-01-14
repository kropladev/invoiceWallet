package pl.kropladev.wallet.configuration;

/**
 * Created by kropla on 14.01.16.
 */
import org.springframework.context.annotation.Configuration;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@EnableTransactionManagement
public class HibernateConfigWithoutBoot extends HibernateConfiguration{
}
