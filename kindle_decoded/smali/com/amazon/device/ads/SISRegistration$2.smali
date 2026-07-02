.class Lcom/amazon/device/ads/SISRegistration$2;
.super Ljava/lang/Object;
.source "SISRegistration.java"

# interfaces
.implements Lcom/amazon/device/ads/Configuration$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/SISRegistration;->waitForConfigurationThenBeginRegistration()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/SISRegistration;

.field final synthetic val$canRegister:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/SISRegistration;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/amazon/device/ads/SISRegistration$2;->this$0:Lcom/amazon/device/ads/SISRegistration;

    iput-object p2, p0, Lcom/amazon/device/ads/SISRegistration$2;->val$canRegister:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/amazon/device/ads/SISRegistration$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationFailure()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/amazon/device/ads/SISRegistration$2;->this$0:Lcom/amazon/device/ads/SISRegistration;

    invoke-static {v0}, Lcom/amazon/device/ads/SISRegistration;->access$000(Lcom/amazon/device/ads/SISRegistration;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    const-string v1, "Configuration fetching failed so device registration will not proceed."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/amazon/device/ads/SISRegistration$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onConfigurationReady()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/amazon/device/ads/SISRegistration$2;->val$canRegister:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 134
    iget-object v0, p0, Lcom/amazon/device/ads/SISRegistration$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
