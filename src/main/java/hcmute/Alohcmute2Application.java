package hcmute;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.security.config.Customizer;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.firewall.StrictHttpFirewall;

import hcmute.config.CustomSiteMeshFilter;
import hcmute.service.IStorageService;

@SpringBootApplication
public class Alohcmute2Application {

	public static void main(String[] args) {
		SpringApplication.run(Alohcmute2Application.class, args);
	}

	@Bean

	public FilterRegistrationBean<CustomSiteMeshFilter> siteMeshFilter() {

		FilterRegistrationBean<CustomSiteMeshFilter> filterRegistrationBean = new FilterRegistrationBean<CustomSiteMeshFilter>();

		filterRegistrationBean.setFilter(new CustomSiteMeshFilter()); // adding sitemesh filter ??

		filterRegistrationBean.addUrlPatterns("/*");

		return filterRegistrationBean;

	}

	@Bean
	CommandLineRunner init(IStorageService storageService) {
		return (args -> {
			storageService.init();
		});
	}

	@Bean
	public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
		 http
         .csrf(AbstractHttpConfigurer::disable)
         .headers(headers -> 
             headers
                 .xssProtection(Customizer.withDefaults())
                 .contentSecurityPolicy(
                     contentSecurityPolicyConfig -> 
                         contentSecurityPolicyConfig.policyDirectives("default-src 'self'; style-src 'self'; frame-ancestors 'self'; form-action 'self';")
                 )
         );
		return http.build();
	}

	@Bean
	public StrictHttpFirewall strictHttpFirewall() {
		StrictHttpFirewall firewall = new StrictHttpFirewall();
		// Cho phép chuỗi "//" trong URL
		firewall.setAllowUrlEncodedDoubleSlash(true);
		return firewall;
	}

}
