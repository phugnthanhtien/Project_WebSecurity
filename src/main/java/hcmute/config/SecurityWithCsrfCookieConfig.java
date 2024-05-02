package hcmute.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.Customizer;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.csrf.CookieCsrfTokenRepository;

@Configuration
@EnableWebSecurity
public class SecurityWithCsrfCookieConfig {
	@Bean
	public SecurityFilterChain filterChain2(HttpSecurity http) throws Exception {
		return http.csrf(csrf -> csrf.csrfTokenRepository(CookieCsrfTokenRepository.withHttpOnlyFalse()))
				.headers(headers -> headers.xssProtection(Customizer.withDefaults())
						.contentSecurityPolicy(csp -> csp.policyDirectives(
								"default-src 'self'; style-src 'self'; frame-ancestors 'self'; form-action 'self';")))
				.authorizeRequests(authorize -> authorize.anyRequest().permitAll()).build();
	}
}
