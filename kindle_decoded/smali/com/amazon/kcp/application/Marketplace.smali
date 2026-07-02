.class public final enum Lcom/amazon/kcp/application/Marketplace;
.super Ljava/lang/Enum;
.source "Marketplace.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/application/Marketplace;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/application/Marketplace;

.field public static final enum AU:Lcom/amazon/kcp/application/Marketplace;

.field public static final enum BR:Lcom/amazon/kcp/application/Marketplace;

.field public static final enum CA:Lcom/amazon/kcp/application/Marketplace;

.field public static final enum CN:Lcom/amazon/kcp/application/Marketplace;

.field public static final enum DE:Lcom/amazon/kcp/application/Marketplace;

.field public static final enum ES:Lcom/amazon/kcp/application/Marketplace;

.field public static final enum FR:Lcom/amazon/kcp/application/Marketplace;

.field public static final enum IN:Lcom/amazon/kcp/application/Marketplace;

.field public static final enum IT:Lcom/amazon/kcp/application/Marketplace;

.field public static final enum JP:Lcom/amazon/kcp/application/Marketplace;

.field public static final enum MX:Lcom/amazon/kcp/application/Marketplace;

.field public static final enum NL:Lcom/amazon/kcp/application/Marketplace;

.field public static final enum RU:Lcom/amazon/kcp/application/Marketplace;

.field public static final enum UK:Lcom/amazon/kcp/application/Marketplace;

.field public static final enum US:Lcom/amazon/kcp/application/Marketplace;

.field private static defaultMarketplaceId:Ljava/lang/String;

.field private static final idToMarketplace:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/application/Marketplace;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private countryCode:Ljava/lang/String;

.field private domain:Ljava/lang/String;

