USE [master]
GO
/****** Object:  Database [BazaSlika]    Script Date: 5/21/2021 16:46:58 ******/
CREATE DATABASE [BazaSlika]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BazaSlika', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\BazaSlika.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BazaSlika_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\BazaSlika_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BazaSlika] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BazaSlika].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BazaSlika] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BazaSlika] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BazaSlika] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BazaSlika] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BazaSlika] SET ARITHABORT OFF 
GO
ALTER DATABASE [BazaSlika] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [BazaSlika] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BazaSlika] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BazaSlika] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BazaSlika] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BazaSlika] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BazaSlika] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BazaSlika] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BazaSlika] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BazaSlika] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BazaSlika] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BazaSlika] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BazaSlika] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BazaSlika] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BazaSlika] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BazaSlika] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BazaSlika] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BazaSlika] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BazaSlika] SET  MULTI_USER 
GO
ALTER DATABASE [BazaSlika] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BazaSlika] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BazaSlika] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BazaSlika] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BazaSlika] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BazaSlika] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [BazaSlika] SET QUERY_STORE = OFF
GO
USE [BazaSlika]
GO
/****** Object:  Table [dbo].[Fotografija]    Script Date: 5/21/2021 16:46:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fotografija](
	[FotografijaId] [int] IDENTITY(1,1) NOT NULL,
	[Naziv] [nvarchar](100) NOT NULL,
	[BinarniPodaci] [varbinary](max) NOT NULL,
	[Datum] [date] NOT NULL,
	[Opis] [nvarchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[FotografijaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Fotografija] ON 

INSERT [dbo].[Fotografija] ([FotografijaId], [Naziv], [BinarniPodaci], [Datum], [Opis]) VALUES (1, N'1.jpg', 0xFFD8FFE000104A46494600010101006000600000FFDB0043000302020302020303030304030304050805050404050A070706080C0A0C0C0B0A0B0B0D0E12100D0E110E0B0B1016101113141515150C0F171816141812141514FFDB00430103040405040509050509140D0B0D1414141414141414141414141414141414141414141414141414141414141414141414141414141414141414141414141414FFC00011080070009603012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F28D3EC36AAE0575B1F86B50B123CFB1B8889856E06E8987EED8E03F4E84E39F7AF4EFD98FE0EA7C41D6B50D52EA58CD8686A970F6920C99D8EFDABD7EEFCB93F4C77AF7C87C371DF78CAD2698298F508E6D32E56451874914941F83A2FE75E4D5AB1A4D29753EB255DC64E11E87CB1AA783B57F0BB40352B096D56641245230051D480410DD3A1E9D696DA3E4715F4D78CFC650F84218BC3DACE9AB7760615894DC2EE0F1A80A08CF718C5788F88BC3D696B78F71A4334DA7B9DC8A4E5E3CFF0009F5FAD651C55294DD352D5174AABA8B55B9910A6EC0357634150C0B83CD5D857E6E95D96371F045ED56D2225BA52C299F6AB71A05A12B8889213BAA68E323BD3D066A5DBE82AEE047E5FCC322A458AA455F6A5C1A35B81185E7DA9DB056B7877C3F75E25D56DEC2CA3F32799B03D17B927D80E6B5F5CF86FAB68BAA5ED9F90D3ADAC4676980DAA500C9619FE54C875229F2B6722D1FA546D1807D6AC98FD0FD68689A3556642037DD2475C7A500E48A135BEEC9ACABCB4DD938ADE65273E955A688106B504CE2350B15320E28ADCBCB4FDE74CD1417747BB784F4CD07F67D8A39B4BB6924B9BA090DE493CA59997AEDC7DD1D7D3D6BD5EDF48D0BC51A7C17DA74D18333021580628DC10410463071CD78CFC5BB396EA6BD876B0DCFE7C1EE3A8FD08AF3CF02FC48D43C23AB41653F9D1C65BEEB29FC4D7C3FD6EA2C64E96215E0ED6F2386543DA5153A6FDEEA7D0DF10BE16DC6AD633A6B52D8EAB132B794E8AF14887D41CB60E7B8C7D2BC25FC1F1F866D9EDE3B1F308EB334FE639F6C9FF0AF7A7F18DC78A2C7C9B7DDB42966964042AAE3A938AF1CD7A6B817D2210586F2370ADB130A706A704FF5230F29C972C9E870BAA69F1C646D5549F609367B7A1AAB0F418FE55BFE27D256D96DF506F958C8227207DE0DD09FC6B1615F6AF5B2FAB2A9071A9D0F41344F175C9E0D5C8D7CCE3A12700D410C65B1C739C0AF6AF819F0D74BF1149757FA84B6FA95AAC1B45A8CE63761D5C103A0CE31C679AF5ED639EA5654EED9E67AD786752F0CDD2DBEA764F67230DCBBB0438F504120FE754F69C66BD467B3B4FF00845753D20CBE7B69F7EC6077E5BCB6E00CFB1563F8D79ACD035BC8CAC08C1C027BFD2B968D7856BA81A539732B3DC895452E391471EB57B436B65D66C4DE8CD979E9E78C754CF3FA5756C68F4573E84FD9F7C12348F0F4DAEDD43FE957DF2C45872910EFF89E7F2A77C51D46CAD6C5E5B97F2DC031A328E496E00AF5685ADA3D35161D8B085C2AA74C76AE3354D074DBEF3EF2E97ED02DC6F589D72B91C838AF3B11CED7B9B9E0467CF51CE68F29F037C3FF000EFD8EDEEFC4B3480AE7643B8A9719246401C0C1AE73E2A788342D6A65B4D1D161B7D358C3132F475E3201EF8FF1ACE7BAD4BC5DF109EC6FE67B7D3CC98DAA386507BB7BF3C57D19A7F87BC3B67A243651D95BCB0AAE02BC60E2BCEC0E3A78A6ECAD18BB6BBBFF008076D68BC3CA326F99BFC0F9156072ACC158A8EF8A81943293D457D697DE0BF0EEA36BE52E976B11FE129101FA74AF9FBE2569BA7681AABE9AF6C2DEF57E64688615D4F438AF77EB0BA9A53AFCEEDCA79DDC43B9B8E28A9A419A2BAF7D4E9D7B1F567C4DD3FC390882D2E2748B5154DB1C21B2E463D07358BE0D3E1DD3A19668227D4AFA21830C30167F503918FCEBC9BE267C22B8F1E6B4DE20D6BC47346D2CE2782DAD5FCB584AF20027A900020FAD544FF8482DF44BFD24789A4816ED32F736D1247348B92397033C8F4E4F35F9C54CE9C2AC9CA9DB7B6DF2EA11CB632A714A777D4E9FE2B7C49D725D075C934A974CB6FB15B3CC6D964F38A6012A25653C723B57CF5F0DFF00687B3F125BAAF89C47A1EA4065C316F264F42AC7A7D0D686A171FD95A55FE9C9AD39B0B9802DCC7B63F3245E38CE33CE7919E726BCD17404D4AE1A1B3B7699D8E10FDD19ED5F372CF5D59AE44DB7F99F41472EA34E938D5FBCF49F147C6E96E6FADEDF408E2BCB7B79D2592E2E230C93019F97691D338F9BDB8AFA8FC0F1F87BC6DE17D3B5AB6B0B7115D441993CB5CC6FFC4A7E878AA3F08FF632F09787F4D8AE7C4AEFAFEA8EB9963495A1B5889FE155520B631D589CF5C0AF6FD3FE1E787FC3FA5C5A7E95A4C3A7DA467E58EDD71F893D4D7E8594D3C6D1E6AB8A6B965F657467C86635B0D57961874EEBA9CC781FC33A45BEAF249158DB8758880DE58C8C903D3D335AF36A5A5785EDDECA3B6102460AC51C7823A75FA74F7ABB7969A769304A61D9137F1ED3BBA7AFFF005CD79F5FC9657927CA6524B70C719C7F935E8E2ABBBFBA79F429B97C5A9D669B6FE1CF15783499EDA086DAF1889A48D4211293C1DC070DEF54F56F07DCDBE82349B08AC2FEC150A2C72011B807D78209F73826B9ABEF13699E178AD6CE40AFA25CE2CEE636CE0E4FDEF6393FE4D71DF14FC43E2BF817742E6C25FF008497C2AC43F9321CDD5B2E7904FF00181DBA1C7A9AF1EA63A314DDAFCBA36B747A14F0D394D2BEFB5FA995AF78675BF0989679B40F2539C4F1AACDB47B952DB47BF15CEE8371697B7845EDAA4C8E71D029CF6AF75F857F17B47F8A1610DD5B48CA1972C920391EC735A3E30F849A678899AEACE24B1BECEEF3E15C06E7F880EB5A53F69563EDB0D52E8B94FD93F675A36672BA0FC549ACA1B7B1BCB76748C796B2230240E9C8F4F7F6AC0F1B7ED0369A0DCAD9430BDD4B2B6C7B78D72CC09C1E2B92F145D4DE1BD61EC7524582EE1C0207461EA0D7237DAA58CD7E6E9235F31720C80F22BE2AB6718F846541BF7AFD7A23D9860B0D392A8968D1ED9E1FFECFBAB959A002547F9831E1B1EE3D6BD4BC3F0C3320091A9E3D2BE40B5F1E359DC37D9AE4C337665239FA822B664F8B1E2D6D3DECED35CFECF122ED135BC4A24E9D98838AF5B0BC418654FF007B1D57638AB65D524FDD91EF7F113E2268BE17D463B38EE836AE1772C16EBB885F57C741F5FAD7CFBE3AF889A578EBC61677AD35BC71B42B0AB2CA06FC6EC9073EA6BCA6F7C20447753DCEA57534B74C5A595EE1D9A527A9639E73EF5C3B68F6DA6EA1122CC102AEEE30083D3FA5722E2493AD1BD3B2BEDE476D3CA63ECDF2CFDEB1F458D2B4D9092A5C8FF78515E516FE347B5DD131C32E3233D38CFF005A2BF528622338A92EA7C754956849C5C9E87BF6A9F0E75EBD58ED27D723962DBE72BF9243C8C140DBD7A004FE55CC49F0F0B2DBC17FABDCCFF6C8D9E268C041E629E633827B06FC47BD7A2DCF8C1239A076DC05BCECC467F809C81F967F4AE235CD5E486CE608499ACEF96EA13D703E6DC3F303F3AFC63114B009DECDBF5F4FD0FB9A75312D59BD0E2AD7C33A4C0FA6C93592CAB3192D2633B17293800AB0CF40703FEFAA93C21F0FF5AF1ECDFD9BA2592DCDC69AFBE4691D6358D0923258FBFD4F149E24B8685B5FB6846559A3BE85B27E520F51F837E95A9F082D7C49AF78EC5B7877536D2EE2E504F71700FCA23182723073D4E063AD6587745D785351FBB7EDF9AB9A5575634E5352FBCFAAFE1CE81E22F05E8AB0EBBACC5AA4EA0246B6EB8D8A07019DBEFE3A03B41E3BD5ED5F57BC9B204AC43745C9C0AEA2C747961D2E28AEAE3EDB708A03CDB02173EA40E2B0F50D3649242B1C4DED5FA7CB9A9535082691F151FDE4DCA5A9C75F25C5E05499D9C0E9926A8B696CB8741823F5AEBE6D28C313C972C90AA0CEE90E315C56AFE38B6B05962B26DCDC933C98F97FDDF6AF2EA41FC551D91DF0D7486AC8BC431E9DFD946DF538927593E6FB2B0E08CFF17BE7B572DAD78893585B886E984A9202A548E31585AB6AD77AA4D24D12CD74B927CC504A1FC6B91BED52E1DCA2A324A4E304E2B8A55212F720B4FCCEC841C7DE6F517E1CDBBF82FC49710DAB18ED0CE59554F6273DABEBCF0CF8A219B4E45249661F8D7CA3E1DD0E54BA17136E25ABD7743F1025BC61436E38EA2BD1CBE93C3C5A5B338B1953DB493383FDB4AEADEC6C744D414AA5CCD3B5B6E5E1882370FEBF9D7C9775A94D035E98B5290470F243F249E78FE55EA7FB6D78D2E25FF846FECF2836B68D29B8527912B28F2C91DF0A8FF4DD5F2945E340D63279926E9AE2642C33D81E6BE5B36C2C7118C95451EC7D5E57071C246C7ACC16DAA3EA526DD46291A28D656CE428049EF8EBC1AEB6CAD753D423B5B67BA8CF9E85E33BCF3801BF0EB5E316BE388FC8D7A6120CBAA43173CF3C7F535D9E9BF10228F54B46593F7767A7331C1EA481FD00AF25E5F45BBCD33B6A4AAF43D2D747B8B84804DA9C51DB316502305DB72E7231C71EFCF4ACCD49B44F0DC6F75E5B5C4AA9BBCD99B2579C0C01DB39EB5C8DAFC44486C74F04F98F15ACF2BF3D243C28FCF3F9D723AF6AD3EAC92248F93B121603A7CA304FEA6BBF0987C342A415285E4CF3EA7B6E494E6F4452BAF1B3DC5EDC5C3BF32B97F4C64D15CFDC693F3705BFEF9FFEBD15FA25A4B447CB38A93BB47DF9E220F0CD34780D1B8283DF1CAFE9B87E02B9C9A479A468D082B75685D467A94E4FFE827F3AF54F11782FFB62D4CF652F95763055641F2E54E41FCFF9D79DFF00C2BDF11D9DD583B5A24E96D7F2122294736CE003D7B839E3D2BE1B1DC3F88A75FDD8DE27BB87CCA854A69CA5667257120BB9AC9B2035CD8C96D93D0B28651FFA08AF55FD94F4E4B58575C746DEF2BD93C8B2642ED51C32F6C6E2723AE7DABCC3FE154F8DE7B6D2E14B586192CEFDE712492AE0C2594807DF83F9D7B47ECF7E06D67C13A3EBDA66A9756D3C3717AD7F6D1C59668830DAEBB8819FBA98C7A9ADB03946228D455651B595FE7A7FC132C5E368CA97B352BDCFA62D252700B02A7A303906B0BC67E3BD2FC1F62D3DD4885F1FEAC903F33DAB334FBFB986DC5B798CAB8C2953D33D303F0AE0FC51E0FB5D72FCDC4999E3190DE63124B01C638AF6F199ACE9D2FF006787BEFBEC8F130F838CEA7EF25EEAEC791FC42F8F5A8788AEDA2D36D9A48BE60AC32231EFEA7EB5E572EA9AFEA5AB5B5D5DC924D6F1CA0BC2BF2C6C3FCFAE6BDCBC49E0FD3EDE397C9B78C2C84C614FCC0654F4C7707BFBD55D3FC236F636DE4346C5DB04AC99014900F39F7FAD7E658A9E638AADFBEA9F25B1F6947EAD429FEEE3FE67A678F3C71E06F86FA1C16177BC9F281736D0193CB5207248E9F4EBED5E49A95B59F886C7FB7342BC5BFD399B2B227553FDD61D5587753823D2A878A7435D424823B80D30501446C4955009F5E9C638AC0B3D0A5D067692C266B12C7CB6F2DF0C7D032F71DF9E2BE97FB72A4AAF23A5EE2EDB9E4C7034E306D4DF379EC7A1F87EEA2BAB3218ED651FC5C5727AF78EAC74DB874B4B95BA915B0638583723AF23B566EA1E18BCF145C5E35ADFDC5DC1697221BCB2571137960E19D4743C83C75E9D79C556D3F44D156EE2B60D772C05ADD64C6C4986480597F8587AA91D2BDAFAF62310AD4E1CB1EEDEBF248E55429526DC9DDF63C97E3B5E8FF8567E24BFD5E4767641D1F077B3A88C7AE036DE3D14D7C53FDBCDF68500F4391CD7D29FB66EB97F7BA2E89E1EB1F98339BBB9E7048505631EE325FF00EF915F1F4FF6CB398B4D03C5B4607CBC57AD87C2C5D3577767AB87C4FB38B4F43BDB4D69FECCE4BF0CDD01EB5BD67AE1DCFBA43C208CF3EDFCABCA60D5D95A151EB922B5AD75ACB1EE5E5FD2B2AB81D0F423888C9EACF63B3D64332877F906D5273F89AEC7C27B352B1697396690FF003E7F9D794785742D57C56DB6D236440C773B8C0F4E3F0AFA4FC0DE091A5D9431361994658E3B9EB5CD83C0F256E73CECC3170F67ECE2CAD67E13FB4465DD793E9457AAE9FA2A2C23000FC28AFAE8D3D0F8FF006ACFAA2C6E0B2B29E80F153B7AE2B3AC661E611ED5A2BE99E0D7A8E2787197443B01BB55ED226169A84527F0E70C3D41FF00EBE2A946B83D6AC47F795BB839159CD5E2D3358EFA1D647DF1D7951F5159FAC4114966CE57071BB2BC77CB01EF8AC893C411A5C5CA6FC3A468FB7FDB04038FA82BF956ADC5E47337920E55D372E0FF009EC7F4AF88AF2A751CA0D6AB43E8A9C67149AD8C7D56DA0135B27FAB89DD8230E996198D8FAF3C7E55C8EA1B6D75DB5B04C2437D1089B70C0F30E4023D3E603F3ADCD464FB6787EEE25397B56C06E876E4ED3F5E48FC2B8FF1D5D7F6868BA56A88764E412CCBC6181C123F1535F3F8874541D48ADACFE5B347A349CEF6F9197A8CD1C7E3B8348B999D20BE8A25324670C92050038E0FF18CFE26B02CE6B4B7F1B6BFA45C44B7691C1198CCBCB07545E41E3B3107D7BE6AE7C4D92483C69A25F955579A08AE32BFED12D8FD6B26E1157E30DF4A4F1343BD87D62FFEB0AE38F242B3496D35F735B1D1ACA176FECFE2735E17F104B6F71ADEA2CC41679672BEBB98B1FD4D664778CB0A17397C798C7D4F41FAE7F3AA16EC60F0ECF9E1E79238C9CF519C9FE554B58BE6B5B39DD4F0B10C37D16AA8D671828BE9AFDECDA54D4A7A1E27F14A61AEF8B2E9DFE61105897DB03247E6C7F3AE12E341865CE63C8AECF565375AA5DCB9CEE958E7D793540D9B48D80B9AFA8A52765E8734ECAE71FF00F089D849F7AD226CF72A335B3A0F826D63910C7691273D945763A5F851E765678FE9C5779A2F83F6AAFEEC8FC2BBE9C273386A5750D2E51F0AE87F670AAA8A0679C0C57A6697A718D80DB51693E1F10E3E4C575D6562028C2D7AF428F2A3CAAB59C9E8416F0F971E08A2B48D8B3751457758E5E63D7EDAE30720E2B5A0B96DD83CE2B8DD3EF8CD85072735D4453855C8E95DD63CB8EE6B4736E356E36C63A562C73670D9AB91DDA9C562F73A518DE2CB83A7EA56B3A615663B0E7D48007F4FCAA6D37C442596CD893BCA85EBC7071FD6A87C42864BCF0EBC96EBBA6B675971D495079FF3ED5C35AEBE8B19B8560045303F29E30E0106BF2FCE28D4C3E2E538ED2B33ED70328D6C32BEEB43D0EDEFF06ED1B90D12B11DB7038FFD98D735AF4825F02A46ABF343752AEE1FDD18207E6C69D6BAB797A95DC279223738EFEB59F25F093C217AA7865B97C83EEA3FC2BC54DB8B8F94BF33A6492774657C46984CDE129FF8BECD1AFB9E1462B02F26793E266A063F9CB5A953CF3FEAEB4BE215F469A3787658F398E38FF99AC6FB4243F11A07DC0ACB6EC491DF209ADDD3FDF5D3DDC7F2222ED1F933869372E9508278373C0FA21AE67C71A918F4ABB8A23FBC73222AAFAE30055CF11F88A1D2F4DBEF9C7FA25D29C9EDC91FCABCFF00509EEBC47AB182D4F9864B832A88C92554F393C63BD187A32A92504756915ED25B19F63A7CB74FB4217763D473FAD769A07805A465692339CE79AEEBC0FF000D3ECF0A79CA646206411C74AF4DD3FC26B0850230074E95F7B86C0BD1C8F97C4E314AF63CE749F05C70ECDC9FA575563E1DDA00D98FC2BBCB5F0E4614636AB0AB834611FA0AF721414743C8956BA38E87420A01C7357E1D3C44B8C5746F66B10E71546E995071D6BA953B6C7373991247B7145437978237028A7C83F687FFD9, CAST(N'2021-05-21' AS Date), N'asd')
INSERT [dbo].[Fotografija] ([FotografijaId], [Naziv], [BinarniPodaci], [Datum], [Opis]) VALUES (2, N'2.jpg', 0xFFD8FFE000104A46494600010101006000600000FFDB0043000302020302020303030304030304050805050404050A070706080C0A0C0C0B0A0B0B0D0E12100D0E110E0B0B1016101113141515150C0F171816141812141514FFDB00430103040405040509050509140D0B0D1414141414141414141414141414141414141414141414141414141414141414141414141414141414141414141414141414FFC00011080070009603012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FBB6D6DC6D0315A3145B56A3B68FE5E2AD85C0E95B9CE90C5F4A1B8C53FF000A46E7B505D884AF39A63AE09E6A66ED8A8E4ACDBD42C4246698CA2A4A6374A570E5457738CD529DBAD5B99BDEB36EA4C77A8E6B0D2B6C721E386DD6F6E3FE9A8FE46B3B45936C8A2ADF8DE61F67B6C75329FE559BA4481645C9AE594BDF3A547DD3D4AF250BE178BD7ECF20AF36B89B8CE7DEBBAD52E36F86E1F4FB3927F12BFE35E6D71312B8CE3B55CA64423609A6CF7AE775A93CCBCB619FBBFE35CD78D3E32E81E0EBA6B49E76BBBD56DAD6D6D8665E33F37A76E3AF35CB5A7C72D0B5CD4221224F667381E6018C9DBC9C74E49FC89E2B9A550EB54A6D735B43DA6D265DA07B554F1048B234287A6DFEBFFD6AADA7DEC7756F1CD048B2C52286591482181E84557D62E87DAF05BEE8C609E955ED343370284D080D45279C1B92C3F3A29AA84721F52C6E91AF2CA3EA69C6F231C6F5FCEB21230A7818A97CB15D9ED199F217CDF4633961F80351B6A31E380C7F0AE3FC6DF10FC3DF0F34D92EB5CD461B42209AE22819D5649D635DCE23048DCD8238F715E4E7F6D6F862BAC358FF0068DC3C5F684856EE380B47B1A30E643DC052769001391D31594ABA5A366F0C3CE7F0A3E843A827F71AA1935138388BF126B87F03FC60F097C4584368BAB473C9E5A4AD09E1D0336C50C0F0093DB3DC7A8AECCC4D8E4734467CDB33395374DFBC88DB52727845FC73504B7D3F60B5234073E95134279AABB274E866DF6A92DAC324D2C891C51A97766C05550324927A003BD7CD9F12BF6BFB5D07569F4DD02DD7579612C8F3BC80425B2B828572194A927703D40E2BD4BF692D66E7C37F07F5DBBB2B892D6EF11C51CD0B3A3296751C327238CF5E3D6BF3A74F8739CFDEEB5C15EAB4D4533D3C1E1E1522E723DEE1FDA975ED42E213A9D9DADC420927602A46589E3D485C01EFCD7BA7C31F1E58F8E34F5B9B53E5CC9FEBA06CE63279C64819E31C8AF888C7B0026BD0BE08F88EEB46F1EE9A611BBED532C128030595880467692067078C671D4573C6A34EED9D95B0F070BC558FBEB5EB8DBE1D8B07836CA0FF00DF4B5E35F10B5E97C3DE11D5B51873E7410964EF863C038DAD9E4F718F5F5AF52F135C18741851B973128E3FDFCFF4AF2DF1569F1F88344BED2E4963437513460CBC8527A37E079ADAB54518B6CF330F4F9A4923E2D92E26BC924B89A42F34A773B7A9AAE6431B7DEC0F735EE56BFB31DE476C4BEBF6E5D46488E1DC3F5615CAEA9F02BC416975FBABBD3EEA13F758CBB0F5EE0FF89AF356269BEA7BFC923D17E0AF886EE6F06C96FB8B490CD85627955201F5CD75AD0B4AC5E405DD8E4B3753597F08746834BD0E3D26E5A14BE406496484B3C72393CE0903A0E3E8057A11D121519F381FF809AECA72552378B3C8AB2519B4D1CCC369F2F4A2BA75D3E045C0707F2FF1A2B651EE7239ABEC7D111C1E82B37C61AE5A784FC337FAADEDE43A7DBDBC4CC6E6E2179228881C338419DBEFC7D6B416F0AF5DBF8579D7ED0C358D47E10F8961D166BE4D48DA49E5A69C233248A54828778FBA4139C738E9E95DD392516D18D34E535167E677C54F899AAFC60F165F6A57B27D9AC5E769A1D3A09E46B789C85577457FBA5F6EE3D393D2B8E5B331B051D074A7E8CBF2A2851E99C7BD6FFD863E0B643763DBF1AF0AFCC7D5C6F1D1167C1FE20BDF09EAD677F6370D15D5B4AB344F8042B0390707D2BF4BBF677F8A717C4CF87B6D717575E76AD6A7C9BAF3644324981C48557A03C8CE064A9AFCCBB5F0FEADAA48134BD36E6FCE71BA188B01F53D057D2DFB36E9DE29F8771DE5C6A11A694970A311B84695B9CE33CE01F4F61E9574F110A2FDE66189A0EB42DD4FBA64B88B39CD549AEE2F63F5AE17C25E388FC51A7BC9951710B98E555EE7AE40F4C1AD1B8BF3B4B6700739278E84FF004AF56356328F3C763E6E54651972BDCCDF8B50DB789BC0BADE84F0ACCD7D6AD12A6FDB86EAA49F6600FBE2BF3FA7F82BE38D36F1A26F0F5D4A548F9E1C3A124678391C7D715F64EA1E28D3AF2F099EE8A4B9C70E41FA537EDD686179135170AA71B9A6FE55F335B1B29546D2D0FA9C361952A7CBDCF9017E0EF8E24C13E1F9D07AC9344BFCDEBB3F84BE04D53C2FE36B0BCD66D0DA410132078AE572641F70611B95CF27E98AF72BCD4B4EDA581FB4E7BE19C9FC39AE5F56D62E15596D6D9D148C64A841F91AC96326DEA8DA54534D1E85AAF89D56C5AE2EAF63B7B351B9A599C05033D327BFB0AE6B50D4AE96661F6586F223F77E600E3F1AF3DD5638FC55E199749D45D984737981ADDB0509E7033D715C16A179E2FD1F4F54D3F54B7D6163631450DD1304ABB40E18F20F39EB8E00AEEADCD89A71940F3287261E4E3267D0367AB59AA9FB4E90F0B77223DC3FF1DAA37FAB432E56CAC589ECDE4EC03EA4815E67A278CB5CB1B055D4B40B8BF9FCC589E782F13CAE467781952138232466AC41E38D7E628EBE0894C0F70602D737606CC7F1B0C9F9383F30C838AF33EAB56F6E53D28D6A76F88E99B539ADEFA269EE54CAAE310C0770E7D6BADB4D520BD8CB4132CA158A9DA79C8241E3AF506BCD6EAF3C59AB59B476DA4D8E8D336E4DD7372A429FE0384CEE079C77E39C56EFC33F09DCF85ECEEA1BAD624D72FAE24333CA536A2E79E064E33D7F1AF570B4EAD34D4D591E662A54E4FDD77676EAE4F5A2A48ED64C708DF9515DF7679CEC7D0DE67E75CDF8FACEFB50D0A7B4B770B1DCC4D1386190C08C60FB5746D07CA7736D18FBDE95CCEA5A6EA56DBBECD7AF1A373B70181F7C1CD7263ABCA09422EC7660E8C6A4B98F813C69FB31F8D21F105D4DA5E9113412484AF93224683A738C00BCEE3815EC9F0BFF00679F09687A6C33789E3B9D5358DA19C5C46DF6756EBB5540391EEDD7DABDDAEAEB5CB45FDEFD9EE13FBD245B4FFE3A4561EABABEA570542D9DAA9FE2397E7F535E2CAB4DADCF792B9CC6AB79A4690BE4D85934508E02C50B2803D00C5705AE6AD7B7B218ECA09829EF37C807F5AEBF58B8D464CA916F137B96AE1F57B775DDF6BD4BCBF5110007E6C6B99C99AF4347C1BE287F07DF5B34D73E6C934B89962CE3691823DFD7F0A5F8D1F19351F0F6B7A025B3BC1A5ACAB7172F19E250AE329F4C7E7BBDAB908EC639242D6504864E9F6A9C9C0FA537C51E26B2BA92EB469E31790C36E26937E0A6D539E79F6FD6BD6C255724E9B7B9E5E22924D544B63D1BFE13CD07C40E92E2DEE5241959080720F420D74DA7C7A4ADB09920857F01F9D7C59A82E8D0EB6E747BB974B81616D49D6D2563BC0604C6A33B5548DC3E5E9C1AE9F4BF08F8B35182C9A0F8813C50ABF9D7682350A61209454C0CE401B49271CFB733F51A926DA66CB1508A57D0FA6758F145B06686D943CB8FB88BD3DF1E95C47882E259A376BE963B3857E6601B2F81EE3A570B7DA3F8C34DB54B5B8F14D8E9F68B7AB04B736701F34C1265219003901F7E030E461B83C73856BFB39BEB90093C49E28B9B89D2431DD7913BCAB2B3602156639C0DC320A9079AB865D524F52258DA4B54737E37F8C0B73A94169A0388ACECA5DCD72AD81238C8C0FEF28C9C9FF0ADAF8B5AE5CE93E09F0EEAFA9C69A5EA175756E561F996768D482E5C74E3FA8079AF41F0FF00C3DF03FC3DB08A58ACD2EEEE22D1ADD5C0DDF301E496C7605989C74EB5F34FED29F113FE138F888D6D1CA059697018117208DCDB598FD7EEAFFC02BD28D2FABC6D73CE7523899FBA8D3D3FE285E7D95E18EEE600D9DF45B5491F334A4A1FC87EB5B97FF112F6F61BE8E3BD9144F6B670232B1043160CDF8E19ABC8B499376E38C12EE98F6383FE35D0DAC2CAA198E1570DDF9C2002A6388699D5F558D8F4A6F8AD7725C5D4C924AAB25C493062FC2E10431FF276C7B576FF000BFF0068C4F0CDE5F8D534A92F63BA914C724728DF1283C285239EA7B8E95E090C2FB4450A96E89EB9C01FAE58D775A668226B3B2B0112C972D851F2E7049E493FAFE06BC9CCF319518C546566CFAAE1EC970D8DAB278A83704BD0FB2743F8956DE21D363BEB5B59120932009542B71D7A134579DE8FE24D3BC3BA4DA58C70CF3AC3184DC8A072072704F739A2B6A78F5C8B9E5A9F3B8ACB796BCD50A6F92FA7A1F62DD5C5B2C20CA59236EFC9FA62B06F3E461F66D54C7FDD12107F9D73DF109B56BFF035F2E812AC3A9C2AB2DBB0603251C31C7A92011CFD2BC73C37FB56DA2B7F65F8FF004B3A3DDAA2B47791C442321E85A33CA67B1E47B8AE8C7C2551A9A39302B95389EE3A85A6A334250EA103A76DCC9BBF9D71DABE877FE6337F68617FE9984CFF005AC6B7F8C1F0EEF1DA5B7F1158CD6CC3AA3A6E1F51BAB9CD73E2B7815A391E1F11E9BB17B9B8553FFA1578D284BB1EBC747A926BDA4EE25AE2EE5931EFB47E80570FAB5ED869ADF2224AFF008B1FD79AE6FC5DFB41783F4EDEB6B783569549531D98F3327B7CD9DB5E4BAD7C62F10F896EA1B2D0B4E8EC0DE388A16908677627181D1472475CD3A74673D2C5CA496A7A7788BC68B636724F7D72BA6DA63E6677059BD940EFF99AE53C1BAABEA1A4F8CFC5F736D25A689169F225A79D8CC8A81CBB1E7B90383ED595E07F825A8788AEBFB53C67717491C724C1EDEE8B24B855043A1231B72DDB838AE9FE30DF4775E0CD4BC3DA2A468D3C4D02C6A02A9C8567CE3D830AF668D05875CF3678F5AB7B47C913E4EB5F194ABF3B336E5D365B4E7D73FF00D6AF51D27C799D335B64999049A75AC4BF36093C038F7F98D784F9662BB911F860CCACA7B76C5761A2B2B5AA01CFC807E447F85763A9CBAA153A0AABB33E859BC666E2F2E94CDE6C726ABA5C7F7B38C46243F8673562CFE232E9F77119AE1D964D7AEEEA424E7112AB2A0C7A64AFE55E3D6F1969227DC76B5C097827F849515A223290A82DF3083EF7FBFC1A9FAD3B6868F02A2ECCDFD43C69AB6BA9676865680186289D118FCCF8672D9F5CCC38FF0064575B75F08FC3DAA5D31FEC37BCBE3000B70CDE4C7D4775C027DD8138EF5E652DA6A3AB4861D15DE0B9597CCFB5A0C88486E39FF808FC2BDCFE1FFC4469BC1BA71B8B3597C42F6D248C99221C2CAD02BF1C9DD22AFCA31D49CE057C8E6B5B1729278595DECD5ED6F3F43BAA60DD0A719CA368CB67DEC66DA7ECCDA5CCA920BDB9D3FCC755FF005AA537B7014123939E00150AFC35F0FDBABD8585EDC6A779BA48925665704A361F6C69F313F24B8DC4731F4208AF55D0ECFC431DF43ACF89AEECECD1011159DAA9661CCA00C105578646DC3E62570782419ECD537489A6C0B69E71265B80A04D2924925881FA7E58AE2C152C654A9EF4DCFF00F494FD7A9C53ADCB1DEC795691E03FB66A9F66B4B658CDBA886694FCC3CD19321CE4F218EDE0FF0007BD7ABF87FE19C1A3959E0915EF4A95324880AE08C10076FAD74FA2F87A1D3EDC18570DDFD5BEB5B56B6FB4600C62BEAD65B4677F6CB99BEA6EB3AC4428AA34A5CB05DBAFA9C06A9E10B85603CC585F3921C7CA7FDD3457AAC3E5BC6165557DBD370068AF367907BDFBBA9643867F5A31499D3A6A931B87784848D54848C0E02819031F8578BFC45D2BC1FF0010A68B51D41842A226B5966870BF2330557271FC0E08C9E0649EE2BCBB59F8A5E27F10472A5CEA46D55814305A7EED71E9C7247D49AF3EBDD62EE1B59145D4A8BB5A3993767746C30D9F5E02B7D53DEBB28E71471125494743DFADC278AC0E1FDBCEA272EA91DBCBF01FC236E754BDD4B5273069B13A5D5BA26C646F9996427D3660600E590F3C62B29FF672D0963D2B4CFEDF88EBFA907BA82E92326192255562AA3AFDD2581AE53FE1606A3797D769791F1AA68FFD9774A5B96B88836D909EEC413FF7F0D50B7F88777E47C33D424399B46792CA525FEF01F2E0FA7C981EF5EAA95091F3D3A18983DCF41B8F877E03F0DAEA1E278A596F74786FFF00B1E6D3997FD5CDE7AC2F26FCE47CA430EF9C9CD69DDDD689E115F177862CACA3B88BC3FA5FF6969F737415E68A67121670D8E0E42E08F4FA578AEA9E2C98F84FC7DA448C1566D692FC15CE41322B1207D42FE54CF127882EF55D73C5375237CD75A5C709C311940A38FD4D6DED2943E14723A35A6ED367A378B3E2C4CBA6DAC9E76E9A4D0A3932A723CC99C27F415E4DE25F125D6ADA94CF1DE3DA490CD24D1F96C777FAC63B463B91C73C609AA7ABCCD26D573B316D6B1EDC6380E4D61693AA6A13F8843699024B221F9AE245F95149391CFAE7B73C0C571D4AAA7177D8EFC2E15A92E48F34BA221D734DBAD72E239B53861D2A194F989737A8B1BC83A16CA01B88C676924E3A0AA56FE1C9BED11C5A35E5C6A51860AF706D3CB8BBE4A92DD88FC41AF51D3FE1F5B867D535AB8FB74C33219EEF855E47217FC73FCEB561BD8EE2616DA359FF006836E6432BFEEE01B54B121BA1C004E3AF15E24F33FB18787379F43ECE191D3A2962332AAA1FDD5BFA1C9E99E11D4DADF125E246CAA541206D53D4F39F635A1A4E950DD4860B3175E20BB8802ECB88EDA2C0C8CBFA75EA474F7AE82DD2396E92DCC63C4F7D188C8585C2D8C2FBF9070707E518CF7DDD322BB0F0FF00C3BBBB8B711EACF1DB59B3B49F60B31B1305D9806F5C6F239C718C83818CE9AAD5749CAEFB222BE330F18F36168A8C7F9A5ABF9239CF0EC7A8BDBCB6CDE48BD9AEBEC96D1DBAE218CE70187A8037313FDD00D7BA69B6BA478461820D1EC636B88625845F4AA0BED000C2F1D0E327A7249EF54B4ED261B18D23B685634000C81C9FA9FCAB6ED749694825735D54F2D8CA5CD53EE5B7CCF97CD33578B5185EEA3B79F9F9107EFB5298493BB4AD8032C7F95745A4E9E2351C54B61A3888025735B30DA8415EF4292A6B962AC8F949CDC9EA4F6EFB319E95AB6FB5A3200C83D73598A31C55BB472A6B68AD4C19731453B6FBD15A907C5CF61A9DEDD4EF6EAC85B73023B280496FA0DA73F4353F89B418C68325C89523BA54CEF8F2CACDDC7D0D74DE18D62CE5F0FD9437379FE910E90F1348540914BCB206E777CC31211EBC7206699E22F0A68963AB7F671D4EEBECEF3003043EE5DA871C0E4B166F9BA0DA73CE71F9853A52A734D1FD5388ABED1CA8D58E9F99F3CC3AD5C470C175B1E356226B77932039425720F4E4707E9525EEA110B5BD4550C8932DDC4470003C91FC857AA43F0DF4DBCD0ED45E6A135D236E486DFCCFDDDBB98A323001FEF3B119E0AA9E01E6B1743F865A7B5BF886D8DCDC2F9D68B04521030C05CC473C91B7EE8EBC7272457BFF005BA507CAD9F10F26AD56126EDA1C2EA9344D77AD17F905CDB4532875393950C1BF11CE7BE69936B16F04D72CD22F993D9468AAA792D8E82BD7758F81FA46B77C24BBD46E2DEF1658B4F026C6CF2A1B64555C293C9D839C918ED5B1A1FC1FD0342B5BA6B5B9B786549444979709F2E4C6CE031E7192A17B7271CE455CB1907FC34E4CF2E595D2A3EF62AAA8AFBDFC8F18B3F0A6B1E289448623A759ED8F74B28C39DA3B0EB5B36B0C7A0B5DD9E97A6B5C5CD9C6259E6BA1B523059406DBFC40EE1F5CE6BD95BC0F159DEBDB9D4E5BF426364996245CA955764201E188902AF5F9A36E39188FC59F0AEC6EF528752B898BB5C66292359372B468E446A7180D8555CE7D471D2B8A3EDB1351AAB1F77B2DBE67A53C4E0F05848CB053E593DDC96BF23CC5AD6D2EAE7134F378A3504384B7B4531DA46C242082C7048C0EDD723D327A9B1F87B7BAC1B73AC3C7696D08DB1D859A98D101EBEE73CE738EBD2BB5D2745B6D2E258ED20588018042E0FF00F5BF0ADBB5B1776048FD2BD7A383D137A1F0D89C7C79DCB59CBBCBFC8CFD1740B3D22158ACAD9204518F94574167A79936F15774FD24B63E5AE8EC74BDB838CD7AF4E8C69AB451F3D5B1552B3E69BBB33EC747E848AE82CF4E58F1C559B7B50B81B6AFC70E31C735D0958E06EFB91476FB578A7792556AEC71955E951CB9DA6990545C6EC1EB4E126D600530E7A91CD42A4B4DD0D0266B99B6814566DC5CED6033456B632BD8FFD9, CAST(N'2021-05-21' AS Date), N'dasd')
SET IDENTITY_INSERT [dbo].[Fotografija] OFF
GO
/****** Object:  StoredProcedure [dbo].[ObrisiFotografiju]    Script Date: 5/21/2021 16:46:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ObrisiFotografiju](
@FotografijaId int
)
AS
DELETE 
FROM Fotografija 
WHERE FotografijaId = @FotografijaId
GO
/****** Object:  StoredProcedure [dbo].[PrikaziFotografije]    Script Date: 5/21/2021 16:46:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PrikaziFotografije]
AS
SELECT *FROM Fotografija;
GO
/****** Object:  StoredProcedure [dbo].[PromeniFotografiju1]    Script Date: 5/21/2021 16:46:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PromeniFotografiju1]
(
	@FotografijaId int,
	@Naziv nvarchar(100),	
	@Datum date,
	@Opis nvarchar(200)
)
AS
UPDATE Fotografija
SET Naziv = @Naziv, Datum =@Datum, Opis = @Opis
WHERE FotografijaId = @FotografijaId
GO
/****** Object:  StoredProcedure [dbo].[PromeniFotografiju2]    Script Date: 5/21/2021 16:46:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PromeniFotografiju2]
(
	@FotografijaId int,
	@Naziv nvarchar(100),
	@BinarniPodaci varbinary(max),
	@Datum date,
	@Opis nvarchar(200)
)
AS
UPDATE Fotografija
SET Naziv = @Naziv, BinarniPodaci = @BinarniPodaci,Datum =@Datum, Opis = @Opis
WHERE FotografijaId = @FotografijaId
GO
/****** Object:  StoredProcedure [dbo].[UbaciFotografiju]    Script Date: 5/21/2021 16:46:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[UbaciFotografiju]
(
	@Naziv nvarchar(100),
	@BinarniPodaci varbinary(max),
	@Datum date,
	@Opis nvarchar(200)
)
AS
INSERT INTO Fotografija
VALUES (@Naziv,@BinarniPodaci,@Datum,@Opis)
GO
USE [master]
GO
ALTER DATABASE [BazaSlika] SET  READ_WRITE 
GO
