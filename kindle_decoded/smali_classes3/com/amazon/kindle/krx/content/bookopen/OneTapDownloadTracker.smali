.class public final Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker;
.super Ljava/lang/Object;
.source "OneTapDownloadTracker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker$Companion;

.field private static final TAG:Ljava/lang/String;

.field private static final knownTrackers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/amazon/kindle/model/content/IBookID;",
            "Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final bookId:Lcom/amazon/kindle/model/content/IBookID;

.field private volatile callbackHandled:Z

.field private onContentFailure:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onContentOpenable:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onProgressUpdate:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private percentageProgress:I

.field private previousDownloadState:Lcom/amazon/kindle/model/content/ContentState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker;->Companion:Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker$Companion;

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker;->knownTrackers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 56
    const-class v0, Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/services/download/IContentDownload;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/model/content/IBookID;",
            "Lcom/amazon/kindle/services/download/IContentDownload;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    iput-object p3, p0, Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker;->onProgressUpdate:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker;->onContentOpenable:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker;->onContentFailure:Lkotlin/jvm/functions/Function0;

    if-eqz p2, :cond_0

    .line 61
    invoke-direct {p0, p2}, Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker;->calculateProgress(Lcom/amazon/kindle/services/download/IContentDownload;)I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker;->percentageProgress:I

    .line 62
    invoke-interface {p2}, Lcom/amazon/kindle/services/download/IContentDownload;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker;->previousDownloadState:Lcom/amazon/kindle/model/content/ContentState;

    .line 64
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/services/download/IContentDownload;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 19
    invoke-direct/range {p0 .. p5}, Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker;-><init>(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/services/download/IContentDownload;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic access$getKnownTrackers$cp()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 19
    sget-object v0, Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker;->knownTrackers:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static final synthetic access$prepTrackerForReuse(Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker;->prepTrackerForReuse(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final calculateProgress(Lcom/amazon/kindle/services/download/IContentDownload;)I
    .locals 4

    .line 132
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getOpenablePercentage()I

    move-result v0

    int-to-double v0, v0

    const/16 v2, 0x64

    int-to-double v2, v2

    div-double/2addr v0, v2

    const/16 v2, 0x55

    int-to-double v2, v2

    mul-double v2, v2, v0

    .line 134
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/model/content/ContentState;->isDownloading(Lcom/amazon/kindle/model/content/ContentState;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xf

    int-to-double v0, p1

    add-double/2addr v2, v0

    :cond_0
    double-to-int p1, v2

    return p1
.end method

.method private final prepTrackerForReuse(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 163
    monitor-enter p0

    .line 164
    :try_start_0
    iput-object p1, p0, Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker;->onProgressUpdate:Lkotlin/jvm/functions/Function1;

    .line 165
    iput-object p2, p0, Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker;->onContentOpenable:Lkotlin/jvm/functions/Function0;

    .line 166
    iput-object p3, p0, Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker;->onContentFailure:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x0

    .line 167
    iput-boolean p1, p0, Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker;->callbackHandled:Z

    .line 169
    iget-object p1, p0, Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker;->previousDownloadState:Lcom/amazon/kindle/model/content/ContentState;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker;->getTerminalCallbackForState$krxsdk_release(Lcom/amazon/kindle/model/content/ContentState;)Lkotlin/jvm/functions/Function0;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    monitor-exit p0

    if-eqz p1, :cond_0

    .line 170
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 163
    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized sendProgressUpdate(Lcom/amazon/kindle/services/download/IContentDownload;)V
    .locals 1

    monitor-enter p0

    .line 127
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker;->calculateProgress(Lcom/amazon/kindle/services/download/IContentDownload;)I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker;->percentageProgress:I

    .line 128
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker;->onProgressUpdate:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final cleanupInternal$krxsdk_release()V
    .locals 2

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cleanup called for tracker of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    sget-object v0, Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker;->knownTrackers:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public final getCallbackHandled$krxsdk_release()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker;->callbackHandled:Z

    return v0
.end method

.method public final getPercentageProgress$krxsdk_release()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker;->percentageProgress:I

    return v0
.end method

.method public final getTerminalCallbackForState$krxsdk_release(Lcom/amazon/kindle/model/content/ContentState;)Lkotlin/jvm/functions/Function0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/model/content/ContentState;",
            ")",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 184
    iget-boolean v0, p0, Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker;->callbackHandled:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 185
    invoke-virtual {p1}, Lcom/amazon/kindle/model/content/ContentState;->isOpenable()Z

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker;->onContentOpenable:Lkotlin/jvm/functions/Function0;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 186
    invoke-virtual {p1}, Lcom/amazon/kindle/model/content/ContentState;->isFailure()Z

    move-result p1

    if-ne p1, v2, :cond_2

    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker;->onContentFailure:Lkotlin/jvm/functions/Function0;

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 191
    iput-boolean v2, p0, Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker;->callbackHandled:Z

    .line 192
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker;->cleanupInternal$krxsdk_release()V

    :cond_3
    return-object v1
.end method

.method public final onDownloadProgressUpdate(Lcom/amazon/kindle/services/download/IDownloadService$DownloadProgressUpdateEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1}, Lcom/amazon/kindle/services/download/IDownloadService$DownloadProgressUpdateEvent;->getDownload()Lcom/amazon/kindle/services/download/IContentDownload;

    move-result-object p1

    const-string v0, "contentDownload"

    .line 107
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getBookId()Ljava/lang/String;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    return-void

    .line 112
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker;->sendProgressUpdate(Lcom/amazon/kindle/services/download/IContentDownload;)V

    return-void
.end method

.method public final onDownloadStateChanged(Lcom/amazon/kindle/services/download/IDownloadService$DownloadStateUpdateEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Lcom/amazon/kindle/services/download/IDownloadService$DownloadStateUpdateEvent;->getDownload()Lcom/amazon/kindle/services/download/IContentDownload;

    move-result-object v0

    const-string v1, "download"

    .line 71
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IContentDownload;->getBookId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 72
    invoke-virtual {p1}, Lcom/amazon/kindle/services/download/IDownloadService$DownloadStateUpdateEvent;->getDownloadState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object p1

    .line 75
    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "contentState"

    .line 79
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/kindle/model/content/ContentState;->isOpenable()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x64

    .line 81
    iput v0, p0, Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker;->percentageProgress:I

    .line 82
    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker;->onProgressUpdate:Lkotlin/jvm/functions/Function1;

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Unit;

    .line 86
    :cond_1
    monitor-enter p0

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker;->previousDownloadState:Lcom/amazon/kindle/model/content/ContentState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_2

    .line 88
    monitor-exit p0

    return-void

    .line 90
    :cond_2
    :try_start_1
    iput-object p1, p0, Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker;->previousDownloadState:Lcom/amazon/kindle/model/content/ContentState;

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Download state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " changed for book: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker;->getTerminalCallbackForState$krxsdk_release(Lcom/amazon/kindle/model/content/ContentState;)Lkotlin/jvm/functions/Function0;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    monitor-exit p0

    if-eqz v0, :cond_3

    .line 93
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Unit;

    if-eqz v0, :cond_3

    goto :goto_0

    .line 97
    :cond_3
    invoke-virtual {p1}, Lcom/amazon/kindle/model/content/ContentState;->isTerminal()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 98
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker;->cleanupInternal$krxsdk_release()V

    .line 100
    :cond_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 86
    monitor-exit p0

    throw p1

    :cond_5
    return-void
.end method

.method public final declared-synchronized removeCallbacks$krxsdk_release()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 120
    :try_start_0
    iput-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker;->onProgressUpdate:Lkotlin/jvm/functions/Function1;

    .line 121
    iput-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker;->onContentOpenable:Lkotlin/jvm/functions/Function0;

    .line 122
    iput-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker;->onContentFailure:Lkotlin/jvm/functions/Function0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setPercentageProgress$krxsdk_release(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker;->percentageProgress:I

    return-void
.end method
