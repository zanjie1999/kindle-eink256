.class Lcom/amazon/device/ads/ViewabilityJavascriptFetcherListener;
.super Ljava/lang/Object;
.source "ViewabilityJavascriptFetcherListener.java"

# interfaces
.implements Lcom/amazon/device/ads/Configuration$ConfigurationListener;


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "ViewabilityJavascriptFetcherListener"


# instance fields
.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private viewabilityJavascriptFetcher:Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 12
    new-instance v0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;

    invoke-direct {v0}, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;-><init>()V

    new-instance v1, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/ViewabilityJavascriptFetcherListener;-><init>(Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V

    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcherListener;->viewabilityJavascriptFetcher:Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;

    .line 17
    sget-object p1, Lcom/amazon/device/ads/ViewabilityJavascriptFetcherListener;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcherListener;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    return-void
.end method


# virtual methods
.method public onConfigurationFailure()V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcherListener;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Configuration fetching failed so Viewability Javascript fetch will not proceed."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;)V

    return-void
.end method

.method public onConfigurationReady()V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcherListener;->viewabilityJavascriptFetcher:Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;

    invoke-virtual {v0}, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->fetchJavascript()V

    return-void
.end method
