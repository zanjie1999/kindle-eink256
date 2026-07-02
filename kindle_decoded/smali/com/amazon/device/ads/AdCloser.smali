.class Lcom/amazon/device/ads/AdCloser;
.super Ljava/lang/Object;
.source "AdCloser.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "AdCloser"


# instance fields
.field private final adController:Lcom/amazon/device/ads/AdController;

.field private final isClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/device/ads/AdController;)V
    .locals 1

    .line 22
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/AdCloser;-><init>(Lcom/amazon/device/ads/AdController;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V

    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/AdController;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/device/ads/AdCloser;->isClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    iput-object p1, p0, Lcom/amazon/device/ads/AdCloser;->adController:Lcom/amazon/device/ads/AdController;

    .line 27
    sget-object p1, Lcom/amazon/device/ads/AdCloser;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/ads/AdCloser;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    return-void
.end method


# virtual methods
.method public closeAd()Z
    .locals 6

    .line 35
    iget-object v0, p0, Lcom/amazon/device/ads/AdCloser;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Ad is attempting to close."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/amazon/device/ads/AdCloser;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/AdState;->READY_TO_LOAD:Lcom/amazon/device/ads/AdState;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 40
    iget-object v0, p0, Lcom/amazon/device/ads/AdCloser;->isClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 44
    iget-object v0, p0, Lcom/amazon/device/ads/AdCloser;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getAdControlCallback()Lcom/amazon/device/ads/AdControlCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/device/ads/AdControlCallback;->adClosing()I

    move-result v0

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :goto_1
    if-eqz v0, :cond_2

    .line 59
    iget-object v0, p0, Lcom/amazon/device/ads/AdCloser;->adController:Lcom/amazon/device/ads/AdController;

    new-instance v4, Lcom/amazon/device/ads/SDKEvent;

    sget-object v5, Lcom/amazon/device/ads/SDKEvent$SDKEventType;->CLOSED:Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    invoke-direct {v4, v5}, Lcom/amazon/device/ads/SDKEvent;-><init>(Lcom/amazon/device/ads/SDKEvent$SDKEventType;)V

    invoke-virtual {v0, v4}, Lcom/amazon/device/ads/AdController;->fireSDKEvent(Lcom/amazon/device/ads/SDKEvent;)V

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-eqz v3, :cond_3

    .line 66
    iget-object v0, p0, Lcom/amazon/device/ads/AdCloser;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->resetToReady()V

    .line 68
    :cond_3
    iget-object v0, p0, Lcom/amazon/device/ads/AdCloser;->isClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move v1, v2

    :cond_4
    return v1
.end method
