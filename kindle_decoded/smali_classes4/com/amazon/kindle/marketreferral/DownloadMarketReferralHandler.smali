.class public Lcom/amazon/kindle/marketreferral/DownloadMarketReferralHandler;
.super Ljava/lang/Object;
.source "DownloadMarketReferralHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private referralSource:Lcom/amazon/kindle/ReferralSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/amazon/kindle/marketreferral/DownloadMarketReferralHandler;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/marketreferral/DownloadMarketReferralHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/ReferralSource;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/amazon/kindle/marketreferral/DownloadMarketReferralHandler;->referralSource:Lcom/amazon/kindle/ReferralSource;

    return-void
.end method

.method private getReferralDetails(Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "utm_content"

    .line 75
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 76
    invoke-static {p1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 78
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/16 v2, 0x8

    invoke-static {p1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    const-string p1, "&"

    .line 79
    invoke-virtual {v1, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 80
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    const-string v5, "="

    .line 81
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 82
    array-length v5, v4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    goto :goto_1

    .line 85
    :cond_0
    aget-object v5, v4, v2

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 88
    sget-object v1, Lcom/amazon/kindle/marketreferral/DownloadMarketReferralHandler;->TAG:Ljava/lang/String;

    const-string v2, "Error decoding utm_content"

    invoke-static {v1, v2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-object v0
.end method


# virtual methods
.method public handleReferral(Landroid/content/Context;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/amazon/kindle/marketreferral/DownloadMarketReferralHandler;->referralSource:Lcom/amazon/kindle/ReferralSource;

    invoke-virtual {v0}, Lcom/amazon/kindle/ReferralSource;->getMarketSource()Ljava/lang/String;

    move-result-object v0

    const-string v1, "utm_source"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    sget-object p1, Lcom/amazon/kindle/marketreferral/DownloadMarketReferralHandler;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The referral source is not "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kindle/marketreferral/DownloadMarketReferralHandler;->referralSource:Lcom/amazon/kindle/ReferralSource;

    invoke-virtual {v0}, Lcom/amazon/kindle/ReferralSource;->getMarketSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 45
    :cond_0
    invoke-direct {p0, p2}, Lcom/amazon/kindle/marketreferral/DownloadMarketReferralHandler;->getReferralDetails(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    const-string v0, "asin"

    .line 48
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    const-string v2, "kp_market_referral_params"

    .line 50
    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 51
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "location"

    .line 52
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string p2, "timestamp"

    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 55
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 56
    sget-object p1, Lcom/amazon/kindle/marketreferral/DownloadMarketReferralHandler;->TAG:Ljava/lang/String;

    const-string p2, "Stored Asin and Location to Shared Preferences"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_1
    sget-object p1, Lcom/amazon/kindle/marketreferral/DownloadMarketReferralHandler;->TAG:Ljava/lang/String;

    const-string p2, "Error storing Asin and Location to Shared Preferences"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_2
    sget-object p1, Lcom/amazon/kindle/marketreferral/DownloadMarketReferralHandler;->TAG:Ljava/lang/String;

    const-string p2, "ASIN is not present in the referral params, hence not saving the referral params"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :goto_0
    sget-object p1, Lcom/amazon/kindle/marketreferral/DownloadMarketReferralHandler;->TAG:Ljava/lang/String;

    const-string p2, "Sending referral details to Reading Streams"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
