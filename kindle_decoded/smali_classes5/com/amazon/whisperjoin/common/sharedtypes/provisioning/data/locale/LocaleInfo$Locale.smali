.class public final enum Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;
.super Ljava/lang/Enum;
.source "LocaleInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

.field public static final enum AE:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

.field public static final enum AU:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

.field public static final enum BR:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

.field public static final enum CA:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

.field public static final enum CN:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

.field public static final enum DE:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

.field public static final enum ES:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

.field public static final enum FR:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

.field public static final enum IN:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

.field public static final enum IT:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

.field public static final enum JP:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

.field public static final enum MX:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

.field public static final enum NL:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

.field public static final enum RU:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

.field public static final enum SA:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

.field public static final enum TR:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

.field public static final enum UK:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

.field public static final enum US:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

.field private static final sLocaleNamesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mObfuscatedMarketplaceId:Ljava/lang/String;

.field private final mRealm:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 21
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

    const/4 v1, 0x0

    const-string v2, "US"

    const-string v3, "ATVPDKIKX0DER"

    const-string v4, "USAmazon"

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;->US:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

    .line 22
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

    const/4 v2, 0x1

    const-string v3, "UK"

    const-string v4, "A1F83G8C2ARO7P"

    const-string v5, "UKAmazon"

    invoke-direct {v0, v3, v2, v4, v5}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;->UK:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

    .line 23
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

    const/4 v3, 0x2

    const-string v4, "DE"

    const-string v5, "A1PA6795UKMFR9"

    const-string v6, "DEAmazon"

    invoke-direct {v0, v4, v3, v5, v6}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;->DE:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

    .line 24
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

    const/4 v4, 0x3

    const-string v5, "FR"

    const-string v6, "A13V1IB3VIYZZH"

    const-string v7, "FRAmazon"

    invoke-direct {v0, v5, v4, v6, v7}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;->FR:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

    .line 25
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

    const/4 v5, 0x4

    const-string v6, "ES"

    const-string v7, "A1RKKUPIHCS9HS"

    const-string v8, "ESAmazon"

    invoke-direct {v0, v6, v5, v7, v8}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;->ES:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

    .line 26
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

    const/4 v6, 0x5

    const-string v7, "IN"

    const-string v8, "A21TJRUUN4KGV"

    const-string v9, "INAmazon"

    invoke-direct {v0, v7, v6, v8, v9}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;->IN:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

    .line 27
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

    const/4 v7, 0x6

    const-string v8, "IT"

    const-string v9, "APJ6JRA9NG5V4"

    const-string v10, "ITAmazon"

    invoke-direct {v0, v8, v7, v9, v10}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;->IT:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

    .line 28
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

    const/4 v8, 0x7

    const-string v9, "CN"

    const-string v10, "AAHKV2X7AFYLW"

    const-string v11, "CNAmazon"

    invoke-direct {v0, v9, v8, v10, v11}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;->CN:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

    .line 29
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

    const/16 v9, 0x8

    const-string v10, "BR"

    const-string v11, "A2Q3Y263D00KWC"

    const-string v12, "BRAmazon"

    invoke-direct {v0, v10, v9, v11, v12}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;->BR:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

    .line 30
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

    const/16 v10, 0x9

    const-string v11, "MX"

    const-string v12, "A1AM78C64UM0Y8"

    const-string v13, "MXAmazon"

    invoke-direct {v0, v11, v10, v12, v13}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;->MX:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

    .line 31
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

    const/16 v11, 0xa

    const-string v12, "AU"

    const-string v13, "A39IBJ37TRP1C6"

    const-string v14, "AUAmazon"

    invoke-direct {v0, v12, v11, v13, v14}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;->AU:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

    .line 32
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

    const/16 v12, 0xb

    const-string v13, "RU"

    const-string v14, "AD2EMQ3L3PG8S"

    const-string v15, "RUAmazon"

    invoke-direct {v0, v13, v12, v14, v15}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;->RU:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

    .line 33
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

    const/16 v13, 0xc

    const-string v14, "NL"

    const-string v15, "A1805IZSGTT6HS"

    const-string v12, "NLAmazon"

    invoke-direct {v0, v14, v13, v15, v12}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;->NL:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

    .line 34
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

    const/16 v12, 0xd

    const-string v14, "AE"

    const-string v15, "A2VIGQ35RCS4UG"

    const-string v13, "AEAmazon"

    invoke-direct {v0, v14, v12, v15, v13}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;->AE:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

    .line 35
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

    const/16 v13, 0xe

    const-string v14, "SA"

    const-string v15, "A17E79C6D8DWNP"

    const-string v12, "SAAmazon"

    invoke-direct {v0, v14, v13, v15, v12}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;->SA:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

    .line 36
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

    const/16 v12, 0xf

    const-string v14, "TR"

    const-string v15, "A33AVAJ2PDY3EV"

    const-string v13, "TRAmazon"

    invoke-direct {v0, v14, v12, v15, v13}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;->TR:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

    .line 37
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

    const/16 v13, 0x10

    const-string v14, "JP"

    const-string v15, "A1VC38T7YXB528"

    const-string v12, "JPAmazon"

    invoke-direct {v0, v14, v13, v15, v12}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;->JP:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

    .line 38
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

    const/16 v12, 0x11

    const-string v14, "CA"

    const-string v15, "A2EUQ1WTGCTBG2"

    const-string v13, "CAAmazon"

    invoke-direct {v0, v14, v12, v15, v13}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;->CA:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

    const/16 v13, 0x12

    new-array v13, v13, [Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

    .line 20
    sget-object v14, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;->US:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

    aput-object v14, v13, v1

    sget-object v14, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;->UK:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

    aput-object v14, v13, v2

    sget-object v2, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;->DE:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

    aput-object v2, v13, v3

    sget-object v2, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;->FR:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

    aput-object v2, v13, v4

    sget-object v2, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;->ES:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

    aput-object v2, v13, v5

    sget-object v2, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;->IN:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

    aput-object v2, v13, v6

    sget-object v2, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;->IT:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

    aput-object v2, v13, v7

    sget-object v2, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;->CN:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

    aput-object v2, v13, v8

    sget-object v2, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;->BR:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

    aput-object v2, v13, v9

    sget-object v2, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;->MX:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

    aput-object v2, v13, v10

    sget-object v2, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;->AU:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

    aput-object v2, v13, v11

    sget-object v2, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;->RU:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

    const/16 v3, 0xb

    aput-object v2, v13, v3

    sget-object v2, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;->NL:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

    const/16 v3, 0xc

    aput-object v2, v13, v3

    sget-object v2, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;->AE:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

    const/16 v3, 0xd

    aput-object v2, v13, v3

    sget-object v2, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;->SA:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

    const/16 v3, 0xe

    aput-object v2, v13, v3

    sget-object v2, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;->TR:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

    const/16 v3, 0xf

    aput-object v2, v13, v3

    sget-object v2, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;->JP:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

    const/16 v3, 0x10

    aput-object v2, v13, v3

    aput-object v0, v13, v12

    sput-object v13, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;->$VALUES:[Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    invoke-static {}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;->values()[Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 45
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;->sLocaleNamesList:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    iput-object p3, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;->mObfuscatedMarketplaceId:Ljava/lang/String;

    .line 55
    iput-object p4, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;->mRealm:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;
    .locals 1

    .line 20
    const-class v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;
    .locals 1

    .line 20
    sget-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;->$VALUES:[Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

    invoke-virtual {v0}, [Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

    return-object v0
.end method


# virtual methods
.method public getLocaleConfiguration()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;
    .locals 2

    .line 67
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;-><init>()V

    .line 68
    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;->mObfuscatedMarketplaceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->setMarketplace(Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;->mRealm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->setRealm(Ljava/lang/String;)V

    return-object v0
.end method
