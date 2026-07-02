.class public Lcom/audible/android/kcp/download/callback/MappedDownloadStatusCallbackHolder;
.super Ljava/lang/Object;
.source "MappedDownloadStatusCallbackHolder.java"

# interfaces
.implements Lcom/audible/android/kcp/download/callback/DownloadStatusCallbackHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/android/kcp/download/callback/MappedDownloadStatusCallbackHolder$UnidentifiedDownloadCallbackKey;
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final mWaitingDownloadCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/audible/android/kcp/download/callback/MappedDownloadStatusCallbackHolder$UnidentifiedDownloadCallbackKey;",
            "Ljava/util/List<",
            "Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/android/kcp/download/callback/MappedDownloadStatusCallbackHolder;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/android/kcp/download/callback/MappedDownloadStatusCallbackHolder;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/audible/android/kcp/download/callback/MappedDownloadStatusCallbackHolder;->mWaitingDownloadCallbacks:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public holdCallback(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;)V
    .locals 1

    if-eqz p3, :cond_2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 34
    :cond_0
    new-instance v0, Lcom/audible/android/kcp/download/callback/MappedDownloadStatusCallbackHolder$UnidentifiedDownloadCallbackKey;

    invoke-direct {v0, p1, p2}, Lcom/audible/android/kcp/download/callback/MappedDownloadStatusCallbackHolder$UnidentifiedDownloadCallbackKey;-><init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;)V

    .line 35
    iget-object p1, p0, Lcom/audible/android/kcp/download/callback/MappedDownloadStatusCallbackHolder;->mWaitingDownloadCallbacks:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_1

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 38
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object p2, p0, Lcom/audible/android/kcp/download/callback/MappedDownloadStatusCallbackHolder;->mWaitingDownloadCallbacks:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 41
    :cond_1
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    .line 31
    :cond_2
    :goto_1
    sget-object p1, Lcom/audible/android/kcp/download/callback/MappedDownloadStatusCallbackHolder;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Necessary information was not given to hold this callback for later registration."

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void
.end method

.method public removeWaitingCallbacks(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/domain/Asin;",
            "Lcom/audible/android/kcp/download/receiver/AirDownloadType;",
            ")",
            "Ljava/util/List<",
            "Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/audible/android/kcp/download/callback/MappedDownloadStatusCallbackHolder;->mWaitingDownloadCallbacks:Ljava/util/Map;

    new-instance v1, Lcom/audible/android/kcp/download/callback/MappedDownloadStatusCallbackHolder$UnidentifiedDownloadCallbackKey;

    invoke-direct {v1, p1, p2}, Lcom/audible/android/kcp/download/callback/MappedDownloadStatusCallbackHolder$UnidentifiedDownloadCallbackKey;-><init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    .line 49
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    :cond_0
    return-object p1
.end method
