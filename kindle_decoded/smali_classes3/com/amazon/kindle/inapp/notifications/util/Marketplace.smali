.class public final enum Lcom/amazon/kindle/inapp/notifications/util/Marketplace;
.super Ljava/lang/Enum;
.source "Marketplace.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/inapp/notifications/util/Marketplace;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/inapp/notifications/util/Marketplace;

.field public static final enum AU:Lcom/amazon/kindle/inapp/notifications/util/Marketplace;

.field public static final enum CN:Lcom/amazon/kindle/inapp/notifications/util/Marketplace;

.field public static final enum DE:Lcom/amazon/kindle/inapp/notifications/util/Marketplace;

.field public static final enum ES:Lcom/amazon/kindle/inapp/notifications/util/Marketplace;

.field public static final enum FR:Lcom/amazon/kindle/inapp/notifications/util/Marketplace;

.field public static final enum IN:Lcom/amazon/kindle/inapp/notifications/util/Marketplace;

.field public static final enum IT:Lcom/amazon/kindle/inapp/notifications/util/Marketplace;

.field public static final enum JP:Lcom/amazon/kindle/inapp/notifications/util/Marketplace;

.field public static final enum NL:Lcom/amazon/kindle/inapp/notifications/util/Marketplace;

.field public static final enum RU:Lcom/amazon/kindle/inapp/notifications/util/Marketplace;

.field public static final enum UK:Lcom/amazon/kindle/inapp/notifications/util/Marketplace;


# instance fields
.field private final countryCode:Ljava/lang/String;

.field private final domain:Ljava/lang/String;

