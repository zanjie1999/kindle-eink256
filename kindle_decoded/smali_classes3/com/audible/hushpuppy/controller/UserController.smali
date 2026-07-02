.class public final Lcom/audible/hushpuppy/controller/UserController;
.super Lcom/audible/hushpuppy/controller/AbstractController;
.source "UserController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/hushpuppy/controller/UserController$ConnectionChangeBroadcastReceiver;,
        Lcom/audible/hushpuppy/controller/UserController$GetToaStatusRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/audible/hushpuppy/controller/AbstractController<",
        "Lcom/audible/hushpuppy/model/write/UserModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

.field private static final SHOULD_RUNNABLE_THROW_EXCEPTION:Z = false

.field private static final TOA_ELIGIBILITY_CHECK_DELAY_TIME:I = 0xbb8

.field private static final TOA_ELIGIBLE:Ljava/lang/String; = "ProspectEligible"

.field private static final TOA_INELIGIBLE:Ljava/lang/String; = "ProspectIneligible"

.field private static final TOA_INELIGIBLE_REDEEMED:Ljava/lang/String; = "ProspectIneligibleRedeemed"


# instance fields
.field private final client:Lcom/audible/hushpuppy/service/user/ICustomerStatusDownloadClient;

.field private final connectionChangeBroadcastReceiver:Lcom/audible/hushpuppy/controller/UserController$ConnectionChangeBroadcastReceiver;

.field private final context:Landroid/content/Context;

.field private final debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

.field private final getToaStatusRunnable:Ljava/lang/Runnable;

.field private final handlerDebouncer:Lcom/audible/hushpuppy/common/system/HandlerDebouncer;

