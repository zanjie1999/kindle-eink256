.class Lcom/amazon/device/ads/AmazonAdSDKViewableEventListener;
.super Ljava/lang/Object;
.source "AmazonAdSDKViewableEventListener.java"

# interfaces
.implements Lcom/amazon/device/ads/SDKEventListener;


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "AmazonAdSDKViewableEventListener"


# instance fields
.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/AmazonAdSDKViewableEventListener;-><init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V

    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-object v0, Lcom/amazon/device/ads/AmazonAdSDKViewableEventListener;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/ads/AmazonAdSDKViewableEventListener;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    return-void
.end method


# virtual methods
.method public handleViewableEvent(Lcom/amazon/device/ads/AdControlAccessor;Lcom/amazon/device/ads/SDKEvent;)V
    .locals 2

    const-string v0, "VIEWABLE_PARAMS"

    .line 48
    invoke-virtual {p2, v0}, Lcom/amazon/device/ads/SDKEvent;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "viewableBridge.viewabilityChange(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\');"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/device/ads/AdControlAccessor;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method

.method public onSDKEvent(Lcom/amazon/device/ads/SDKEvent;Lcom/amazon/device/ads/AdControlAccessor;)V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/amazon/device/ads/AmazonAdSDKViewableEventListener;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    invoke-virtual {p1}, Lcom/amazon/device/ads/SDKEvent;->getEventType()Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 36
    sget-object v0, Lcom/amazon/device/ads/AmazonAdSDKViewableEventListener$1;->$SwitchMap$com$amazon$device$ads$SDKEvent$SDKEventType:[I

    invoke-virtual {p1}, Lcom/amazon/device/ads/SDKEvent;->getEventType()Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/amazon/device/ads/AmazonAdSDKViewableEventListener;->handleViewableEvent(Lcom/amazon/device/ads/AdControlAccessor;Lcom/amazon/device/ads/SDKEvent;)V

    :goto_0
    return-void
.end method
