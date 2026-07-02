.class final Lcom/audible/hushpuppy/controller/UserController$GetToaStatusRunnable;
.super Lcom/audible/hushpuppy/common/runnable/AbstractSafeRunnable;
.source "UserController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/controller/UserController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GetToaStatusRunnable"
.end annotation


# instance fields
.field private final client:Lcom/audible/hushpuppy/service/user/ICustomerStatusDownloadClient;

.field final synthetic this$0:Lcom/audible/hushpuppy/controller/UserController;


# direct methods
.method private constructor <init>(Lcom/audible/hushpuppy/controller/UserController;Lcom/audible/hushpuppy/service/user/ICustomerStatusDownloadClient;Z)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/UserController$GetToaStatusRunnable;->this$0:Lcom/audible/hushpuppy/controller/UserController;

    .line 330
    invoke-direct {p0, p3}, Lcom/audible/hushpuppy/common/runnable/AbstractSafeRunnable;-><init>(Z)V

    .line 331
    iput-object p2, p0, Lcom/audible/hushpuppy/controller/UserController$GetToaStatusRunnable;->client:Lcom/audible/hushpuppy/service/user/ICustomerStatusDownloadClient;

    return-void
.end method

.method synthetic constructor <init>(Lcom/audible/hushpuppy/controller/UserController;Lcom/audible/hushpuppy/service/user/ICustomerStatusDownloadClient;ZLcom/audible/hushpuppy/controller/UserController$1;)V
    .locals 0

    .line 316
    invoke-direct {p0, p1, p2, p3}, Lcom/audible/hushpuppy/controller/UserController$GetToaStatusRunnable;-><init>(Lcom/audible/hushpuppy/controller/UserController;Lcom/audible/hushpuppy/service/user/ICustomerStatusDownloadClient;Z)V

    return-void
.end method


# virtual methods
.method protected safeRun()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 337
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/UserController$GetToaStatusRunnable;->this$0:Lcom/audible/hushpuppy/controller/UserController;

    invoke-static {v0}, Lcom/audible/hushpuppy/controller/UserController;->access$100(Lcom/audible/hushpuppy/controller/UserController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/hushpuppy/common/system/AndroidUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 338
    invoke-static {}, Lcom/audible/hushpuppy/controller/UserController;->access$200()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    const-string v1, "Network not connected. Registering Connection change receiver"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/UserController$GetToaStatusRunnable;->this$0:Lcom/audible/hushpuppy/controller/UserController;

    invoke-static {v0}, Lcom/audible/hushpuppy/controller/UserController;->access$300(Lcom/audible/hushpuppy/controller/UserController;)V

    return-void

    .line 342
    :cond_0
    invoke-static {}, Lcom/audible/hushpuppy/controller/UserController;->access$200()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    const-string v1, "Calling client to get current user\'s TOA status"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/UserController$GetToaStatusRunnable;->client:Lcom/audible/hushpuppy/service/user/ICustomerStatusDownloadClient;

    invoke-interface {v0}, Lcom/audible/hushpuppy/service/user/ICustomerStatusDownloadClient;->getCustomerToaEligibility()Lcom/audible/hushpuppy/service/user/CustomerStatus;

    move-result-object v0

    .line 344
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/UserController$GetToaStatusRunnable;->this$0:Lcom/audible/hushpuppy/controller/UserController;

    invoke-static {v1, v0}, Lcom/audible/hushpuppy/controller/UserController;->access$400(Lcom/audible/hushpuppy/controller/UserController;Lcom/audible/hushpuppy/service/user/CustomerStatus;)V

    return-void
.end method
