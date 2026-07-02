.class public Lcom/audible/hushpuppy/controller/UpsellTimeoutController;
.super Ljava/lang/Object;
.source "UpsellTimeoutController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/hushpuppy/controller/UpsellTimeoutController$PurchaseTimeoutReached;
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

.field private static final PURCHASE_TIMEOUT:Lcom/audible/mobile/domain/Time;


# instance fields
.field private final asin:Lcom/audible/mobile/domain/Asin;

.field private final eventBus:Lde/greenrobot/event/EventBus;

.field private final threadForPurchaseTimeOut:Landroid/os/HandlerThread;

.field private final timeOutCallback:Lcom/audible/hushpuppy/model/ITimeOutCallback;

.field private timeOutHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 35
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/controller/UpsellTimeoutController;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/controller/UpsellTimeoutController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    .line 40
    new-instance v0, Lcom/audible/mobile/domain/ImmutableTimeImpl;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/audible/mobile/domain/ImmutableTimeImpl;-><init>(JLjava/util/concurrent/TimeUnit;)V

    sput-object v0, Lcom/audible/hushpuppy/controller/UpsellTimeoutController;->PURCHASE_TIMEOUT:Lcom/audible/mobile/domain/Time;

    return-void
.end method

.method public constructor <init>(Lcom/audible/hushpuppy/model/ITimeOutCallback;Lde/greenrobot/event/EventBus;Lcom/audible/mobile/domain/Asin;)V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ThreadForPurchaseTimeOut"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/audible/hushpuppy/controller/UpsellTimeoutController;->threadForPurchaseTimeOut:Landroid/os/HandlerThread;

    .line 74
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 75
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/UpsellTimeoutController;->threadForPurchaseTimeOut:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/audible/hushpuppy/controller/UpsellTimeoutController;->timeOutHandler:Landroid/os/Handler;

    .line 76
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/UpsellTimeoutController;->timeOutCallback:Lcom/audible/hushpuppy/model/ITimeOutCallback;

    .line 77
    iput-object p3, p0, Lcom/audible/hushpuppy/controller/UpsellTimeoutController;->asin:Lcom/audible/mobile/domain/Asin;

    .line 78
    iput-object p2, p0, Lcom/audible/hushpuppy/controller/UpsellTimeoutController;->eventBus:Lde/greenrobot/event/EventBus;

    .line 80
    invoke-virtual {p2, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100()Lcom/audible/hushpuppy/common/logging/ILogger;
    .locals 1

    .line 30
    sget-object v0, Lcom/audible/hushpuppy/controller/UpsellTimeoutController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/audible/hushpuppy/controller/UpsellTimeoutController;)Lcom/audible/mobile/domain/Asin;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/audible/hushpuppy/controller/UpsellTimeoutController;->asin:Lcom/audible/mobile/domain/Asin;

    return-object p0
.end method

.method static synthetic access$300(Lcom/audible/hushpuppy/controller/UpsellTimeoutController;)Lcom/audible/hushpuppy/model/ITimeOutCallback;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/audible/hushpuppy/controller/UpsellTimeoutController;->timeOutCallback:Lcom/audible/hushpuppy/model/ITimeOutCallback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/audible/hushpuppy/controller/UpsellTimeoutController;)Lde/greenrobot/event/EventBus;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/audible/hushpuppy/controller/UpsellTimeoutController;->eventBus:Lde/greenrobot/event/EventBus;

    return-object p0
.end method


# virtual methods
.method public final cancelPurchaseTimeoutTimer()V
    .locals 2

    .line 98
    sget-object v0, Lcom/audible/hushpuppy/controller/UpsellTimeoutController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Canceling Purchase Processing timeout"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/UpsellTimeoutController;->timeOutHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 100
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/UpsellTimeoutController;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public final onEventAsync(Lcom/audible/hushpuppy/common/event/relationship/RelationshipModifiedInStorageEvent;)V
    .locals 1

    .line 128
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/relationship/RelationshipModifiedInStorageEvent;->getNewRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/relationship/RelationshipModifiedInStorageEvent;->getNewRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object p1

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object p1

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/UpsellTimeoutController;->asin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    sget-object p1, Lcom/audible/hushpuppy/controller/UpsellTimeoutController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Received RelationshipModifiedInStorageEvent"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/audible/hushpuppy/controller/UpsellTimeoutController;->cancelPurchaseTimeoutTimer()V

    return-void

    .line 129
    :cond_1
    :goto_0
    sget-object p1, Lcom/audible/hushpuppy/controller/UpsellTimeoutController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Received RelationshipModifiedInStorageEvent - asin is null or different"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final onEventAsync(Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent;)V
    .locals 1

    .line 111
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/common/AudiobookEvent;->getAudiobookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/common/AudiobookEvent;->getAudiobookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/UpsellTimeoutController;->asin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    sget-object p1, Lcom/audible/hushpuppy/controller/UpsellTimeoutController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Received PurchaseFailedEvent"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/audible/hushpuppy/controller/UpsellTimeoutController;->cancelPurchaseTimeoutTimer()V

    return-void

    .line 112
    :cond_1
    :goto_0
    sget-object p1, Lcom/audible/hushpuppy/controller/UpsellTimeoutController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Received PurchaseFailedEvent - asin is null or different"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    return-void
.end method

.method public final startPurchaseTimeoutTimer()V
    .locals 5

    .line 88
    sget-object v0, Lcom/audible/hushpuppy/controller/UpsellTimeoutController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Starting Purchase Processing timeout"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/UpsellTimeoutController;->timeOutHandler:Landroid/os/Handler;

    new-instance v1, Lcom/audible/hushpuppy/controller/UpsellTimeoutController$PurchaseTimeoutReached;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/audible/hushpuppy/controller/UpsellTimeoutController$PurchaseTimeoutReached;-><init>(Lcom/audible/hushpuppy/controller/UpsellTimeoutController;Lcom/audible/hushpuppy/controller/UpsellTimeoutController$1;)V

    sget-object v2, Lcom/audible/hushpuppy/controller/UpsellTimeoutController;->PURCHASE_TIMEOUT:Lcom/audible/mobile/domain/Time;

    invoke-interface {v2}, Lcom/audible/mobile/domain/Time;->getUnit()Ljava/util/concurrent/TimeUnit;

    move-result-object v2

    sget-object v3, Lcom/audible/hushpuppy/controller/UpsellTimeoutController;->PURCHASE_TIMEOUT:Lcom/audible/mobile/domain/Time;

    invoke-interface {v3}, Lcom/audible/mobile/domain/Time;->getAmount()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 90
    sget-object v0, Lcom/audible/hushpuppy/controller/UpsellTimeoutController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Purchase timeout timer message started for upsell."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return-void
.end method