.field private final id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/16 v0, 0xf

    new-array v0, v0, [Lcom/amazon/kindle/inapp/notifications/util/Marketplace;

    new-instance v7, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;

    const-string v2, "US"

    const/4 v3, 0x0

    const-string v4, "ATVPDKIKX0DER"

    const-string v5, "US"

    const-string v6, "amazon.com"

    move-object v1, v7

    .line 8
    invoke-direct/range {v1 .. v6}, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    aput-object v7, v0, v1

    new-instance v1, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;

    const-string v9, "CA"

    const/4 v10, 0x1

    const-string v11, "A2EUQ1WTGCTBG2"

    const-string v12, "CA"

    const-string v13, "amazon.ca"

    move-object v8, v1

    .line 9
    invoke-direct/range {v8 .. v13}, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;

    const-string v4, "UK"

    const/4 v5, 0x2

    const-string v6, "A1F83G8C2ARO7P"

    const-string v7, "GB"

    const-string v8, "amazon.co.uk"

    move-object v3, v1

    .line 10
    invoke-direct/range {v3 .. v8}, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;->UK:Lcom/amazon/kindle/inapp/notifications/util/Marketplace;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;

    const-string v4, "DE"

    const/4 v5, 0x3

    const-string v6, "A1PA6795UKMFR9"

    const-string v7, "DE"

    const-string v8, "amazon.de"

    move-object v3, v1

    .line 11
    invoke-direct/range {v3 .. v8}, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;->DE:Lcom/amazon/kindle/inapp/notifications/util/Marketplace;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;

    const-string v4, "FR"

    const/4 v5, 0x4

    const-string v6, "A13V1IB3VIYZZH"

    const-string v7, "FR"

    const-string v8, "amazon.fr"

    move-object v3, v1

    .line 12
    invoke-direct/range {v3 .. v8}, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;->FR:Lcom/amazon/kindle/inapp/notifications/util/Marketplace;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;

    const-string v4, "IT"

    const/4 v5, 0x5

    const-string v6, "APJ6JRA9NG5V4"

    const-string v7, "IT"

    const-string v8, "amazon.it"

    move-object v3, v1

    .line 13
    invoke-direct/range {v3 .. v8}, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;->IT:Lcom/amazon/kindle/inapp/notifications/util/Marketplace;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;

    const-string v4, "ES"

    const/4 v5, 0x6

    const-string v6, "A1RKKUPIHCS9HS"

    const-string v7, "ES"

    const-string v8, "amazon.es"

    move-object v3, v1

    .line 14
    invoke-direct/range {v3 .. v8}, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;->ES:Lcom/amazon/kindle/inapp/notifications/util/Marketplace;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;

    const-string v4, "JP"

    const/4 v5, 0x7

    const-string v6, "A1VC38T7YXB528"

    const-string v7, "JP"

    const-string v8, "amazon.co.jp"

    move-object v3, v1

    .line 15
    invoke-direct/range {v3 .. v8}, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;->JP:Lcom/amazon/kindle/inapp/notifications/util/Marketplace;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;

    const-string v4, "CN"

    const/16 v5, 0x8

    const-string v6, "AAHKV2X7AFYLW"

    const-string v7, "CN"

    const-string v8, "amazon.cn"

    move-object v3, v1

    .line 16
    invoke-direct/range {v3 .. v8}, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;->CN:Lcom/amazon/kindle/inapp/notifications/util/Marketplace;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;

    const-string v4, "IN"

    const/16 v5, 0x9

    const-string v6, "A21TJRUUN4KGV"

    const-string v7, "IN"

    const-string v8, "amazon.in"

    move-object v3, v1

    .line 17
    invoke-direct/range {v3 .. v8}, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;->IN:Lcom/amazon/kindle/inapp/notifications/util/Marketplace;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;

    const-string v4, "BR"

    const/16 v5, 0xa

    const-string v6, "A2Q3Y263D00KWC"

    const-string v7, "BR"

    const-string v8, "amazon.com.br"

    move-object v3, v1

    .line 18
    invoke-direct/range {v3 .. v8}, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;

    const-string v4, "RU"

    const/16 v5, 0xb

    const-string v6, "AD2EMQ3L3PG8S"

    const-string v7, "RU"

    const-string v8, "amazon.ru"

    move-object v3, v1

    .line 19
    invoke-direct/range {v3 .. v8}, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;->RU:Lcom/amazon/kindle/inapp/notifications/util/Marketplace;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;

    const-string v4, "MX"

    const/16 v5, 0xc

    const-string v6, "A1AM78C64UM0Y8"

    const-string v7, "MX"

    const-string v8, "amazon.com.mx"

    move-object v3, v1

    .line 20
    invoke-direct/range {v3 .. v8}, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;

    const-string v4, "AU"

    const/16 v5, 0xd

    const-string v6, "A39IBJ37TRP1C6"

    const-string v7, "AU"

    const-string v8, "amazon.com.au"

    move-object v3, v1

    .line 21
    invoke-direct/range {v3 .. v8}, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;->AU:Lcom/amazon/kindle/inapp/notifications/util/Marketplace;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;

    const-string v4, "NL"

    const/16 v5, 0xe

    const-string v6, "A1805IZSGTT6HS"

    const-string v7, "NL"

    const-string v8, "amazon.nl"

    move-object v3, v1

    .line 22
    invoke-direct/range {v3 .. v8}, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;->NL:Lcom/amazon/kindle/inapp/notifications/util/Marketplace;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;->$VALUES:[Lcom/amazon/kindle/inapp/notifications/util/Marketplace;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "countryCode"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "domain"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;->id:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;->countryCode:Ljava/lang/String;

    iput-object p5, p0, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;->domain:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/inapp/notifications/util/Marketplace;
    .locals 1

    const-class v0, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/inapp/notifications/util/Marketplace;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;->$VALUES:[Lcom/amazon/kindle/inapp/notifications/util/Marketplace;

    invoke-virtual {v0}, [Lcom/amazon/kindle/inapp/notifications/util/Marketplace;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/inapp/notifications/util/Marketplace;

    return-object v0
.end method


# virtual methods
.method public final getId()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;->id:Ljava/lang/String;

    return-object v0
.end method
