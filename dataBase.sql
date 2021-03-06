USE [master]
GO
/****** Object:  Database [EMPRESA]    Script Date: 16/01/2020 11:01:39 ******/
CREATE DATABASE [EMPRESA]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EMPRESA', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\EMPRESA.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
 FILEGROUP [PRODUTOS] 
( NAME = N'PRODUTOS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\PRODUTOS.ndf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
 FILEGROUP [VENDAS] 
( NAME = N'VENDAS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\VENDAS.ndf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'EMPRESA_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\EMPRESA_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [EMPRESA] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EMPRESA].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EMPRESA] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EMPRESA] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EMPRESA] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EMPRESA] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EMPRESA] SET ARITHABORT OFF 
GO
ALTER DATABASE [EMPRESA] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EMPRESA] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EMPRESA] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EMPRESA] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EMPRESA] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EMPRESA] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EMPRESA] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EMPRESA] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EMPRESA] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EMPRESA] SET  DISABLE_BROKER 
GO
ALTER DATABASE [EMPRESA] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EMPRESA] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EMPRESA] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EMPRESA] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EMPRESA] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EMPRESA] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EMPRESA] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EMPRESA] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [EMPRESA] SET  MULTI_USER 
GO
ALTER DATABASE [EMPRESA] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EMPRESA] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EMPRESA] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EMPRESA] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [EMPRESA] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [EMPRESA] SET QUERY_STORE = OFF
GO
USE [EMPRESA]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 16/01/2020 11:01:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 16/01/2020 11:01:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 16/01/2020 11:01:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 16/01/2020 11:01:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 16/01/2020 11:01:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_produtos]    Script Date: 16/01/2020 11:01:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_produtos](
	[idProduto] [int] IDENTITY(1,1) NOT NULL,
	[preco] [numeric](9, 2) NULL,
	[nome] [varchar](50) NULL,
	[quantidadeEstoque] [int] NULL,
 CONSTRAINT [PK_Produtos] PRIMARY KEY CLUSTERED 
(
	[idProduto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_vendas]    Script Date: 16/01/2020 11:01:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_vendas](
	[cliente] [varchar](50) NOT NULL,
	[data] [date] NULL,
	[idProduto] [int] NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_tb_vendas] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [VENDAS]
) ON [VENDAS]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 16/01/2020 11:01:39 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 16/01/2020 11:01:39 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 16/01/2020 11:01:39 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleId]    Script Date: 16/01/2020 11:01:39 ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 16/01/2020 11:01:39 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 16/01/2020 11:01:39 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[tb_vendas]  WITH CHECK ADD  CONSTRAINT [FK_tb_vendas_tb_produtos] FOREIGN KEY([idProduto])
REFERENCES [dbo].[tb_produtos] ([idProduto])
GO
ALTER TABLE [dbo].[tb_vendas] CHECK CONSTRAINT [FK_tb_vendas_tb_produtos]
GO
/****** Object:  StoredProcedure [dbo].[EstoqueInicial]    Script Date: 16/01/2020 11:01:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[EstoqueInicial]
	@data_inicial  DATE
AS
BEGIN
	SELECT nome, quantidadeEstoque
	FROM tb_produtos
	JOIN tb_vendas ON tb_produtos.idProduto = tb_vendas.idProduto
	WHERE data = @data_inicial 

END
GO
/****** Object:  StoredProcedure [dbo].[MaisVendidos]    Script Date: 16/01/2020 11:01:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[MaisVendidos]	
	@data_inicial date,
	@data_final date,
	@ordenar bit
AS
BEGIN
	IF(@ordenar = 1)
	BEGIN
	SELECT nome, data, preco
	FROM tb_produtos
	JOIN tb_vendas ON tb_produtos.idProduto = tb_vendas.idProduto
	WHERE data BETWEEN  @data_final AND @data_final
	ORDER BY nome, data, preco
	END
	ELSE
	SELECT nome, data
	FROM tb_produtos
	JOIN tb_vendas ON tb_produtos.idProduto = tb_vendas.idProduto
	WHERE data BETWEEN  @data_final AND @data_final
	ORDER BY nome, data
	begin
		RAISERROR('Ação não implementada', 14, 1);
	end
	
		
	
END
GO
/****** Object:  StoredProcedure [dbo].[RankingCliente]    Script Date: 16/01/2020 11:01:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[RankingCliente]
	
AS
BEGIN

	SELECT cliente, nome, preco, COUNT(nome)AS 'Qtde Compras', SUM(preco)AS 'Valor Total'
	FROM tb_produtos
	JOIN tb_vendas ON tb_produtos.idProduto = tb_vendas.idProduto
	GROUP BY cliente, nome, preco

END
GO
/****** Object:  StoredProcedure [dbo].[RankingVendas]    Script Date: 16/01/2020 11:01:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[RankingVendas]
	@data_inicial date = null, 
	@data_final date = null,
	@ordenar  int 

AS
BEGIN
	
	
	IF(@ordenar  = 1)
	BEGIN
	SELECT nome, COUNT(nome) AS Qtde_Vendas,  SUM(preco) AS 'Valor Total Vendas'
	FROM tb_produtos
	inner JOIN tb_vendas ON tb_produtos.idProduto = tb_vendas.idProduto
	WHERE   data BETWEEN @data_inicial AND @data_final
	GROUP BY nome, preco 
	ORDER BY Qtde_Vendas DESC 
	END
	ELSE IF(@ordenar = 0)
	BEGIN
	SELECT nome, COUNT(nome) AS Qtde_Vendas,  SUM(preco) AS 'Valor Total Vendas'
	FROM tb_produtos
	inner JOIN tb_vendas ON tb_produtos.idProduto = tb_vendas.idProduto
	WHERE   data BETWEEN @data_inicial AND @data_final
	GROUP BY nome
	END
	else
	begin
		RAISERROR('Insira os dados corretos', 14, 1);
	end
	
END 
GO
/****** Object:  StoredProcedure [dbo].[VendasMes]    Script Date: 16/01/2020 11:01:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[VendasMes]
	@ordenar int,
	@nome_produto varchar,
	@data_venda date
	
AS
BEGIN
	set language brazilian;
	IF(@ordenar = 0)
	BEGIN
	SELECT (DATENAME(MONTH, data)) AS 'Mes', COUNT(nome) AS 'Qtde Vendas', SUM(preco) AS 'Valor Total Vendas' 
	FROM tb_produtos
	JOIN tb_vendas ON tb_produtos.idProduto = tb_vendas.idProduto
	GROUP BY  DATENAME(MONTH, data)

	END
	ELSE IF(@ordenar= 1)
	BEGIN
		SELECT (DATENAME(MONTH, data)) AS 'Mes',SUM(ISNULL(preco, 0)) AS 'Valor Total Vendas'
		FROM tb_produtos 
		RIGHT  JOIN tb_vendas ON tb_produtos.idProduto = tb_vendas.idProduto and data = @data_venda
		GROUP BY  DATENAME(MONTH, data)
	END
	
END
GO
USE [master]
GO
ALTER DATABASE [EMPRESA] SET  READ_WRITE 
GO