.field private final kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final toaHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/controller/UserController;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/controller/UserController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/audible/hushpuppy/model/read/IUserModel;Lde/greenrobot/event/EventBus;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;Lcom/audible/pfm/endpoint/IEndpointFactory;)V
    .locals 8

    .line 112
    new-instance v3, Lcom/audible/hushpuppy/common/system/WorkerThreadHelper;

    const-string v0, "ToaHandlerThread"

    const/16 v1, 0xbb8

    invoke-direct {v3, v0, v1}, Lcom/audible/hushpuppy/common/system/WorkerThreadHelper;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lcom/audible/hushpuppy/service/user/CustomerStatusDownloadClient;

    .line 113
    invoke-virtual {p4}, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;->isReleaseBuild()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {v4, p3, p5, v0}, Lcom/audible/hushpuppy/service/user/CustomerStatusDownloadClient;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/pfm/endpoint/IEndpointFactory;Z)V

    invoke-interface {p3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p4

    move-object v7, p3

    .line 112
    invoke-direct/range {v0 .. v7}, Lcom/audible/hushpuppy/controller/UserController;-><init>(Lcom/audible/hushpuppy/model/read/IUserModel;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/common/system/IWorkerThreadHelper;Lcom/audible/hushpuppy/service/user/ICustomerStatusDownloadClient;Landroid/content/Context;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    return-void
.end method

.method constructor <init>(Lcom/audible/hushpuppy/model/read/IUserModel;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/common/system/IWorkerThreadHelper;Lcom/audible/hushpuppy/service/user/ICustomerStatusDownloadClient;Landroid/content/Context;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 131
    check-cast p1, Lcom/audible/hushpuppy/model/write/UserModel;

    invoke-direct {p0, p1, p2}, Lcom/audible/hushpuppy/controller/AbstractController;-><init>(Ljava/lang/Object;Lde/greenrobot/event/EventBus;)V

    const-string p1, "Handler Factory Cannot be null!"

    .line 132
    invoke-static {p3, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "CustomerStatusDownloadClient cannot be null!"

    .line 133
    invoke-static {p4, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object p1, p4

    check-cast p1, Lcom/audible/hushpuppy/service/user/ICustomerStatusDownloadClient;

    iput-object p1, p0, Lcom/audible/hushpuppy/controller/UserController;->client:Lcom/audible/hushpuppy/service/user/ICustomerStatusDownloadClient;

    const-string p1, "Context cannot be null!"

    .line 134
    invoke-static {p5, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p5, Landroid/content/Context;

    iput-object p5, p0, Lcom/audible/hushpuppy/controller/UserController;->context:Landroid/content/Context;

    const-string p1, "DebugHelper cannot be null"

    .line 135
    invoke-static {p6, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p6, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    iput-object p6, p0, Lcom/audible/hushpuppy/controller/UserController;->debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    const-string p1, "kindleReaderSDK cannot be null"

    .line 136
    invoke-static {p7, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p7, Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iput-object p7, p0, Lcom/audible/hushpuppy/controller/UserController;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 137
    new-instance p1, Lcom/audible/hushpuppy/controller/UserController$GetToaStatusRunnable;

    const/4 p2, 0x0

    const/4 p5, 0x0

    invoke-direct {p1, p0, p4, p2, p5}, Lcom/audible/hushpuppy/controller/UserController$GetToaStatusRunnable;-><init>(Lcom/audible/hushpuppy/controller/UserController;Lcom/audible/hushpuppy/service/user/ICustomerStatusDownloadClient;ZLcom/audible/hushpuppy/controller/UserController$1;)V

    iput-object p1, p0, Lcom/audible/hushpuppy/controller/UserController;->getToaStatusRunnable:Ljava/lang/Runnable;

    .line 138
    new-instance p1, Lcom/audible/hushpuppy/controller/UserController$ConnectionChangeBroadcastReceiver;

    invoke-direct {p1, p0}, Lcom/audible/hushpuppy/controller/UserController$ConnectionChangeBroadcastReceiver;-><init>(Lcom/audible/hushpuppy/controller/UserController;)V

    iput-object p1, p0, Lcom/audible/hushpuppy/controller/UserController;->connectionChangeBroadcastReceiver:Lcom/audible/hushpuppy/controller/UserController$ConnectionChangeBroadcastReceiver;

    .line 139
    invoke-interface {p3}, Lcom/audible/hushpuppy/common/system/IWorkerThreadHelper;->getHandlerForWorkerThread()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/hushpuppy/controller/UserController;->toaHandler:Landroid/os/Handler;

    .line 140
    invoke-interface {p3}, Lcom/audible/hushpuppy/common/system/IWorkerThreadHelper;->getHandlerDebouncerForWorkerThread()Lcom/audible/hushpuppy/common/system/HandlerDebouncer;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/hushpuppy/controller/UserController;->handlerDebouncer:Lcom/audible/hushpuppy/common/system/HandlerDebouncer;

    return-void
.end method

.method static synthetic access$100(Lcom/audible/hushpuppy/controller/UserController;)Landroid/content/Context;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/audible/hushpuppy/controller/UserController;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200()Lcom/audible/hushpuppy/common/logging/ILogger;
    .locals 1

    .line 54
    sget-object v0, Lcom/audible/hushpuppy/controller/UserController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/audible/hushpuppy/controller/UserController;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/UserController;->registerConnectionChangeReceiver()V

    return-void
.end method

.method static synthetic access$400(Lcom/audible/hushpuppy/controller/UserController;Lcom/audible/hushpuppy/service/user/CustomerStatus;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/controller/UserController;->updateToaOfferStatus(Lcom/audible/hushpuppy/service/user/CustomerStatus;)V

    return-void
.end method

.method static synthetic access$600(Lcom/audible/hushpuppy/controller/UserController;)Lcom/audible/hushpuppy/service/user/ICustomerStatusDownloadClient;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/audible/hushpuppy/controller/UserController;->client:Lcom/audible/hushpuppy/service/user/ICustomerStatusDownloadClient;

    return-object p0
.end method

.method static synthetic access$800(Lcom/audible/hushpuppy/controller/UserController;)Landroid/os/Handler;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/audible/hushpuppy/controller/UserController;->toaHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$900(Lcom/audible/hushpuppy/controller/UserController;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/UserController;->unregisterConnectionChangeReceiver()V

    return-void
.end method

.method private registerConnectionChangeReceiver()V
    .locals 3

    .line 298
    sget-object v0, Lcom/audible/hushpuppy/controller/UserController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Registering connection change receiver"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/UserController;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/UserController;->connectionChangeBroadcastReceiver:Lcom/audible/hushpuppy/controller/UserController$ConnectionChangeBroadcastReceiver;

    invoke-virtual {v1}, Lcom/audible/hushpuppy/controller/UserController$ConnectionChangeBroadcastReceiver;->getFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private unregisterConnectionChangeReceiver()V
    .locals 2

    .line 307
    sget-object v0, Lcom/audible/hushpuppy/controller/UserController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "De-Registering connection change receiver"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/UserController;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/UserController;->connectionChangeBroadcastReceiver:Lcom/audible/hushpuppy/controller/UserController$ConnectionChangeBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private updateToaOfferStatus(Lcom/audible/hushpuppy/service/user/CustomerStatus;)V
    .locals 5

    if-eqz p1, :cond_5

    .line 257
    invoke-virtual {p1}, Lcom/audible/hushpuppy/service/user/CustomerStatus;->getCustomerProspectBenefit()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/mobile/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 263
    :cond_0
    invoke-virtual {p1}, Lcom/audible/hushpuppy/service/user/CustomerStatus;->getCustomerProspectBenefit()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ProspectIneligible"

    .line 265
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/UserModel;

    sget-object v1, Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;->INELIGIBLE:Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/model/write/UserModel;->setToaOfferStatus(Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;)V

    .line 267
    sget-object v0, Lcom/audible/hushpuppy/controller/UserController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating TOA status as INELIGIBLE as TOA eligibility is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "ProspectIneligibleRedeemed"

    .line 268
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 269
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/UserModel;

    sget-object v1, Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;->INELIGIBLE_REDEEMED:Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/model/write/UserModel;->setToaOfferStatus(Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;)V

    .line 270
    sget-object v0, Lcom/audible/hushpuppy/controller/UserController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating TOA status as INELIGIBLE_REDEEMED as TOA eligibility is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "ProspectEligible"

    .line 271
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 272
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/UserModel;

    sget-object v1, Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;->ELIGIBLE:Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/model/write/UserModel;->setToaOfferStatus(Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;)V

    .line 273
    sget-object v0, Lcom/audible/hushpuppy/controller/UserController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating TOA status as ELIGIBLE as TOA eligibility is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 275
    :cond_3
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/UserModel;

    sget-object v1, Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;->UNKNOWN:Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/model/write/UserModel;->setToaOfferStatus(Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;)V

    .line 276
    sget-object v0, Lcom/audible/hushpuppy/controller/UserController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating TOA status as UNKNOWN as TOA eligibility is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    .line 279
    :goto_0
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/UserController;->debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;->isReleaseBuild()Z

    move-result p1

    if-nez p1, :cond_4

    .line 280
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 281
    new-instance v0, Lcom/audible/hushpuppy/controller/UserController$1;

    invoke-direct {v0, p0}, Lcom/audible/hushpuppy/controller/UserController$1;-><init>(Lcom/audible/hushpuppy/controller/UserController;)V

    .line 288
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void

    .line 258
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast p1, Lcom/audible/hushpuppy/model/write/UserModel;

    sget-object v0, Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;->UNKNOWN:Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;

    invoke-virtual {p1, v0}, Lcom/audible/hushpuppy/model/write/UserModel;->setToaOfferStatus(Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;)V

    .line 259
    sget-object p1, Lcom/audible/hushpuppy/controller/UserController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Updating TOA status as UNKNOWN as status/ TOA eligibility is NULL/EMPTY!"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public initializeUserToaStatus()V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/UserController;->debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/UserController;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;->isToaEnabled(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    sget-object v0, Lcom/audible/hushpuppy/controller/UserController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Getting TOA offer status for current user."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/UserController;->handlerDebouncer:Lcom/audible/hushpuppy/common/system/HandlerDebouncer;

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/UserController;->getToaStatusRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/system/AbstractDebouncer;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 152
    :cond_0
    sget-object v0, Lcom/audible/hushpuppy/controller/UserController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "TOA feature is NOT ENABLED! TOA Status will be UNKNOWN."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;)V
    .locals 2

    .line 165
    sget-object v0, Lcom/audible/hushpuppy/controller/UserController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Received %s"

    invoke-interface {v0, v1, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    .line 167
    sget-object v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->USER_DEREGISTERED:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;->getProperty()Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 168
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast p1, Lcom/audible/hushpuppy/model/write/UserModel;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/model/write/UserModel;->reset()V

    :cond_0
    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/relationship/RelationshipModifiedInStorageEvent;)V
    .locals 2

    .line 229
    sget-object v0, Lcom/audible/hushpuppy/controller/UserController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Received %s"

    invoke-interface {v0, v1, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    .line 231
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/relationship/RelationshipModifiedInStorageEvent;->getNewRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 233
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->hasFullAudiobook()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 234
    sget-object p1, Lcom/audible/hushpuppy/controller/UserController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "New relationship has full audio book"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 235
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast p1, Lcom/audible/hushpuppy/model/write/UserModel;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/model/write/UserModel;->isToaOfferEligible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 236
    sget-object p1, Lcom/audible/hushpuppy/controller/UserController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Current user is eligible for TOA offer and we received relationship update with full audiobook, So rechecking TOA status"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Lcom/audible/hushpuppy/controller/UserController;->initializeUserToaStatus()V

    return-void

    .line 240
    :cond_0
    sget-object p1, Lcom/audible/hushpuppy/controller/UserController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "TOA status is not ELIGIBLE to recheck the status!"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return-void

    .line 244
    :cond_1
    sget-object p1, Lcom/audible/hushpuppy/controller/UserController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Either new relationship received is null or doesn\'t have full audiobook. So ignoring the event!"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/upsell/PurchaseCompletedEvent;)V
    .locals 2

    .line 181
    sget-object v0, Lcom/audible/hushpuppy/controller/UserController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Received %s"

    invoke-interface {v0, v1, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    .line 183
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/upsell/PurchaseCompletedEvent;->isToaRedeem()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/audible/hushpuppy/controller/UserController;->initializeUserToaStatus()V

    :cond_0
    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent;)V
    .locals 2

    .line 200
    sget-object v0, Lcom/audible/hushpuppy/controller/UserController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Received %s"

    invoke-interface {v0, v1, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    .line 202
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent;->isToaRedeem()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;->BUSINESS_LOGIC_FAILURE:Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent;->getReason()Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/audible/hushpuppy/controller/UserController;->initializeUserToaStatus()V

    :cond_0
    return-void
.end method

.method public onEventAsync(Lcom/audible/pfm/event/PfmEnabledAndUpdatedEvent;)V
    .locals 1

    .line 215
    sget-object p1, Lcom/audible/hushpuppy/controller/UserController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Received PfmEnabledAndUpdatedEvent"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    .line 216
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast p1, Lcom/audible/hushpuppy/model/write/UserModel;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/model/write/UserModel;->getToaOfferStatus()Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;

    move-result-object p1

    sget-object v0, Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;->UNKNOWN:Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;

    if-ne p1, v0, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/audible/hushpuppy/controller/UserController;->initializeUserToaStatus()V

    :cond_0
    return-void
.end method
