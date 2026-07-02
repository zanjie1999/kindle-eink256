.class public final Lcom/audible/hushpuppy/controller/DelayRequestHandler;
.super Ljava/lang/Object;
.source "DelayRequestHandler.java"

# interfaces
.implements Lcom/audible/hushpuppy/controller/IDelayRequestHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/hushpuppy/controller/DelayRequestHandler$PurchaseRequestRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/audible/hushpuppy/controller/IDelayRequestHandler<",
        "Lcom/audible/mobile/domain/Asin;",
        "Lcom/audible/hushpuppy/PurchaseAudioModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final asinToRunnableMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/audible/mobile/domain/Asin;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final eventBus:Lde/greenrobot/event/EventBus;

.field private final executeDelayedAudioPurchaseHandleThread:Landroid/os/HandlerThread;

.field private final handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/controller/DelayRequestHandler;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/controller/DelayRequestHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lde/greenrobot/event/EventBus;)V
    .locals 2

    .line 52
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ExecuteDelayedAudioPurchaseHandleThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/audible/hushpuppy/controller/DelayRequestHandler;-><init>(Lde/greenrobot/event/EventBus;Landroid/os/HandlerThread;)V

    return-void
.end method

.method protected constructor <init>(Lde/greenrobot/event/EventBus;Landroid/os/HandlerThread;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/audible/hushpuppy/controller/DelayRequestHandler;->asinToRunnableMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 63
    iput-object p2, p0, Lcom/audible/hushpuppy/controller/DelayRequestHandler;->executeDelayedAudioPurchaseHandleThread:Landroid/os/HandlerThread;

    .line 64
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 65
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/DelayRequestHandler;->eventBus:Lde/greenrobot/event/EventBus;

    .line 66
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/audible/hushpuppy/controller/DelayRequestHandler;->executeDelayedAudioPurchaseHandleThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/audible/hushpuppy/controller/DelayRequestHandler;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/audible/hushpuppy/controller/DelayRequestHandler;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/audible/hushpuppy/controller/DelayRequestHandler;->asinToRunnableMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method


# virtual methods
.method public dequeueRequest(Lcom/audible/mobile/domain/Asin;)Lcom/audible/hushpuppy/PurchaseAudioModel;
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/DelayRequestHandler;->asinToRunnableMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    sget-object p1, Lcom/audible/hushpuppy/controller/DelayRequestHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Audiobook purchase request did not exist in the queue"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/DelayRequestHandler;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/DelayRequestHandler;->asinToRunnableMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 92
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/DelayRequestHandler;->asinToRunnableMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/hushpuppy/controller/DelayRequestHandler$PurchaseRequestRunnable;

    .line 93
    invoke-virtual {p1}, Lcom/audible/hushpuppy/controller/DelayRequestHandler$PurchaseRequestRunnable;->getPurchaseAudioModel()Lcom/audible/hushpuppy/PurchaseAudioModel;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dequeueRequest(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 27
    check-cast p1, Lcom/audible/mobile/domain/Asin;

    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/controller/DelayRequestHandler;->dequeueRequest(Lcom/audible/mobile/domain/Asin;)Lcom/audible/hushpuppy/PurchaseAudioModel;

    move-result-object p1

    return-object p1
.end method

.method public enqueueRequest(Lcom/audible/hushpuppy/PurchaseAudioModel;Lcom/audible/hushpuppy/controller/IExecutableCommand;J)Z
    .locals 2

    .line 72
    new-instance v0, Lcom/audible/hushpuppy/controller/DelayRequestHandler$PurchaseRequestRunnable;

    invoke-direct {v0, p0, p1, p2}, Lcom/audible/hushpuppy/controller/DelayRequestHandler$PurchaseRequestRunnable;-><init>(Lcom/audible/hushpuppy/controller/DelayRequestHandler;Lcom/audible/hushpuppy/PurchaseAudioModel;Lcom/audible/hushpuppy/controller/IExecutableCommand;)V

    .line 73
    iget-object p2, p0, Lcom/audible/hushpuppy/controller/DelayRequestHandler;->asinToRunnableMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/PurchaseAudioModel;->getEbookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object p2, Lcom/audible/hushpuppy/controller/DelayRequestHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/PurchaseAudioModel;->getEbookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    const-string v1, "Audiobook purchase request queued successfully for Ebook Asin: %s"

    invoke-interface {p2, v1, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/DelayRequestHandler;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic enqueueRequest(Ljava/lang/Object;Lcom/audible/hushpuppy/controller/IExecutableCommand;J)Z
    .locals 0

    .line 27
    check-cast p1, Lcom/audible/hushpuppy/PurchaseAudioModel;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/audible/hushpuppy/controller/DelayRequestHandler;->enqueueRequest(Lcom/audible/hushpuppy/PurchaseAudioModel;Lcom/audible/hushpuppy/controller/IExecutableCommand;J)Z

    move-result p1

    return p1
.end method

.method public isRequestQueued(Lcom/audible/mobile/domain/Asin;)Z
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/DelayRequestHandler;->asinToRunnableMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isRequestQueued(Ljava/lang/Object;)Z
    .locals 0

    .line 27
    check-cast p1, Lcom/audible/mobile/domain/Asin;

    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/controller/DelayRequestHandler;->isRequestQueued(Lcom/audible/mobile/domain/Asin;)Z

    move-result p1

    return p1
.end method
