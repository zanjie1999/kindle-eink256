.class public final enum Lcom/audible/mobile/identity/Marketplace;
.super Ljava/lang/Enum;
.source "Marketplace.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/mobile/identity/Marketplace;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/mobile/identity/Marketplace;

.field public static final enum AMAZON_AU:Lcom/audible/mobile/identity/Marketplace;

.field public static final enum AMAZON_BR:Lcom/audible/mobile/identity/Marketplace;

.field public static final enum AMAZON_CA:Lcom/audible/mobile/identity/Marketplace;

.field public static final enum AMAZON_CN:Lcom/audible/mobile/identity/Marketplace;

.field public static final enum AMAZON_DE:Lcom/audible/mobile/identity/Marketplace;

.field public static final enum AMAZON_ES:Lcom/audible/mobile/identity/Marketplace;

.field public static final enum AMAZON_FR:Lcom/audible/mobile/identity/Marketplace;

.field public static final enum AMAZON_IN:Lcom/audible/mobile/identity/Marketplace;

.field public static final enum AMAZON_IT:Lcom/audible/mobile/identity/Marketplace;

.field public static final enum AMAZON_JP:Lcom/audible/mobile/identity/Marketplace;

.field public static final enum AMAZON_MX:Lcom/audible/mobile/identity/Marketplace;

.field public static final enum AMAZON_RU:Lcom/audible/mobile/identity/Marketplace;

.field public static final enum AMAZON_UK:Lcom/audible/mobile/identity/Marketplace;

.field public static final enum AMAZON_US:Lcom/audible/mobile/identity/Marketplace;

.field public static final enum AUDIBLE_AU:Lcom/audible/mobile/identity/Marketplace;

.field public static final enum AUDIBLE_CA:Lcom/audible/mobile/identity/Marketplace;

.field public static final enum AUDIBLE_DE:Lcom/audible/mobile/identity/Marketplace;

.field public static final enum AUDIBLE_ES:Lcom/audible/mobile/identity/Marketplace;

.field public static final enum AUDIBLE_FR:Lcom/audible/mobile/identity/Marketplace;

.field public static final enum AUDIBLE_IN:Lcom/audible/mobile/identity/Marketplace;

.field public static final enum AUDIBLE_IT:Lcom/audible/mobile/identity/Marketplace;

.field public static final enum AUDIBLE_JP:Lcom/audible/mobile/identity/Marketplace;

.field private static final AUDIBLE_MARKETPLACE_NAME_PREFIX:Ljava/lang/String; = "AUDIBLE_"

.field public static final enum AUDIBLE_UK:Lcom/audible/mobile/identity/Marketplace;

.field public static final enum AUDIBLE_US:Lcom/audible/mobile/identity/Marketplace;


# instance fields
.field private final amazonDomain:Lcom/audible/mobile/identity/AmazonDomain;

.field private final audibleDomain:Lcom/audible/mobile/identity/AudibleDomain;

.field private audibleMarketplace:Lcom/audible/mobile/identity/Marketplace;

.field private final devoObfuscatedMarketplaceId:Ljava/lang/String;

.field private final productionObfuscatedMarketplaceId:Ljava/lang/String;

.field private final siteId:I

.field private final siteTag:Ljava/lang/String;

.field private final topLevelDomain:Lcom/audible/mobile/identity/TopLevelDomain;

