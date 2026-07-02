.class public Lcom/audible/android/kcp/sync/HushpuppySynchronizationManager;
.super Ljava/lang/Object;
.source "HushpuppySynchronizationManager.java"

# interfaces
.implements Lcom/audible/android/kcp/sync/SynchronizationManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/android/kcp/sync/HushpuppySynchronizationManager$LocalAudiobookFileFoundEventHandler;
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private volatile maxDurationAudioPosition:I

.field private volatile syncData:Lcom/audible/hushpuppy/sync/ISyncData;

.field private volatile syncedAudiobookAsin:Lcom/audible/mobile/domain/Asin;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/android/kcp/sync/HushpuppySynchronizationManager;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/android/kcp/sync/HushpuppySynchronizationManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->eventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/audible/android/kcp/sync/HushpuppySynchronizationManager;-><init>(Lde/greenrobot/event/EventBus;)V

    return-void
.end method

.method protected constructor <init>(Lde/greenrobot/event/EventBus;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/audible/android/kcp/sync/HushpuppySynchronizationManager$LocalAudiobookFileFoundEventHandler;

    invoke-direct {v0, p0}, Lcom/audible/android/kcp/sync/HushpuppySynchronizationManager$LocalAudiobookFileFoundEventHandler;-><init>(Lcom/audible/android/kcp/sync/HushpuppySynchronizationManager;)V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000()Lcom/audible/hushpuppy/common/logging/ILogger;
    .locals 1

    .line 19
    sget-object v0, Lcom/audible/android/kcp/sync/HushpuppySynchronizationManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/audible/android/kcp/sync/HushpuppySynchronizationManager;)Lcom/audible/hushpuppy/sync/ISyncData;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/audible/android/kcp/sync/HushpuppySynchronizationManager;->syncData:Lcom/audible/hushpuppy/sync/ISyncData;

    return-object p0
.end method

.method static synthetic access$102(Lcom/audible/android/kcp/sync/HushpuppySynchronizationManager;Lcom/audible/hushpuppy/sync/ISyncData;)Lcom/audible/hushpuppy/sync/ISyncData;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/audible/android/kcp/sync/HushpuppySynchronizationManager;->syncData:Lcom/audible/hushpuppy/sync/ISyncData;

    return-object p1
.end method

.method static synthetic access$202(Lcom/audible/android/kcp/sync/HushpuppySynchronizationManager;I)I
    .locals 0

    .line 19
    iput p1, p0, Lcom/audible/android/kcp/sync/HushpuppySynchronizationManager;->maxDurationAudioPosition:I

    return p1
.end method

.method static synthetic access$302(Lcom/audible/android/kcp/sync/HushpuppySynchronizationManager;Lcom/audible/mobile/domain/Asin;)Lcom/audible/mobile/domain/Asin;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/audible/android/kcp/sync/HushpuppySynchronizationManager;->syncedAudiobookAsin:Lcom/audible/mobile/domain/Asin;

    return-object p1
.end method


# virtual methods
.method public getEBookPositionFromAudiobookPosition(I)Ljava/lang/Integer;
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/audible/android/kcp/sync/HushpuppySynchronizationManager;->syncData:Lcom/audible/hushpuppy/sync/ISyncData;

    iget v1, p0, Lcom/audible/android/kcp/sync/HushpuppySynchronizationManager;->maxDurationAudioPosition:I

    invoke-static {v0, p1, v1}, Lcom/audible/hushpuppy/sync/SyncDataUtils;->getEBookPositionFromAudioPosition(Lcom/audible/hushpuppy/sync/ISyncData;II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
