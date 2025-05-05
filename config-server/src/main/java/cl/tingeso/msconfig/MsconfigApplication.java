package cl.tingeso.msconfig;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.config.server.EnableConfigServer;

@SpringBootApplication
@EnableConfigServer
public class MsconfigApplication {

	public static void main(String[] args) {
		SpringApplication.run(MsconfigApplication.class, args);
	}

}