.field private id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 13
    new-instance v6, Lcom/amazon/kcp/application/Marketplace;

    const-string v1, "US"

    const/4 v2, 0x0

    const-string v3, "ATVPDKIKX0DER"

    const-string v4, "US"

    const-string v5, "amazon.com"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/application/Marketplace;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    .line 14
    new-instance v0, Lcom/amazon/kcp/application/Marketplace;

    const-string v8, "CA"

    const/4 v9, 0x1

    const-string v10, "A2EUQ1WTGCTBG2"

    const-string v11, "CA"

    const-string v12, "amazon.ca"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/kcp/application/Marketplace;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    .line 15
    new-instance v0, Lcom/amazon/kcp/application/Marketplace;

    const-string v2, "UK"

    const/4 v3, 0x2

    const-string v4, "A1F83G8C2ARO7P"

    const-string v5, "GB"

    const-string v6, "amazon.co.uk"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/application/Marketplace;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    .line 16
    new-instance v0, Lcom/amazon/kcp/application/Marketplace;

    const-string v8, "DE"

    const/4 v9, 0x3

    const-string v10, "A1PA6795UKMFR9"

    const-string v11, "DE"

    const-string v12, "amazon.de"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/kcp/application/Marketplace;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    .line 17
    new-instance v0, Lcom/amazon/kcp/application/Marketplace;

    const-string v2, "FR"

    const/4 v3, 0x4

    const-string v4, "A13V1IB3VIYZZH"

    const-string v5, "FR"

    const-string v6, "amazon.fr"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/application/Marketplace;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    .line 18
    new-instance v0, Lcom/amazon/kcp/application/Marketplace;

    const-string v8, "IT"

    const/4 v9, 0x5

    const-string v10, "APJ6JRA9NG5V4"

    const-string v11, "IT"

    const-string v12, "amazon.it"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/kcp/application/Marketplace;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    .line 19
    new-instance v0, Lcom/amazon/kcp/application/Marketplace;

    const-string v2, "ES"

    const/4 v3, 0x6

    const-string v4, "A1RKKUPIHCS9HS"

    const-string v5, "ES"

    const-string v6, "amazon.es"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/application/Marketplace;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    .line 20
    new-instance v0, Lcom/amazon/kcp/application/Marketplace;

    const-string v8, "JP"

    const/4 v9, 0x7

    const-string v10, "A1VC38T7YXB528"

    const-string v11, "JP"

    const-string v12, "amazon.co.jp"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/kcp/application/Marketplace;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    .line 21
    new-instance v0, Lcom/amazon/kcp/application/Marketplace;

    const-string v2, "CN"

    const/16 v3, 0x8

    const-string v4, "AAHKV2X7AFYLW"

    const-string v5, "CN"

    const-string v6, "amazon.cn"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/application/Marketplace;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    .line 22
    new-instance v0, Lcom/amazon/kcp/application/Marketplace;

    const-string v8, "IN"

    const/16 v9, 0x9

    const-string v10, "A21TJRUUN4KGV"

    const-string v11, "IN"

    const-string v12, "amazon.in"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/kcp/application/Marketplace;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    .line 23
    new-instance v0, Lcom/amazon/kcp/application/Marketplace;

    const-string v2, "BR"

    const/16 v3, 0xa

    const-string v4, "A2Q3Y263D00KWC"

    const-string v5, "BR"

    const-string v6, "amazon.com.br"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/application/Marketplace;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    .line 24
    new-instance v0, Lcom/amazon/kcp/application/Marketplace;

    const-string v8, "RU"

    const/16 v9, 0xb

    const-string v10, "AD2EMQ3L3PG8S"

    const-string v11, "RU"

    const-string v12, "amazon.ru"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/kcp/application/Marketplace;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/Marketplace;->RU:Lcom/amazon/kcp/application/Marketplace;

    .line 25
    new-instance v0, Lcom/amazon/kcp/application/Marketplace;

    const-string v2, "MX"

    const/16 v3, 0xc

    const-string v4, "A1AM78C64UM0Y8"

    const-string v5, "MX"

    const-string v6, "amazon.com.mx"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/application/Marketplace;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    .line 26
    new-instance v0, Lcom/amazon/kcp/application/Marketplace;

    const-string v8, "AU"

    const/16 v9, 0xd

    const-string v10, "A39IBJ37TRP1C6"

    const-string v11, "AU"

    const-string v12, "amazon.com.au"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/kcp/application/Marketplace;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    .line 27
    new-instance v0, Lcom/amazon/kcp/application/Marketplace;

    const-string v2, "NL"

    const/16 v3, 0xe

    const-string v4, "A1805IZSGTT6HS"

    const-string v5, "NL"

    const-string v6, "amazon.nl"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/application/Marketplace;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/Marketplace;->NL:Lcom/amazon/kcp/application/Marketplace;

    const/16 v1, 0xf

    new-array v1, v1, [Lcom/amazon/kcp/application/Marketplace;

    .line 12
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    const/4 v4, 0x3

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    const/4 v4, 0x4

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    const/4 v4, 0x5

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    const/4 v4, 0x6

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    const/4 v4, 0x7

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    const/16 v4, 0x8

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    const/16 v4, 0x9

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    const/16 v4, 0xa

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->RU:Lcom/amazon/kcp/application/Marketplace;

    const/16 v4, 0xb

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    const/16 v4, 0xc

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    const/16 v4, 0xd

    aput-object v2, v1, v4

    const/16 v2, 0xe

    aput-object v0, v1, v2

    sput-object v1, Lcom/amazon/kcp/application/Marketplace;->$VALUES:[Lcom/amazon/kcp/application/Marketplace;

    const-string v0, ""

    .line 32
    sput-object v0, Lcom/amazon/kcp/application/Marketplace;->defaultMarketplaceId:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/kcp/application/Marketplace;->idToMarketplace:Ljava/util/HashMap;

    .line 36
    invoke-static {}, Lcom/amazon/kcp/application/Marketplace;->values()[Lcom/amazon/kcp/application/Marketplace;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    .line 37
    sget-object v4, Lcom/amazon/kcp/application/Marketplace;->idToMarketplace:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 70
    iput-object p3, p0, Lcom/amazon/kcp/application/Marketplace;->id:Ljava/lang/String;

    .line 71
    iput-object p4, p0, Lcom/amazon/kcp/application/Marketplace;->countryCode:Ljava/lang/String;

    .line 72
    iput-object p5, p0, Lcom/amazon/kcp/application/Marketplace;->domain:Ljava/lang/String;

    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/amazon/kcp/application/Marketplace;
    .locals 1

    .line 47
    invoke-static {p0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    sget-object p0, Lcom/amazon/kcp/application/Marketplace;->idToMarketplace:Ljava/util/HashMap;

    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->defaultMarketplaceId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/application/Marketplace;

    return-object p0

    .line 49
    :cond_0
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->idToMarketplace:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/application/Marketplace;

    return-object p0
.end method

.method public static getInstance(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;)Lcom/amazon/kcp/application/Marketplace;
    .locals 0

    .line 61
    invoke-static {p0}, Lcom/amazon/kcp/application/Marketplace;->getInstance(Ljava/lang/String;)Lcom/amazon/kcp/application/Marketplace;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    return-object p1
.end method

.method public static setDefaultMarketplaceId(Ljava/lang/String;)V
    .locals 0

    .line 111
    sput-object p0, Lcom/amazon/kcp/application/Marketplace;->defaultMarketplaceId:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/application/Marketplace;
    .locals 1

    .line 12
    const-class v0, Lcom/amazon/kcp/application/Marketplace;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/application/Marketplace;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/application/Marketplace;
    .locals 1

    .line 12
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->$VALUES:[Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v0}, [Lcom/amazon/kcp/application/Marketplace;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/application/Marketplace;

    return-object v0
.end method


# virtual methods
.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/amazon/kcp/application/Marketplace;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/amazon/kcp/application/Marketplace;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/amazon/kcp/application/Marketplace;->id:Ljava/lang/String;

    return-object v0
.end method

.method public marketplaceContains(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/amazon/kcp/application/Marketplace;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/amazon/kcp/application/Marketplace;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
