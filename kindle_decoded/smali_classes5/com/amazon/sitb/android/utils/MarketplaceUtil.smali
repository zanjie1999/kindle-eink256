.class public Lcom/amazon/sitb/android/utils/MarketplaceUtil;
.super Ljava/lang/Object;
.source "MarketplaceUtil.java"


# static fields
.field private static final AU_DOMAIN:Ljava/lang/String; = "www.amazon.com.au"

.field private static final AU_MARKETPLACE:Ljava/lang/String; = "A39IBJ37TRP1C6"

.field private static final BR_DOMAIN:Ljava/lang/String; = "www.amazon.com.br"

.field private static final BR_MARKETPLACE:Ljava/lang/String; = "A2Q3Y263D00KWC"

.field private static final CA_DOMAIN:Ljava/lang/String; = "www.amazon.ca"

.field private static final CA_MARKETPLACE:Ljava/lang/String; = "A2EUQ1WTGCTBG2"

.field private static final CN_DOMAIN:Ljava/lang/String; = "www.amazon.cn"

.field private static final CN_MARKETPLACE:Ljava/lang/String; = "AAHKV2X7AFYLW"

.field private static final DE_DOMAIN:Ljava/lang/String; = "www.amazon.de"

.field private static final DE_MARKETPLACE:Ljava/lang/String; = "A1PA6795UKMFR9"

.field private static final ES_DOMAIN:Ljava/lang/String; = "www.amazon.es"

.field private static final ES_MARKETPLACE:Ljava/lang/String; = "A1RKKUPIHCS9HS"

.field private static final EU_ENDPOINT:Ljava/lang/String; = "series-eu.amazon.com"

.field private static final FE_ENDPOINT:Ljava/lang/String; = "series-fe.amazon.com"

.field private static final FR_DOMAIN:Ljava/lang/String; = "www.amazon.fr"

.field private static final FR_MARKETPLACE:Ljava/lang/String; = "A13V1IB3VIYZZH"

.field private static final IN_DOMAIN:Ljava/lang/String; = "www.amazon.in"

.field private static final IN_MARKETPLACE:Ljava/lang/String; = "A21TJRUUN4KGV"

.field private static final IT_DOMAIN:Ljava/lang/String; = "www.amazon.it"

.field private static final IT_MARKETPLACE:Ljava/lang/String; = "APJ6JRA9NG5V4"

.field private static final JP_DOMAIN:Ljava/lang/String; = "www.amazon.co.jp"

.field private static final JP_MARKETPLACE:Ljava/lang/String; = "A1VC38T7YXB528"

.field private static final MX_DOMAIN:Ljava/lang/String; = "www.amazon.com.mx"

.field private static final MX_MARKETPLACE:Ljava/lang/String; = "A1AM78C64UM0Y8"

.field private static final NL_MARKETPLACE:Ljava/lang/String; = "A1805IZSGTT6HS"

.field private static final RU_DOMAIN:Ljava/lang/String; = "www.amazon.ru"

.field private static final RU_MARKETPLACE:Ljava/lang/String; = "AD2EMQ3L3PG8S"

.field private static final UK_DOMAIN:Ljava/lang/String; = "www.amazon.co.uk"

.field private static final UK_MARKETPLACE:Ljava/lang/String; = "A1F83G8C2ARO7P"

.field private static final US_DOMAIN:Ljava/lang/String; = "www.amazon.com"

.field private static final US_ENDPOINT:Ljava/lang/String; = "series-na.amazon.com"

.field private static final US_MARKETPLACE:Ljava/lang/String; = "ATVPDKIKX0DER"

.field private static final seriesEndPoints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final storeEndPoints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Lcom/amazon/sitb/android/utils/MarketplaceUtil$1;

    invoke-direct {v0}, Lcom/amazon/sitb/android/utils/MarketplaceUtil$1;-><init>()V

    sput-object v0, Lcom/amazon/sitb/android/utils/MarketplaceUtil;->seriesEndPoints:Ljava/util/Map;

    .line 60
    new-instance v0, Lcom/amazon/sitb/android/utils/MarketplaceUtil$2;

    invoke-direct {v0}, Lcom/amazon/sitb/android/utils/MarketplaceUtil$2;-><init>()V

    sput-object v0, Lcom/amazon/sitb/android/utils/MarketplaceUtil;->storeEndPoints:Ljava/util/Map;

    return-void
.end method

.method public static getEUMFAMarketplaces()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "A1F83G8C2ARO7P"

    const-string v1, "A13V1IB3VIYZZH"

    const-string v2, "APJ6JRA9NG5V4"

    const-string v3, "A1RKKUPIHCS9HS"

    const-string v4, "A1PA6795UKMFR9"

    const-string v5, "A1805IZSGTT6HS"

    .line 88
    invoke-static/range {v0 .. v5}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public static getSeriesEndPointFromPfm(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 79
    sget-object v0, Lcom/amazon/sitb/android/utils/MarketplaceUtil;->seriesEndPoints:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getStoreEndPointFromPfm(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 83
    sget-object v0, Lcom/amazon/sitb/android/utils/MarketplaceUtil;->storeEndPoints:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