.field private final validAccountPools:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/audible/mobile/identity/AccountPool;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 19
    new-instance v9, Lcom/audible/mobile/identity/Marketplace;

    sget-object v6, Lcom/audible/mobile/identity/TopLevelDomain;->COM:Lcom/audible/mobile/identity/TopLevelDomain;

    const/4 v10, 0x2

    new-array v0, v10, [Lcom/audible/mobile/identity/AccountPool;

    sget-object v1, Lcom/audible/mobile/identity/AccountPool;->AMAZON_NA_EU:Lcom/audible/mobile/identity/AccountPool;

    const/4 v11, 0x0

    aput-object v1, v0, v11

    sget-object v1, Lcom/audible/mobile/identity/AccountPool;->AUDIBLE_US:Lcom/audible/mobile/identity/AccountPool;

    const/4 v12, 0x1

    aput-object v1, v0, v12

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const-string v1, "AUDIBLE_US"

    const/4 v2, 0x0

    const-string v3, "AF2M0KC94RCEA"

    const-string v4, "A3G3TQ0ISIOPG8"

    const/4 v5, 0x0

    const-string v7, "US"

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/audible/mobile/identity/Marketplace;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/audible/mobile/identity/TopLevelDomain;Ljava/lang/String;Ljava/util/List;)V

    sput-object v9, Lcom/audible/mobile/identity/Marketplace;->AUDIBLE_US:Lcom/audible/mobile/identity/Marketplace;

    .line 20
    new-instance v0, Lcom/audible/mobile/identity/Marketplace;

    sget-object v19, Lcom/audible/mobile/identity/TopLevelDomain;->CO_UK:Lcom/audible/mobile/identity/TopLevelDomain;

    new-array v1, v10, [Lcom/audible/mobile/identity/AccountPool;

    sget-object v2, Lcom/audible/mobile/identity/AccountPool;->AMAZON_NA_EU:Lcom/audible/mobile/identity/AccountPool;

    aput-object v2, v1, v11

    sget-object v2, Lcom/audible/mobile/identity/AccountPool;->AUDIBLE_UK:Lcom/audible/mobile/identity/AccountPool;

    aput-object v2, v1, v12

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v21

    const-string v14, "AUDIBLE_UK"

    const/4 v15, 0x1

    const-string v16, "A2I9A3Q2GNFNGQ"

    const-string v17, "A3G8SHMNK6Y7PK"

    const/16 v18, 0x69

    const-string v20, "UK"

    move-object v13, v0

    invoke-direct/range {v13 .. v21}, Lcom/audible/mobile/identity/Marketplace;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/audible/mobile/identity/TopLevelDomain;Ljava/lang/String;Ljava/util/List;)V

    sput-object v0, Lcom/audible/mobile/identity/Marketplace;->AUDIBLE_UK:Lcom/audible/mobile/identity/Marketplace;

    .line 21
    new-instance v0, Lcom/audible/mobile/identity/Marketplace;

    sget-object v7, Lcom/audible/mobile/identity/TopLevelDomain;->DE:Lcom/audible/mobile/identity/TopLevelDomain;

    new-array v1, v10, [Lcom/audible/mobile/identity/AccountPool;

    sget-object v2, Lcom/audible/mobile/identity/AccountPool;->AMAZON_NA_EU:Lcom/audible/mobile/identity/AccountPool;

    aput-object v2, v1, v11

    sget-object v2, Lcom/audible/mobile/identity/AccountPool;->AUDIBLE_DE:Lcom/audible/mobile/identity/AccountPool;

    aput-object v2, v1, v12

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const-string v2, "AUDIBLE_DE"

    const/4 v3, 0x2

    const-string v4, "AN7V1F1VY261K"

    const-string v5, "ABMF2NRWK6Q4Q"

    const/16 v6, 0x67

    const-string v8, "DE"

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/audible/mobile/identity/Marketplace;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/audible/mobile/identity/TopLevelDomain;Ljava/lang/String;Ljava/util/List;)V

    sput-object v0, Lcom/audible/mobile/identity/Marketplace;->AUDIBLE_DE:Lcom/audible/mobile/identity/Marketplace;

    .line 22
    new-instance v0, Lcom/audible/mobile/identity/Marketplace;

    sget-object v19, Lcom/audible/mobile/identity/TopLevelDomain;->FR:Lcom/audible/mobile/identity/TopLevelDomain;

    sget-object v1, Lcom/audible/mobile/identity/AccountPool;->AMAZON_NA_EU:Lcom/audible/mobile/identity/AccountPool;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v21

    const-string v14, "AUDIBLE_FR"

    const/4 v15, 0x3

    const-string v16, "A2728XDNODOQ8T"

    const-string v17, "A1PM6UBHJK3SLV"

    const/16 v18, 0x68

    const-string v20, "FR"

    move-object v13, v0

    invoke-direct/range {v13 .. v21}, Lcom/audible/mobile/identity/Marketplace;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/audible/mobile/identity/TopLevelDomain;Ljava/lang/String;Ljava/util/List;)V

    sput-object v0, Lcom/audible/mobile/identity/Marketplace;->AUDIBLE_FR:Lcom/audible/mobile/identity/Marketplace;

    .line 23
    new-instance v0, Lcom/audible/mobile/identity/Marketplace;

    sget-object v7, Lcom/audible/mobile/identity/TopLevelDomain;->COM_AU:Lcom/audible/mobile/identity/TopLevelDomain;

    sget-object v1, Lcom/audible/mobile/identity/AccountPool;->AMAZON_NA_EU:Lcom/audible/mobile/identity/AccountPool;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const-string v2, "AUDIBLE_AU"

    const/4 v3, 0x4

    const-string v4, "AN7EY7DTAW63G"

    const-string v5, "A2AT07N6OMIWFU"

    const/16 v6, 0x6a

    const-string v8, "AU"

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/audible/mobile/identity/Marketplace;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/audible/mobile/identity/TopLevelDomain;Ljava/lang/String;Ljava/util/List;)V

    sput-object v0, Lcom/audible/mobile/identity/Marketplace;->AUDIBLE_AU:Lcom/audible/mobile/identity/Marketplace;

    .line 24
    new-instance v0, Lcom/audible/mobile/identity/Marketplace;

    sget-object v19, Lcom/audible/mobile/identity/TopLevelDomain;->CO_JP:Lcom/audible/mobile/identity/TopLevelDomain;

    sget-object v1, Lcom/audible/mobile/identity/AccountPool;->AMAZON_FE:Lcom/audible/mobile/identity/AccountPool;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v21

    const-string v14, "AUDIBLE_JP"

    const/4 v15, 0x5

    const-string v16, "A1QAP3MOU4173J"

    const-string v17, "A298HDQ29ZA38N"

    const/16 v18, 0x6b

    const-string v20, "JP"

    move-object v13, v0

    invoke-direct/range {v13 .. v21}, Lcom/audible/mobile/identity/Marketplace;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/audible/mobile/identity/TopLevelDomain;Ljava/lang/String;Ljava/util/List;)V

    sput-object v0, Lcom/audible/mobile/identity/Marketplace;->AUDIBLE_JP:Lcom/audible/mobile/identity/Marketplace;

    .line 25
    new-instance v0, Lcom/audible/mobile/identity/Marketplace;

    sget-object v7, Lcom/audible/mobile/identity/TopLevelDomain;->IT:Lcom/audible/mobile/identity/TopLevelDomain;

    sget-object v1, Lcom/audible/mobile/identity/AccountPool;->AMAZON_NA_EU:Lcom/audible/mobile/identity/AccountPool;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const-string v2, "AUDIBLE_IT"

    const/4 v3, 0x6

    const-string v4, "A2N7FU2W2BU2ZC"

    const-string v5, "ARGSKDDBM3ISN"

    const/16 v6, 0x6c

    const-string v8, "IT"

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/audible/mobile/identity/Marketplace;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/audible/mobile/identity/TopLevelDomain;Ljava/lang/String;Ljava/util/List;)V

    sput-object v0, Lcom/audible/mobile/identity/Marketplace;->AUDIBLE_IT:Lcom/audible/mobile/identity/Marketplace;

    .line 26
    new-instance v0, Lcom/audible/mobile/identity/Marketplace;

    sget-object v19, Lcom/audible/mobile/identity/TopLevelDomain;->IN:Lcom/audible/mobile/identity/TopLevelDomain;

    sget-object v1, Lcom/audible/mobile/identity/AccountPool;->AMAZON_NA_EU:Lcom/audible/mobile/identity/AccountPool;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v21

    const-string v14, "AUDIBLE_IN"

    const/4 v15, 0x7

    const-string v16, "AJO3FBRUE6J4S"

    const-string v17, "A2ITDZXD3G7XX6"

    const/16 v18, 0x6d

    const-string v20, "IN"

    move-object v13, v0

    invoke-direct/range {v13 .. v21}, Lcom/audible/mobile/identity/Marketplace;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/audible/mobile/identity/TopLevelDomain;Ljava/lang/String;Ljava/util/List;)V

    sput-object v0, Lcom/audible/mobile/identity/Marketplace;->AUDIBLE_IN:Lcom/audible/mobile/identity/Marketplace;

    .line 27
    new-instance v0, Lcom/audible/mobile/identity/Marketplace;

    sget-object v7, Lcom/audible/mobile/identity/TopLevelDomain;->CA:Lcom/audible/mobile/identity/TopLevelDomain;

    sget-object v1, Lcom/audible/mobile/identity/AccountPool;->AMAZON_NA_EU:Lcom/audible/mobile/identity/AccountPool;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const-string v2, "AUDIBLE_CA"

    const/16 v3, 0x8

    const-string v4, "A2CQZ5RBY40XE"

    const-string v5, "A16QVBR1WHSTVN"

    const/16 v6, 0x6e

    const-string v8, "CA"

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/audible/mobile/identity/Marketplace;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/audible/mobile/identity/TopLevelDomain;Ljava/lang/String;Ljava/util/List;)V

    sput-object v0, Lcom/audible/mobile/identity/Marketplace;->AUDIBLE_CA:Lcom/audible/mobile/identity/Marketplace;

    .line 28
    new-instance v0, Lcom/audible/mobile/identity/Marketplace;

    sget-object v19, Lcom/audible/mobile/identity/TopLevelDomain;->ES:Lcom/audible/mobile/identity/TopLevelDomain;

    sget-object v1, Lcom/audible/mobile/identity/AccountPool;->AMAZON_NA_EU:Lcom/audible/mobile/identity/AccountPool;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v21

    const-string v14, "AUDIBLE_ES"

    const/16 v15, 0x9

    const-string v16, "ALMIKO4SZCSAR"

    const-string v17, "ARV4E8CS3V0UR"

    const/16 v18, 0x72

    const-string v20, "ES"

    move-object v13, v0

    invoke-direct/range {v13 .. v21}, Lcom/audible/mobile/identity/Marketplace;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/audible/mobile/identity/TopLevelDomain;Ljava/lang/String;Ljava/util/List;)V

    sput-object v0, Lcom/audible/mobile/identity/Marketplace;->AUDIBLE_ES:Lcom/audible/mobile/identity/Marketplace;

    .line 29
    new-instance v0, Lcom/audible/mobile/identity/Marketplace;

    sget-object v6, Lcom/audible/mobile/identity/Marketplace;->AUDIBLE_US:Lcom/audible/mobile/identity/Marketplace;

    const-string v2, "AMAZON_US"

    const/16 v3, 0xa

    const-string v4, "ATVPDKIKX0DER"

    const-string v5, "ATVPDKIKX0DER"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/audible/mobile/identity/Marketplace;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/audible/mobile/identity/Marketplace;)V

    sput-object v0, Lcom/audible/mobile/identity/Marketplace;->AMAZON_US:Lcom/audible/mobile/identity/Marketplace;

    .line 30
    new-instance v0, Lcom/audible/mobile/identity/Marketplace;

    sget-object v18, Lcom/audible/mobile/identity/Marketplace;->AUDIBLE_UK:Lcom/audible/mobile/identity/Marketplace;

    const-string v14, "AMAZON_UK"

    const/16 v15, 0xb

    const-string v16, "A1F83G8C2ARO7P"

    const-string v17, "A1F83G8C2ARO7P"

    move-object v13, v0

    invoke-direct/range {v13 .. v18}, Lcom/audible/mobile/identity/Marketplace;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/audible/mobile/identity/Marketplace;)V

    sput-object v0, Lcom/audible/mobile/identity/Marketplace;->AMAZON_UK:Lcom/audible/mobile/identity/Marketplace;

    .line 31
    new-instance v0, Lcom/audible/mobile/identity/Marketplace;

    sget-object v6, Lcom/audible/mobile/identity/Marketplace;->AUDIBLE_DE:Lcom/audible/mobile/identity/Marketplace;

    const-string v2, "AMAZON_DE"

    const/16 v3, 0xc

    const-string v4, "A1PA6795UKMFR9"

    const-string v5, "A1PA6795UKMFR9"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/audible/mobile/identity/Marketplace;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/audible/mobile/identity/Marketplace;)V

    sput-object v0, Lcom/audible/mobile/identity/Marketplace;->AMAZON_DE:Lcom/audible/mobile/identity/Marketplace;

    .line 32
    new-instance v0, Lcom/audible/mobile/identity/Marketplace;

    sget-object v18, Lcom/audible/mobile/identity/Marketplace;->AUDIBLE_FR:Lcom/audible/mobile/identity/Marketplace;

    const-string v14, "AMAZON_FR"

    const/16 v15, 0xd

    const-string v16, "A13V1IB3VIYZZH"

    const-string v17, "A13V1IB3VIYZZH"

    move-object v13, v0

    invoke-direct/range {v13 .. v18}, Lcom/audible/mobile/identity/Marketplace;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/audible/mobile/identity/Marketplace;)V

    sput-object v0, Lcom/audible/mobile/identity/Marketplace;->AMAZON_FR:Lcom/audible/mobile/identity/Marketplace;

    .line 33
    new-instance v0, Lcom/audible/mobile/identity/Marketplace;

    sget-object v6, Lcom/audible/mobile/identity/Marketplace;->AUDIBLE_ES:Lcom/audible/mobile/identity/Marketplace;

    const-string v2, "AMAZON_ES"

    const/16 v3, 0xe

    const-string v4, "A1RKKUPIHCS9HS"

    const-string v5, "AJZF8LZ1EJVJN"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/audible/mobile/identity/Marketplace;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/audible/mobile/identity/Marketplace;)V

    sput-object v0, Lcom/audible/mobile/identity/Marketplace;->AMAZON_ES:Lcom/audible/mobile/identity/Marketplace;

    .line 34
    new-instance v0, Lcom/audible/mobile/identity/Marketplace;

    sget-object v18, Lcom/audible/mobile/identity/Marketplace;->AUDIBLE_IN:Lcom/audible/mobile/identity/Marketplace;

    const-string v14, "AMAZON_IN"

    const/16 v15, 0xf

    const-string v16, "A21TJRUUN4KGV"

    const-string v17, "A2XZLSVIQ0F4JT"

    move-object v13, v0

    invoke-direct/range {v13 .. v18}, Lcom/audible/mobile/identity/Marketplace;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/audible/mobile/identity/Marketplace;)V

    sput-object v0, Lcom/audible/mobile/identity/Marketplace;->AMAZON_IN:Lcom/audible/mobile/identity/Marketplace;

    .line 35
    new-instance v0, Lcom/audible/mobile/identity/Marketplace;

    sget-object v6, Lcom/audible/mobile/identity/Marketplace;->AUDIBLE_IT:Lcom/audible/mobile/identity/Marketplace;

    const-string v2, "AMAZON_IT"

    const/16 v3, 0x10

    const-string v4, "APJ6JRA9NG5V4"

    const-string v5, "A3HOBANJMCMD83"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/audible/mobile/identity/Marketplace;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/audible/mobile/identity/Marketplace;)V

    sput-object v0, Lcom/audible/mobile/identity/Marketplace;->AMAZON_IT:Lcom/audible/mobile/identity/Marketplace;

    .line 36
    new-instance v0, Lcom/audible/mobile/identity/Marketplace;

    sget-object v18, Lcom/audible/mobile/identity/Marketplace;->AUDIBLE_JP:Lcom/audible/mobile/identity/Marketplace;

    const-string v14, "AMAZON_JP"

    const/16 v15, 0x11

    const-string v16, "A1VC38T7YXB528"

    const-string v17, "A1VC38T7YXB528"

    move-object v13, v0

    invoke-direct/range {v13 .. v18}, Lcom/audible/mobile/identity/Marketplace;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/audible/mobile/identity/Marketplace;)V

    sput-object v0, Lcom/audible/mobile/identity/Marketplace;->AMAZON_JP:Lcom/audible/mobile/identity/Marketplace;

    .line 37
    new-instance v0, Lcom/audible/mobile/identity/Marketplace;

    sget-object v6, Lcom/audible/mobile/identity/Marketplace;->AUDIBLE_CA:Lcom/audible/mobile/identity/Marketplace;

    const-string v2, "AMAZON_CA"

    const/16 v3, 0x12

    const-string v4, "A2EUQ1WTGCTBG2"

    const-string v5, "A2EUQ1WTGCTBG2"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/audible/mobile/identity/Marketplace;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/audible/mobile/identity/Marketplace;)V

    sput-object v0, Lcom/audible/mobile/identity/Marketplace;->AMAZON_CA:Lcom/audible/mobile/identity/Marketplace;

    .line 38
    new-instance v0, Lcom/audible/mobile/identity/Marketplace;

    sget-object v18, Lcom/audible/mobile/identity/Marketplace;->AUDIBLE_US:Lcom/audible/mobile/identity/Marketplace;

    const-string v14, "AMAZON_CN"

    const/16 v15, 0x13

    const-string v16, "AAHKV2X7AFYLW"

    const-string v17, "AAHKV2X7AFYLW"

    move-object v13, v0

    invoke-direct/range {v13 .. v18}, Lcom/audible/mobile/identity/Marketplace;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/audible/mobile/identity/Marketplace;)V

    sput-object v0, Lcom/audible/mobile/identity/Marketplace;->AMAZON_CN:Lcom/audible/mobile/identity/Marketplace;

    .line 39
    new-instance v0, Lcom/audible/mobile/identity/Marketplace;

    sget-object v6, Lcom/audible/mobile/identity/Marketplace;->AUDIBLE_US:Lcom/audible/mobile/identity/Marketplace;

    const-string v2, "AMAZON_BR"

    const/16 v3, 0x14

    const-string v4, "A2Q3Y263D00KWC"

    const-string v5, "AZXD3QD5B39HD"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/audible/mobile/identity/Marketplace;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/audible/mobile/identity/Marketplace;)V

    sput-object v0, Lcom/audible/mobile/identity/Marketplace;->AMAZON_BR:Lcom/audible/mobile/identity/Marketplace;

    .line 40
    new-instance v0, Lcom/audible/mobile/identity/Marketplace;

    sget-object v18, Lcom/audible/mobile/identity/Marketplace;->AUDIBLE_US:Lcom/audible/mobile/identity/Marketplace;

    const-string v14, "AMAZON_MX"

    const/16 v15, 0x15

    const-string v16, "A1AM78C64UM0Y8"

    const-string v17, "A3P3J5A7D2ZVXI"

    move-object v13, v0

    invoke-direct/range {v13 .. v18}, Lcom/audible/mobile/identity/Marketplace;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/audible/mobile/identity/Marketplace;)V

    sput-object v0, Lcom/audible/mobile/identity/Marketplace;->AMAZON_MX:Lcom/audible/mobile/identity/Marketplace;

    .line 41
    new-instance v0, Lcom/audible/mobile/identity/Marketplace;

    sget-object v6, Lcom/audible/mobile/identity/Marketplace;->AUDIBLE_AU:Lcom/audible/mobile/identity/Marketplace;

    const-string v2, "AMAZON_AU"

    const/16 v3, 0x16

    const-string v4, "A39IBJ37TRP1C6"

    const-string v5, "A1RNPCQ4K8U27I"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/audible/mobile/identity/Marketplace;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/audible/mobile/identity/Marketplace;)V

    sput-object v0, Lcom/audible/mobile/identity/Marketplace;->AMAZON_AU:Lcom/audible/mobile/identity/Marketplace;

    .line 42
    new-instance v0, Lcom/audible/mobile/identity/Marketplace;

    sget-object v18, Lcom/audible/mobile/identity/Marketplace;->AUDIBLE_US:Lcom/audible/mobile/identity/Marketplace;

    const-string v14, "AMAZON_RU"

    const/16 v15, 0x17

    const-string v16, "AD2EMQ3L3PG8S"

    const-string v17, "A38NPJYVS5YHNH"

    move-object v13, v0

    invoke-direct/range {v13 .. v18}, Lcom/audible/mobile/identity/Marketplace;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/audible/mobile/identity/Marketplace;)V

    sput-object v0, Lcom/audible/mobile/identity/Marketplace;->AMAZON_RU:Lcom/audible/mobile/identity/Marketplace;

    const/16 v1, 0x18

    new-array v1, v1, [Lcom/audible/mobile/identity/Marketplace;

    .line 16
    sget-object v2, Lcom/audible/mobile/identity/Marketplace;->AUDIBLE_US:Lcom/audible/mobile/identity/Marketplace;

    aput-object v2, v1, v11

    sget-object v2, Lcom/audible/mobile/identity/Marketplace;->AUDIBLE_UK:Lcom/audible/mobile/identity/Marketplace;

    aput-object v2, v1, v12

    sget-object v2, Lcom/audible/mobile/identity/Marketplace;->AUDIBLE_DE:Lcom/audible/mobile/identity/Marketplace;

    aput-object v2, v1, v10

    sget-object v2, Lcom/audible/mobile/identity/Marketplace;->AUDIBLE_FR:Lcom/audible/mobile/identity/Marketplace;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/mobile/identity/Marketplace;->AUDIBLE_AU:Lcom/audible/mobile/identity/Marketplace;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/mobile/identity/Marketplace;->AUDIBLE_JP:Lcom/audible/mobile/identity/Marketplace;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/mobile/identity/Marketplace;->AUDIBLE_IT:Lcom/audible/mobile/identity/Marketplace;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/mobile/identity/Marketplace;->AUDIBLE_IN:Lcom/audible/mobile/identity/Marketplace;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/mobile/identity/Marketplace;->AUDIBLE_CA:Lcom/audible/mobile/identity/Marketplace;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/mobile/identity/Marketplace;->AUDIBLE_ES:Lcom/audible/mobile/identity/Marketplace;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/mobile/identity/Marketplace;->AMAZON_US:Lcom/audible/mobile/identity/Marketplace;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/mobile/identity/Marketplace;->AMAZON_UK:Lcom/audible/mobile/identity/Marketplace;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/mobile/identity/Marketplace;->AMAZON_DE:Lcom/audible/mobile/identity/Marketplace;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/mobile/identity/Marketplace;->AMAZON_FR:Lcom/audible/mobile/identity/Marketplace;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/mobile/identity/Marketplace;->AMAZON_ES:Lcom/audible/mobile/identity/Marketplace;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/mobile/identity/Marketplace;->AMAZON_IN:Lcom/audible/mobile/identity/Marketplace;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/mobile/identity/Marketplace;->AMAZON_IT:Lcom/audible/mobile/identity/Marketplace;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/mobile/identity/Marketplace;->AMAZON_JP:Lcom/audible/mobile/identity/Marketplace;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/mobile/identity/Marketplace;->AMAZON_CA:Lcom/audible/mobile/identity/Marketplace;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/mobile/identity/Marketplace;->AMAZON_CN:Lcom/audible/mobile/identity/Marketplace;

    const/16 v3, 0x13

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/mobile/identity/Marketplace;->AMAZON_BR:Lcom/audible/mobile/identity/Marketplace;

    const/16 v3, 0x14

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/mobile/identity/Marketplace;->AMAZON_MX:Lcom/audible/mobile/identity/Marketplace;

    const/16 v3, 0x15

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/mobile/identity/Marketplace;->AMAZON_AU:Lcom/audible/mobile/identity/Marketplace;

    const/16 v3, 0x16

    aput-object v2, v1, v3

    const/16 v2, 0x17

    aput-object v0, v1, v2

    sput-object v1, Lcom/audible/mobile/identity/Marketplace;->$VALUES:[Lcom/audible/mobile/identity/Marketplace;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/audible/mobile/identity/TopLevelDomain;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/audible/mobile/identity/TopLevelDomain;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/audible/mobile/identity/AccountPool;",
            ">;)V"
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const-string p1, "productionObfuscatedMarketplaceId cannot be null."

    .line 76
    invoke-static {p3, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 77
    invoke-static {p3, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "topLevelDomain cannot be null."

    .line 78
    invoke-static {p6, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "siteTag cannot be null."

    .line 79
    invoke-static {p7, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    iput-object p3, p0, Lcom/audible/mobile/identity/Marketplace;->productionObfuscatedMarketplaceId:Ljava/lang/String;

    .line 82
    iput-object p4, p0, Lcom/audible/mobile/identity/Marketplace;->devoObfuscatedMarketplaceId:Ljava/lang/String;

    .line 83
    new-instance p1, Lcom/audible/mobile/identity/AmazonDomain;

    invoke-direct {p1, p6}, Lcom/audible/mobile/identity/AmazonDomain;-><init>(Lcom/audible/mobile/identity/TopLevelDomain;)V

    iput-object p1, p0, Lcom/audible/mobile/identity/Marketplace;->amazonDomain:Lcom/audible/mobile/identity/AmazonDomain;

    .line 84
    new-instance p1, Lcom/audible/mobile/identity/AudibleDomain;

    invoke-direct {p1, p6}, Lcom/audible/mobile/identity/AudibleDomain;-><init>(Lcom/audible/mobile/identity/TopLevelDomain;)V

    iput-object p1, p0, Lcom/audible/mobile/identity/Marketplace;->audibleDomain:Lcom/audible/mobile/identity/AudibleDomain;

    .line 85
    iput p5, p0, Lcom/audible/mobile/identity/Marketplace;->siteId:I

    .line 86
    iput-object p6, p0, Lcom/audible/mobile/identity/Marketplace;->topLevelDomain:Lcom/audible/mobile/identity/TopLevelDomain;

    .line 87
    iput-object p7, p0, Lcom/audible/mobile/identity/Marketplace;->siteTag:Ljava/lang/String;

    .line 88
    iput-object p0, p0, Lcom/audible/mobile/identity/Marketplace;->audibleMarketplace:Lcom/audible/mobile/identity/Marketplace;

    .line 89
    iput-object p8, p0, Lcom/audible/mobile/identity/Marketplace;->validAccountPools:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/audible/mobile/identity/Marketplace;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/audible/mobile/identity/Marketplace;",
            ")V"
        }
    .end annotation

    .line 59
    invoke-virtual {p5}, Lcom/audible/mobile/identity/Marketplace;->getSiteId()I

    move-result v5

    .line 60
    invoke-virtual {p5}, Lcom/audible/mobile/identity/Marketplace;->getTopLevelDomain()Lcom/audible/mobile/identity/TopLevelDomain;

    move-result-object v6

    invoke-virtual {p5}, Lcom/audible/mobile/identity/Marketplace;->getSiteTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p5}, Lcom/audible/mobile/identity/Marketplace;->getValidAccountPools()Ljava/util/List;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 59
    invoke-direct/range {v0 .. v8}, Lcom/audible/mobile/identity/Marketplace;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/audible/mobile/identity/TopLevelDomain;Ljava/lang/String;Ljava/util/List;)V

    .line 61
    iput-object p5, p0, Lcom/audible/mobile/identity/Marketplace;->audibleMarketplace:Lcom/audible/mobile/identity/Marketplace;

    return-void
.end method

.method public static getMarketplaceFromMarketplaceId(Ljava/lang/String;)Lcom/audible/mobile/identity/Marketplace;
    .locals 5

    .line 104
    invoke-static {}, Lcom/audible/mobile/identity/Marketplace;->values()[Lcom/audible/mobile/identity/Marketplace;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 105
    iget-object v4, v3, Lcom/audible/mobile/identity/Marketplace;->devoObfuscatedMarketplaceId:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v3, Lcom/audible/mobile/identity/Marketplace;->productionObfuscatedMarketplaceId:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v3

    .line 110
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "provided marketplaceId does not match any known marketplace."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/mobile/identity/Marketplace;
    .locals 1

    .line 16
    const-class v0, Lcom/audible/mobile/identity/Marketplace;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/identity/Marketplace;

    return-object p0
.end method

.method public static values()[Lcom/audible/mobile/identity/Marketplace;
    .locals 1

    .line 16
    sget-object v0, Lcom/audible/mobile/identity/Marketplace;->$VALUES:[Lcom/audible/mobile/identity/Marketplace;

    invoke-virtual {v0}, [Lcom/audible/mobile/identity/Marketplace;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/identity/Marketplace;

    return-object v0
.end method


# virtual methods
.method public getProductionObfuscatedMarketplaceId()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/audible/mobile/identity/Marketplace;->productionObfuscatedMarketplaceId:Ljava/lang/String;

    return-object v0
.end method

.method public getSiteId()I
    .locals 1

    .line 158
    iget v0, p0, Lcom/audible/mobile/identity/Marketplace;->siteId:I

    return v0
.end method

.method public getSiteTag()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/audible/mobile/identity/Marketplace;->siteTag:Ljava/lang/String;

    return-object v0
.end method

.method public getTopLevelDomain()Lcom/audible/mobile/identity/TopLevelDomain;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/audible/mobile/identity/Marketplace;->topLevelDomain:Lcom/audible/mobile/identity/TopLevelDomain;

    return-object v0
.end method

.method public getValidAccountPools()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/audible/mobile/identity/AccountPool;",
            ">;"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/audible/mobile/identity/Marketplace;->validAccountPools:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Marketplace{productionObfuscatedMarketplaceId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/mobile/identity/Marketplace;->productionObfuscatedMarketplaceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", devoObfuscatedMarketplaceId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/audible/mobile/identity/Marketplace;->devoObfuscatedMarketplaceId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", amazonDomain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/mobile/identity/Marketplace;->amazonDomain:Lcom/audible/mobile/identity/AmazonDomain;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", siteId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/audible/mobile/identity/Marketplace;->siteId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
