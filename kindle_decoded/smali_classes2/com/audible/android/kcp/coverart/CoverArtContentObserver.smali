.class public Lcom/audible/android/kcp/coverart/CoverArtContentObserver;
.super Landroid/database/ContentObserver;
.source "CoverArtContentObserver.java"


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final mCoverArtCallBacks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/audible/android/kcp/coverart/CoverArtCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private final mCoverArtManager:Lcom/audible/android/kcp/coverart/CoverArtManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/android/kcp/coverart/CoverArtContentObserver;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/android/kcp/coverart/CoverArtContentObserver;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method constructor <init>(Landroid/os/Handler;Lcom/audible/android/kcp/coverart/CoverArtManager;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Lcom/audible/android/kcp/coverart/CoverArtManager;",
            "Ljava/util/Collection<",
            "Lcom/audible/android/kcp/coverart/CoverArtCallBack;",
            ">;)V"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 79
    iput-object p2, p0, Lcom/audible/android/kcp/coverart/CoverArtContentObserver;->mCoverArtManager:Lcom/audible/android/kcp/coverart/CoverArtManager;

    .line 80
    iput-object p3, p0, Lcom/audible/android/kcp/coverart/CoverArtContentObserver;->mCoverArtCallBacks:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(Lcom/audible/android/kcp/coverart/CoverArtManager;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/android/kcp/coverart/CoverArtManager;",
            "Ljava/util/Collection<",
            "Lcom/audible/android/kcp/coverart/CoverArtCallBack;",
            ">;)V"
        }
    .end annotation

    .line 65
    invoke-static {}, Lcom/audible/android/kcp/coverart/CoverArtContentObserver;->createWorkerHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/audible/android/kcp/coverart/CoverArtContentObserver;-><init>(Landroid/os/Handler;Lcom/audible/android/kcp/coverart/CoverArtManager;Ljava/util/Collection;)V

    return-void
.end method

.method private static createWorkerHandler()Landroid/os/Handler;
    .locals 2

    .line 52
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CoverArtContentObserver"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 54
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v1
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-virtual {p0, p1, v0}, Lcom/audible/android/kcp/coverart/CoverArtContentObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 6

    .line 108
    :try_start_0
    iget-object p1, p0, Lcom/audible/android/kcp/coverart/CoverArtContentObserver;->mCoverArtCallBacks:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/audible/android/kcp/coverart/CoverArtCallBack;

    .line 109
    invoke-virtual {p2}, Lcom/audible/android/kcp/coverart/CoverArtCallBack;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    .line 110
    invoke-virtual {p2}, Lcom/audible/android/kcp/coverart/CoverArtCallBack;->getCoverArtType()Lcom/audible/mobile/audio/metadata/CoverArtType;

    move-result-object v1

    .line 112
    sget-object v2, Lcom/audible/android/kcp/coverart/CoverArtContentObserver;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v3, "Checking Asin [%s] CoverArtType [%s]"

    invoke-interface {v0}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Lcom/audible/mobile/audio/metadata/CoverArtType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 113
    iget-object v2, p0, Lcom/audible/android/kcp/coverart/CoverArtContentObserver;->mCoverArtManager:Lcom/audible/android/kcp/coverart/CoverArtManager;

    invoke-interface {v2, v0, v1}, Lcom/audible/android/kcp/coverart/CoverArtManager;->getCoverArtStorageLocation(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/audio/metadata/CoverArtType;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p2, v0}, Lcom/audible/android/kcp/coverart/CoverArtCallBack;->onCoverArtAvailable(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 119
    sget-object p2, Lcom/audible/android/kcp/coverart/CoverArtContentObserver;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Caught ConcurrentModificationException while iterating the callbacks"

    invoke-interface {p2, v0, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
