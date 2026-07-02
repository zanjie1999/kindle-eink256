.class public abstract Lcom/audible/mobile/metadata/BaseCoverArtProvider;
.super Ljava/lang/Object;
.source "BaseCoverArtProvider.java"

# interfaces
.implements Lcom/audible/mobile/audio/metadata/CoverArtProvider;


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    const-class v1, Lcom/audible/mobile/metadata/BaseCoverArtProvider;

    invoke-direct {v0, v1}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/audible/mobile/metadata/BaseCoverArtProvider;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    const/16 v0, 0xa

    const-string v1, "cover-art-"

    .line 27
    invoke-static {v0, v1}, Lcom/audible/mobile/util/Executors;->newCachedThreadPool(ILjava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/audible/mobile/metadata/BaseCoverArtProvider;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method protected constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/audible/mobile/metadata/BaseCoverArtProvider;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic access$000(Lcom/audible/mobile/metadata/BaseCoverArtProvider;Lcom/audible/mobile/player/AudioDataSource;Lcom/audible/mobile/audio/metadata/CoverArtType;Lcom/audible/mobile/audio/metadata/CoverArtProvider$Callback;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/audible/mobile/metadata/BaseCoverArtProvider;->execute(Lcom/audible/mobile/player/AudioDataSource;Lcom/audible/mobile/audio/metadata/CoverArtType;Lcom/audible/mobile/audio/metadata/CoverArtProvider$Callback;)V

    return-void
.end method

.method private execute(Lcom/audible/mobile/player/AudioDataSource;Lcom/audible/mobile/audio/metadata/CoverArtType;Lcom/audible/mobile/audio/metadata/CoverArtProvider$Callback;)V
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/audible/mobile/metadata/BaseCoverArtProvider;->retrieveAsynchronously(Lcom/audible/mobile/player/AudioDataSource;Lcom/audible/mobile/audio/metadata/CoverArtType;Lcom/audible/mobile/audio/metadata/CoverArtProvider$Callback;)V

    goto :goto_1

    .line 55
    :cond_1
    :goto_0
    invoke-interface {p3}, Lcom/audible/mobile/audio/metadata/CoverArtProvider$Callback;->onFailure()V

    :goto_1
    return-void
.end method


# virtual methods
.method public final get(Lcom/audible/mobile/player/AudioDataSource;Lcom/audible/mobile/audio/metadata/CoverArtType;Lcom/audible/mobile/audio/metadata/CoverArtProvider$Callback;)V
    .locals 2

    .line 38
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 39
    sget-object v0, Lcom/audible/mobile/metadata/BaseCoverArtProvider;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Attempting to retrieve cover art asynchronously from the UI thread.  This could be dangerous depending on what downstream does, so executing in a thread."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/audible/mobile/metadata/BaseCoverArtProvider;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/audible/mobile/metadata/BaseCoverArtProvider$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/audible/mobile/metadata/BaseCoverArtProvider$1;-><init>(Lcom/audible/mobile/metadata/BaseCoverArtProvider;Lcom/audible/mobile/player/AudioDataSource;Lcom/audible/mobile/audio/metadata/CoverArtType;Lcom/audible/mobile/audio/metadata/CoverArtProvider$Callback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 47
    :cond_0
    sget-object v0, Lcom/audible/mobile/metadata/BaseCoverArtProvider;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Cover Art callback already in its own thread, using that."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/audible/mobile/metadata/BaseCoverArtProvider;->execute(Lcom/audible/mobile/player/AudioDataSource;Lcom/audible/mobile/audio/metadata/CoverArtType;Lcom/audible/mobile/audio/metadata/CoverArtProvider$Callback;)V

    :goto_0
    return-void
.end method

.method protected abstract retrieveAsynchronously(Lcom/audible/mobile/player/AudioDataSource;Lcom/audible/mobile/audio/metadata/CoverArtType;Lcom/audible/mobile/audio/metadata/CoverArtProvider$Callback;)V
.end method
