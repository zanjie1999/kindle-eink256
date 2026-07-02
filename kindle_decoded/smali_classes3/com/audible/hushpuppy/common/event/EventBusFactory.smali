.class public final Lcom/audible/hushpuppy/common/event/EventBusFactory;
.super Ljava/lang/Object;
.source "EventBusFactory.java"


# static fields
.field private static final INSTANCE:Lcom/audible/hushpuppy/common/event/EventBusFactory;


# instance fields
.field private final eventBus:Lde/greenrobot/event/EventBus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/audible/hushpuppy/common/event/EventBusFactory;

    invoke-direct {v0}, Lcom/audible/hushpuppy/common/event/EventBusFactory;-><init>()V

    sput-object v0, Lcom/audible/hushpuppy/common/event/EventBusFactory;->INSTANCE:Lcom/audible/hushpuppy/common/event/EventBusFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lde/greenrobot/event/EventBus;->builder()Lde/greenrobot/event/EventBusBuilder;

    move-result-object v0

    const/4 v1, 0x0

    .line 32
    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBusBuilder;->sendSubscriberExceptionEvent(Z)Lde/greenrobot/event/EventBusBuilder;

    .line 33
    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBusBuilder;->sendNoSubscriberEvent(Z)Lde/greenrobot/event/EventBusBuilder;

    .line 34
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBusBuilder;->executorService(Ljava/util/concurrent/ExecutorService;)Lde/greenrobot/event/EventBusBuilder;

    .line 35
    invoke-virtual {v0}, Lde/greenrobot/event/EventBusBuilder;->build()Lde/greenrobot/event/EventBus;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/common/event/EventBusFactory;->eventBus:Lde/greenrobot/event/EventBus;

    return-void
.end method

.method public static getInstance()Lcom/audible/hushpuppy/common/event/EventBusFactory;
    .locals 1

    .line 45
    sget-object v0, Lcom/audible/hushpuppy/common/event/EventBusFactory;->INSTANCE:Lcom/audible/hushpuppy/common/event/EventBusFactory;

    return-object v0
.end method


# virtual methods
.method public getEventBus()Lde/greenrobot/event/EventBus;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/audible/hushpuppy/common/event/EventBusFactory;->eventBus:Lde/greenrobot/event/EventBus;

    return-object v0
.end method
