.class Lcom/audible/hushpuppy/controller/UpsellTimeoutController$PurchaseTimeoutReached;
.super Ljava/lang/Object;
.source "UpsellTimeoutController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/controller/UpsellTimeoutController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PurchaseTimeoutReached"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/controller/UpsellTimeoutController;


# direct methods
.method private constructor <init>(Lcom/audible/hushpuppy/controller/UpsellTimeoutController;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/UpsellTimeoutController$PurchaseTimeoutReached;->this$0:Lcom/audible/hushpuppy/controller/UpsellTimeoutController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/audible/hushpuppy/controller/UpsellTimeoutController;Lcom/audible/hushpuppy/controller/UpsellTimeoutController$1;)V
    .locals 0

    .line 161
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/controller/UpsellTimeoutController$PurchaseTimeoutReached;-><init>(Lcom/audible/hushpuppy/controller/UpsellTimeoutController;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 165
    invoke-static {}, Lcom/audible/hushpuppy/controller/UpsellTimeoutController;->access$100()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    const-string v1, "Purchase Processing timeout condition reached."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/UpsellTimeoutController$PurchaseTimeoutReached;->this$0:Lcom/audible/hushpuppy/controller/UpsellTimeoutController;

    invoke-static {v0}, Lcom/audible/hushpuppy/controller/UpsellTimeoutController;->access$300(Lcom/audible/hushpuppy/controller/UpsellTimeoutController;)Lcom/audible/hushpuppy/model/ITimeOutCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/UpsellTimeoutController$PurchaseTimeoutReached;->this$0:Lcom/audible/hushpuppy/controller/UpsellTimeoutController;

    invoke-static {v1}, Lcom/audible/hushpuppy/controller/UpsellTimeoutController;->access$200(Lcom/audible/hushpuppy/controller/UpsellTimeoutController;)Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    sget-object v2, Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;->PURCHASE:Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;

    invoke-interface {v0, v1, v2}, Lcom/audible/hushpuppy/model/ITimeOutCallback;->timeOut(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 167
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/UpsellTimeoutController$PurchaseTimeoutReached;->this$0:Lcom/audible/hushpuppy/controller/UpsellTimeoutController;

    invoke-static {v0}, Lcom/audible/hushpuppy/controller/UpsellTimeoutController;->access$400(Lcom/audible/hushpuppy/controller/UpsellTimeoutController;)Lde/greenrobot/event/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/UpsellTimeoutController$PurchaseTimeoutReached;->this$0:Lcom/audible/hushpuppy/controller/UpsellTimeoutController;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method
