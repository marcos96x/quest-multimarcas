-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 29/08/2021 às 03:15
-- Versão do servidor: 10.3.28-MariaDB
-- Versão do PHP: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `quest_multimarcas`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cars`
--

CREATE TABLE `cars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `nome_veiculo` varchar(510) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hash_veiculo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ano` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `combustivel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `portas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quilometragem` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cambio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `cars`
--

INSERT INTO `cars` (`id`, `user_id`, `nome_veiculo`, `hash_veiculo`, `valor`, `foto`, `link`, `ano`, `combustivel`, `portas`, `quilometragem`, `cambio`, `cor`, `created_at`, `updated_at`) VALUES
(26, 1, 'BMW X1 SDRIVE 20i 2.0/2.0 TB Acti.Flex Aut', 'fa8751dbc3267d96d60e45bd6c26c557', 'R$ 134.790', 'https://resized-images.autoconf.com.br/827x0/filters:format(jpg)/veiculos/fotos/f4ae2f1f-9094-4244-8f22-9a4300524c5f.jpeg', 'https://www.questmultimarcas.com.br/carros/bmw/x1-sdrive-20i-2-0-2-0-tb-acti-flex-aut/2016/78099', '2016', 'Flex', '4 portas', '39.000', 'Automático', 'Cinza', '2021-08-29 06:00:33', '2021-08-29 06:00:33'),
(27, 1, 'BMW X1 SDRIVE 20i X-Line 2.0 TB Active Flex BLINDADA', '3bda05a47463f1d2935c8a2e46aeb36e', 'R$ 217.790', 'https://resized-images.autoconf.com.br/827x0/filters:format(jpg)/veiculos/fotos/0c7c63a1-f8b1-4e61-af1b-cee695e82495.jpeg', 'https://www.questmultimarcas.com.br/carros/bmw/x1-sdrive-20i-x-line-2-0-tb-active-flex/2018/88860', '2018', 'Flex', '4 portas', '29.000', 'Automático', 'Preto', '2021-08-29 06:00:33', '2021-08-29 06:00:33'),
(28, 1, 'BMW X4 M Competition 3.0 Bi-TB 510cv Aut.', '825ea7fa53dca0f47b35baf1915c965d', 'R$ 624.890', 'https://resized-images.autoconf.com.br/827x0/filters:format(jpg)/veiculos/fotos/485bb4e1-5777-4dcd-ab95-f6faaf2b9a4c.jpeg', 'https://www.questmultimarcas.com.br/carros/bmw/x4-m-competition-3-0-bi-tb-510cv-aut/2020/88614', '2020', 'Gasolina', '4 portas', '7.000', 'Automático', 'Cinza', '2021-08-29 06:00:33', '2021-08-29 06:00:33'),
(29, 1, 'BMW 116iA 1.6 TB 16V 136cv 5p', '8d6a7e121b1ce826d2dff3271d784307', 'R$ 79.790', 'https://resized-images.autoconf.com.br/827x0/filters:format(jpg)/veiculos/fotos/dae87242-4213-456d-b484-65bcb57dfa8f.jpeg', 'https://www.questmultimarcas.com.br/carros/bmw/116ia-1-6-tb-16v-136cv-5p/2015/63141', '2015', 'Gasolina', '4 portas', '75.115', 'Automático', 'Preto', '2021-08-29 06:01:45', '2021-08-29 06:01:45'),
(30, 1, 'BMW 320i 2.0 Activeflex Turbo', 'd4cba22b5f68a96aa2a7724e8ca42b91', 'R$ 226.790', 'https://resized-images.autoconf.com.br/827x0/filters:format(jpg)/veiculos/fotos/0323e670-451b-4228-a545-1d7f17d06ff7.jpg', 'https://www.questmultimarcas.com.br/carros/outros/20-activeflex-turbo/2020/82776', '2020', 'Gasolina', '4 portas', '18.000', 'Automático', 'Branco', '2021-08-29 06:02:26', '2021-08-29 06:02:26'),
(31, 1, 'Jeep COMPASS LONGITUDE 2.0 4x2 Flex 16V Aut. BLINDADO', '9e2ed9913baccfafd0002e9c7f3523fb', 'R$ 99.490', 'https://resized-images.autoconf.com.br/827x0/filters:format(jpg)/veiculos/fotos/093dfd19-8fef-4b71-80e2-20b5d8065e07.jpeg', 'https://www.questmultimarcas.com.br/carros/jeep/compass-longitude-2-0-4x2-flex-16v-aut/2017/78298', '2017', 'Flex', '4 portas', '97.000', 'Automático', 'Preto', '2021-08-29 06:14:28', '2021-08-29 06:14:28'),
(32, 1, 'Jeep Renegade Longitude 2.0 4x4 TB Diesel Aut', '747f8a6808668cac635d4bb3e74ec610', 'R$ 116.790', 'https://resized-images.autoconf.com.br/827x0/filters:format(jpg)/veiculos/fotos/ab4d89cb-37cb-4506-bf88-7a01734da183.jpeg', 'https://www.questmultimarcas.com.br/carros/jeep/renegade-longitude-2-0-4x4-tb-diesel-aut/2018/80549', '2018', 'Diesel', '4 portas', '49.000', 'Automático', 'Marrom', '2021-08-29 06:14:28', '2021-08-29 06:14:28'),
(33, 1, 'Jeep COMPASS LONGITUDE 2.0 4x4 Dies. 16V Aut.', '781b75e1d0800d443ad76ccb80eb6ea7', 'R$ 152.790', 'https://resized-images.autoconf.com.br/827x0/filters:format(jpg)/veiculos/fotos/7e76725a-6cfd-4cca-be78-d3b2523cc22d.jpeg', 'https://www.questmultimarcas.com.br/carros/jeep/compass-longitude-2-0-4x4-dies-16v-aut/2019/80599', '2019', 'Diesel', '4 portas', '69.000', 'Automático', 'Branco', '2021-08-29 06:14:28', '2021-08-29 06:14:28'),
(34, 1, 'Jeep Renegade Trailhawk 2.0 4x4 TB Diesel Aut', '5eed06f94ae54fbf1c1f0fd6104b19be', 'R$ 115.790', 'https://resized-images.autoconf.com.br/827x0/filters:format(jpg)/veiculos/fotos/2de35f30-716e-4b10-a89c-7d2e2d4ed6c9.jpg', 'https://www.questmultimarcas.com.br/carros/jeep/renegade-trailhawk-2-0-4x4-tb-diesel-aut/2016/87233', '2016', 'Diesel', '4 portas', '76.565', 'Automático', 'Branco', '2021-08-29 06:14:28', '2021-08-29 06:14:28'),
(35, 1, 'Jeep Renegade Sport 1.8 4x2 Flex 16V Mec.', '7d45cf260947fe7129e2572b1ed01781', 'R$ 73.490', 'https://resized-images.autoconf.com.br/827x0/filters:format(jpg)/veiculos/fotos/b1c1a786-37df-42ea-9088-e944a73dfc92.jpg', 'https://www.questmultimarcas.com.br/carros/jeep/renegade-sport-1-8-4x2-flex-16v-mec/2017/88724', '2017', 'Flex', '4 portas', '59.000', 'Manual', 'Preto', '2021-08-29 06:14:28', '2021-08-29 06:14:28'),
(36, 1, 'Jeep COMPASS LONGITUDE 2.0 4x2 Flex 16V Aut.', '36ee8fea77304f962fe64368a2fe1526', 'R$ 144.790', 'https://resized-images.autoconf.com.br/827x0/filters:format(jpg)/veiculos/fotos/13e8316b-4e2e-489e-8520-726ecd41510e.jpg', 'https://www.questmultimarcas.com.br/carros/jeep/compass-longitude-2-0-4x2-flex-16v-aut/2018/88714', '2018', 'Diesel', '4 portas', '73.000', 'Automático', 'Branco', '2021-08-29 06:14:28', '2021-08-29 06:14:28'),
(37, 1, 'Jeep Renegade Limited 1.8 4x2 Flex 16V Aut.', '724998061babcf4acb1ed70a4139ff48', 'R$ 99.790', 'https://resized-images.autoconf.com.br/827x0/filters:format(jpg)/veiculos/fotos/03160cd6-f4ec-420c-9efc-08f209816983.jpg', 'https://www.questmultimarcas.com.br/carros/jeep/renegade-limited-1-8-4x2-flex-16v-aut/2019/88437', '2019', 'Flex', '4 portas', '59.000', 'Automático', 'Branco', '2021-08-29 06:14:28', '2021-08-29 06:14:28');

-- --------------------------------------------------------

--
-- Estrutura para tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(7, '2021_08_28_211343_create_cars_table', 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrador', 'admin@admin.com', NULL, '$2y$10$Rn3ZA6bRM2mXJtb0z5akeOaDFkL.KrRKlOzjHOw/5DeQv8i.U7PPi', 'KIQG7iX2OK15oAZWD2pT5qfObwmuUFKvExd4vZwOlsEMKlSlyNxFwRRzGEai', '2021-08-29 02:48:08', '2021-08-29 02:48:08');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Índices de tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Índices de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `cars`
--
ALTER TABLE `cars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
