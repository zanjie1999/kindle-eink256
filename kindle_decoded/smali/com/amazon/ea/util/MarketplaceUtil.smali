.class public Lcom/amazon/ea/util/MarketplaceUtil;
.super Ljava/lang/Object;
.source "MarketplaceUtil.java"


# static fields
.field private static final BR_DOMAIN:Ljava/lang/String; = "www.amazon.com.br"

.field private static final BR_MARKETPLACE:Ljava/lang/String; = "A2Q3Y263D00KWC"

.field private static final CN_DOMAIN:Ljava/lang/String; = "www.amazon.cn"

.field private static final CN_MARKETPLACE:Ljava/lang/String; = "AAHKV2X7AFYLW"

.field private static final DE_DOMAIN:Ljava/lang/String; = "www.amazon.de"

.field private static final DE_MARKETPLACE:Ljava/lang/String; = "A1PA6795UKMFR9"

.field private static final ES_DOMAIN:Ljava/lang/String; = "www.amazon.es"

.field private static final ES_MARKETPLACE:Ljava/lang/String; = "A1RKKUPIHCS9HS"

.field private static final FR_DOMAIN:Ljava/lang/String; = "www.amazon.fr"

.field private static final FR_MARKETPLACE:Ljava/lang/String; = "A13V1IB3VIYZZH"

.field private static final IT_DOMAIN:Ljava/lang/String; = "www.amazon.it"

.field private static final IT_MARKETPLACE:Ljava/lang/String; = "APJ6JRA9NG5V4"

.field private static final JP_DOMAIN:Ljava/lang/String; = "www.amazon.co.jp"

.field private static final JP_MARKETPLACE:Ljava/lang/String; = "A1VC38T7YXB528"

.field private static final MX_DOMAIN:Ljava/lang/String; = "www.amazon.com.mx"

.field private static final MX_MARKETPLACE:Ljava/lang/String; = "A1AM78C64UM0Y8"

.field private static final RU_DOMAIN:Ljava/lang/String; = "www.amazon.ru"

.field private static final RU_MARKETPLACE:Ljava/lang/String; = "AD2EMQ3L3PG8S"

.field private static final UK_DOMAIN:Ljava/lang/String; = "www.amazon.co.uk"

.field private static final UK_MARKETPLACE:Ljava/lang/String; = "A1F83G8C2ARO7P"


# direct methods
.method public static getDomain()Ljava/lang/String;
    .locals 3

    .line 48
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v0

    .line 49
    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IUserAccount;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 54
    :cond_0
    invoke-static {v0}, Lcom/amazon/ea/util/MarketplaceUtil;->getDomainForMarketplaceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v2

    :cond_1
    return-object v0
.end method

.method public static getDomainForMarketplaceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "ATVPDKIKX0DER"

    .line 70
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p0, "www.amazon.com"

    return-object p0

    :cond_0
    const-string v0, "A1F83G8C2ARO7P"

    .line 72
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo p0, "www.amazon.co.uk"

    return-object p0

    :cond_1
    const-string v0, "A1PA6795UKMFR9"

    .line 74
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo p0, "www.amazon.de"

    return-object p0

    :cond_2
    const-string v0, "A13V1IB3VIYZZH"

    .line 76
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo p0, "www.amazon.fr"

    return-object p0

    :cond_3
    const-string v0, "A1RKKUPIHCS9HS"

    .line 78
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo p0, "www.amazon.es"

    return-object p0

    :cond_4
    const-string v0, "A21TJRUUN4KGV"

    .line 80
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo p0, "www.amazon.in"

    return-object p0

    :cond_5
    const-string v0, "APJ6JRA9NG5V4"

    .line 82
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo p0, "www.amazon.it"

    return-object p0

    :cond_6
    const-string v0, "A1VC38T7YXB528"

    .line 84
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo p0, "www.amazon.co.jp"

    return-object p0

    :cond_7
    const-string v0, "A2EUQ1WTGCTBG2"

    .line 86
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo p0, "www.amazon.ca"

    return-object p0

    :cond_8
    const-string v0, "AAHKV2X7AFYLW"

    .line 88
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo p0, "www.amazon.cn"

    return-object p0

    :cond_9
    const-string v0, "A2Q3Y263D00KWC"

    .line 90
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo p0, "www.amazon.com.br"

    return-object p0

    :cond_a
    const-string v0, "A1AM78C64UM0Y8"

    .line 92
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string/jumbo p0, "www.amazon.com.mx"

    return-object p0

    :cond_b
    const-string v0, "A39IBJ37TRP1C6"

    .line 94
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string/jumbo p0, "www.amazon.com.au"

    return-object p0

    :cond_c
    const-string v0, "AD2EMQ3L3PG8S"

    .line 96
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    const-string/jumbo p0, "www.amazon.ru"

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getUserPreferredMarketplace()Ljava/lang/String;
    .locals 1

    .line 108
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IUserAccount;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
