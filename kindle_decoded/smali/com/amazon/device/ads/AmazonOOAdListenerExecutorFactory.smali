.class Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory;
.super Lcom/amazon/device/ads/AdListenerExecutorFactory;
.source "AmazonOOAdListenerExecutorFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory$OOAdListenerExecutorConstructor;
    }
.end annotation


# instance fields
.field private final ooAdListenerExecutorConstructor:Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory$OOAdListenerExecutorConstructor;

.field private final settings:Lcom/amazon/device/ads/Settings;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/Settings;)V
    .locals 1

    .line 15
    new-instance v0, Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory$OOAdListenerExecutorConstructor;

    invoke-direct {v0}, Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory$OOAdListenerExecutorConstructor;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory;-><init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/Settings;Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory$OOAdListenerExecutorConstructor;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/Settings;Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory$OOAdListenerExecutorConstructor;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/AdListenerExecutorFactory;-><init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V

    .line 21
    iput-object p2, p0, Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory;->settings:Lcom/amazon/device/ads/Settings;

    .line 22
    iput-object p3, p0, Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory;->ooAdListenerExecutorConstructor:Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory$OOAdListenerExecutorConstructor;

    return-void
.end method

.method private createAdEventCommand(Lcom/amazon/device/ads/AdListenerExecutor;)V
    .locals 1

    .line 63
    new-instance v0, Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory$1;-><init>(Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory;Lcom/amazon/device/ads/AdListenerExecutor;)V

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/AdListenerExecutor;->setOnAdEventCommand(Lcom/amazon/device/ads/OnAdEventCommand;)V

    return-void
.end method

.method private createAdReceivedCommand(Lcom/amazon/device/ads/AdListenerExecutor;)V
    .locals 1

    .line 83
    new-instance v0, Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory$2;

    invoke-direct {v0, p0, p1}, Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory$2;-><init>(Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory;Lcom/amazon/device/ads/AdListenerExecutor;)V

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/AdListenerExecutor;->setOnAdReceivedCommand(Lcom/amazon/device/ads/OnAdReceivedCommand;)V

    return-void
.end method

.method private createIndividualAdListenerExecutor(Lcom/amazon/device/ads/AdListener;)Lcom/amazon/device/ads/AdListenerExecutor;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory;->ooAdListenerExecutorConstructor:Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory$OOAdListenerExecutorConstructor;

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdListenerExecutorFactory;->getLoggerFactory()Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory$OOAdListenerExecutorConstructor;->createAdListenerExecutor(Lcom/amazon/device/ads/AdListener;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)Lcom/amazon/device/ads/AdListenerExecutor;

    move-result-object v0

    .line 51
    instance-of p1, p1, Lcom/amazon/device/ads/AmazonOOAdListener;

    if-eqz p1, :cond_1

    .line 53
    invoke-direct {p0, v0}, Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory;->createAdEventCommand(Lcom/amazon/device/ads/AdListenerExecutor;)V

    .line 54
    invoke-direct {p0, v0}, Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory;->createAdReceivedCommand(Lcom/amazon/device/ads/AdListenerExecutor;)V

    .line 55
    invoke-direct {p0, v0}, Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory;->createSpecialUrlClickedCommand(Lcom/amazon/device/ads/AdListenerExecutor;)V

    :cond_1
    return-object v0
.end method

.method private createSpecialUrlClickedCommand(Lcom/amazon/device/ads/AdListenerExecutor;)V
    .locals 1

    .line 101
    new-instance v0, Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory$3;

    invoke-direct {v0, p0, p1}, Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory$3;-><init>(Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory;Lcom/amazon/device/ads/AdListenerExecutor;)V

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/AdListenerExecutor;->setOnSpecialUrlClickedCommand(Lcom/amazon/device/ads/OnSpecialUrlClickedCommand;)V

    return-void
.end method


# virtual methods
.method public createAdListenerExecutor(Lcom/amazon/device/ads/AdListener;)Lcom/amazon/device/ads/AdListenerExecutor;
    .locals 4

    .line 28
    iget-object v0, p0, Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory;->settings:Lcom/amazon/device/ads/Settings;

    const-class v1, Lcom/amazon/device/ads/AmazonOOAdListener;

    const-string v2, "amazonooadlistener"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/amazon/device/ads/Settings;->getObject(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/AmazonOOAdListener;

    .line 29
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory;->createIndividualAdListenerExecutor(Lcom/amazon/device/ads/AdListener;)Lcom/amazon/device/ads/AdListenerExecutor;

    move-result-object p1

    .line 30
    invoke-direct {p0, v0}, Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory;->createIndividualAdListenerExecutor(Lcom/amazon/device/ads/AdListener;)Lcom/amazon/device/ads/AdListenerExecutor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    new-instance v1, Lcom/amazon/device/ads/CompositeAdListenerExecutor;

    new-instance v2, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v2}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    invoke-direct {v1, v2}, Lcom/amazon/device/ads/CompositeAdListenerExecutor;-><init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V

    .line 35
    invoke-virtual {v1, p1}, Lcom/amazon/device/ads/CompositeAdListenerExecutor;->addAdListenerExecutor(Lcom/amazon/device/ads/AdListenerExecutor;)V

    .line 36
    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/CompositeAdListenerExecutor;->addAdListenerExecutor(Lcom/amazon/device/ads/AdListenerExecutor;)V

    return-object v1

    :cond_0
    return-object p1
.end method
