.class public Lcom/amazon/kindle/marketreferral/MarketReferralTracker;
.super Landroid/content/BroadcastReceiver;
.source "MarketReferralTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/marketreferral/MarketReferralTracker$ReferrerHandler;
    }
.end annotation


# static fields
.field public static final CAMPAIGN:Ljava/lang/String; = "utm_campaign"

.field public static final CONTENT:Ljava/lang/String; = "utm_content"

.field public static final INSTALL_REFERRAL_PREFS:Ljava/lang/String; = "InstallReferralPrefs"

.field public static final KEY_SOURCE:Ljava/lang/String; = "source"

.field private static final LEGACY_PLAY_REFERRAL_METRIC_NAME:Ljava/lang/String; = "LegacyPlayStoreReferral"

.field private static final MARKET_REFERRAL_TRACKER_FIRST_INSTALL:Ljava/lang/String; = "MARKET_REFERRAL_TRACKER_FIRST_INSTALL"

.field public static final MEDIUM:Ljava/lang/String; = "utm_medium"

.field private static final MEDIUM_ASSOCIATES_TAG:Ljava/lang/String; = "associates_tag"

.field public static final REFERRER_ARG:Ljava/lang/String; = "referrer"

.field public static final SOURCE:Ljava/lang/String; = "utm_source"

.field private static final SRC_INSTALLATION:Ljava/lang/String; = "installation"

.field private static SUPPORTED_REFERRAL_PARAMS:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field public static final TERM:Ljava/lang/String; = "utm_term"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 39
    const-class v0, Lcom/amazon/kindle/marketreferral/MarketReferralTracker;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/marketreferral/MarketReferralTracker;->TAG:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "utm_campaign"

    const-string v2, "utm_source"

    const-string v3, "utm_medium"

    const-string v4, "utm_term"

    const-string v5, "utm_content"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/amazon/kindle/marketreferral/MarketReferralTracker;->SUPPORTED_REFERRAL_PARAMS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 38
    sget-object v0, Lcom/amazon/kindle/marketreferral/MarketReferralTracker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static getQueryMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 189
    invoke-static {p0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 193
    :cond_0
    :try_start_0
    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 197
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "&"

    .line 198
    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 199
    array-length v3, p0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_3

    aget-object v6, p0, v5

    const-string v7, "="

    .line 200
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 201
    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    sget-object v7, Lcom/amazon/kindle/marketreferral/MarketReferralTracker;->SUPPORTED_REFERRAL_PARAMS:Ljava/util/Set;

    aget-object v8, v6, v4

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_1

    .line 206
    :cond_1
    aget-object v7, v6, v4

    const/4 v8, 0x1

    aget-object v6, v6, v8

    invoke-static {v6, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 208
    :cond_3
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result p0

    if-nez p0, :cond_4

    .line 209
    sget-object p0, Lcom/amazon/kindle/marketreferral/MarketReferralTracker;->TAG:Ljava/lang/String;

    const-string v0, "MarketReferralTracker: No supported referral parameters could be found in the referrer-extra"

    invoke-static {p0, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_4
    move-object v2, v1

    :goto_2
    return-object v2

    :catch_0
    move-exception p0

    .line 214
    sget-object v0, Lcom/amazon/kindle/marketreferral/MarketReferralTracker;->TAG:Ljava/lang/String;

    const-string v1, "MarketReferralTracker: Unexpected exception while decoding"

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method private static handleReferral(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 126
    invoke-static {}, Lcom/amazon/kindle/ReferralSource;->values()[Lcom/amazon/kindle/ReferralSource;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 127
    invoke-virtual {v3}, Lcom/amazon/kindle/ReferralSource;->getMarketSource()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling Download Market Referral Handler with source "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    new-instance p0, Lcom/amazon/kindle/marketreferral/DownloadMarketReferralHandler;

    invoke-direct {p0, v3}, Lcom/amazon/kindle/marketreferral/DownloadMarketReferralHandler;-><init>(Lcom/amazon/kindle/ReferralSource;)V

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/marketreferral/DownloadMarketReferralHandler;->handleReferral(Landroid/content/Context;Ljava/util/Map;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static handleReferralTag(Landroid/content/Context;Ljava/util/Map;)V
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

    const-string v0, "utm_campaign"

    .line 104
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "utm_source"

    .line 105
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v2, "installation"

    .line 106
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p0, "utm_content"

    .line 107
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v1, "utm_medium"

    .line 108
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 109
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "associates_tag"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 111
    invoke-static {p0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 112
    sget-object p1, Lcom/amazon/kindle/marketreferral/MarketReferralTracker;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string v1, "MarketReferralTracker: using associates_tag \"%s\""

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAssociateInformationProvider()Lcom/amazon/kcp/application/IAssociateInformationProvider;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kcp/application/IAssociateInformationProvider;->setAssociateTag(Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_0
    sget-object p0, Lcom/amazon/kindle/marketreferral/MarketReferralTracker;->TAG:Ljava/lang/String;

    const-string p1, "MarketReferralTracker: received empty associates tag, ignoring."

    invoke-static {p0, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_1
    sget-object p0, Lcom/amazon/kindle/marketreferral/MarketReferralTracker;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Medium is null or empty for campaign: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_2
    invoke-static {v1, p0, p1}, Lcom/amazon/kindle/marketreferral/MarketReferralTracker;->handleReferral(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method public static logReferralViaMetrics(Landroid/content/Context;)V
    .locals 4

    .line 171
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "InstallReferralPrefs"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAndroidSharedPreferences(Ljava/lang/String;ILandroid/content/Context;)Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    move-result-object p0

    const-string v0, "referrer"

    const/4 v1, 0x0

    .line 172
    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 174
    invoke-static {p0}, Lcom/amazon/kindle/marketreferral/MarketReferralTracker;->getQueryMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 177
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "MarketReferralTracker"

    const-string v2, "InstallReferral"

    sget-object v3, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 183
    sget-object v0, Lcom/amazon/kindle/marketreferral/MarketReferralTracker;->TAG:Ljava/lang/String;

    const-string v1, "MarketReferralTracker: Unexpected exception when retrieving/logging referral url"

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "referrer"

    .line 150
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    sget-object p1, Lcom/amazon/kindle/marketreferral/MarketReferralTracker;->TAG:Ljava/lang/String;

    const-string p2, "MarketReferralTracker: Required intent-extra not found: referrer"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 154
    :cond_0
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 155
    invoke-static {p2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    sget-object p1, Lcom/amazon/kindle/marketreferral/MarketReferralTracker;->TAG:Ljava/lang/String;

    const-string p2, "MarketReferralTracker: referrer argument was null or empty."

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 159
    :cond_1
    sget-object v0, Lcom/amazon/kindle/marketreferral/MarketReferralTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MarketReferralTracker: referrerEncoded: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "MarketReferralTracker"

    const-string v2, "LegacyPlayStoreReferral"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    new-instance v0, Lcom/amazon/kindle/marketreferral/MarketReferralTracker$ReferrerHandler;

    invoke-direct {v0, p2, p1}, Lcom/amazon/kindle/marketreferral/MarketReferralTracker$ReferrerHandler;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
