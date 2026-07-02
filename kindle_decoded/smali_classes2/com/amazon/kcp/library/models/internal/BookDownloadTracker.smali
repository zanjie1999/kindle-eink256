.class public Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;
.super Ljava/lang/Object;
.source "BookDownloadTracker.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private downloadBookId:Lcom/amazon/kindle/model/content/IBookID;

.field private downloadObserver:Lcom/amazon/kcp/library/models/internal/IBookDownloadObserver;

.field private hasSentStartEvent:Z

.field private tracking:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->hasSentStartEvent:Z

    .line 35
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->tracking:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private matchesOurItem(Lcom/amazon/kindle/services/download/IContentDownload;)Z
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->downloadBookId:Lcom/amazon/kindle/model/content/IBookID;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getBookId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public isTrackingOn()Z
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->tracking:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public onDownloadProgressEvent(Lcom/amazon/kindle/services/download/IDownloadService$DownloadProgressUpdateEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 77
    invoke-virtual {p1}, Lcom/amazon/kindle/services/download/IDownloadService$DownloadProgressUpdateEvent;->getDownload()Lcom/amazon/kindle/services/download/IContentDownload;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->matchesOurItem(Lcom/amazon/kindle/services/download/IContentDownload;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 82
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->hasSentStartEvent:Z

    if-nez v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->downloadObserver:Lcom/amazon/kcp/library/models/internal/IBookDownloadObserver;

    invoke-virtual {p1}, Lcom/amazon/kindle/services/download/IDownloadService$DownloadProgressUpdateEvent;->getDownload()Lcom/amazon/kindle/services/download/IContentDownload;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/models/internal/IBookDownloadObserver;->onDownloadAdded(Lcom/amazon/kindle/services/download/IContentDownload;)V

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->hasSentStartEvent:Z

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->downloadObserver:Lcom/amazon/kcp/library/models/internal/IBookDownloadObserver;

    invoke-virtual {p1}, Lcom/amazon/kindle/services/download/IDownloadService$DownloadProgressUpdateEvent;->getDownload()Lcom/amazon/kindle/services/download/IContentDownload;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/kcp/library/models/internal/IBookDownloadObserver;->onDownloadProgressChanged(Lcom/amazon/kindle/services/download/IContentDownload;)V

    return-void
.end method

.method public onDownloadStateChanged(Lcom/amazon/kindle/services/download/IDownloadService$DownloadStateUpdateEvent;)V
    .locals 4
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 39
    invoke-virtual {p1}, Lcom/amazon/kindle/services/download/IDownloadService$DownloadStateUpdateEvent;->getDownload()Lcom/amazon/kindle/services/download/IContentDownload;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->matchesOurItem(Lcom/amazon/kindle/services/download/IContentDownload;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 45
    iget-boolean v1, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->hasSentStartEvent:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 46
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->downloadObserver:Lcom/amazon/kcp/library/models/internal/IBookDownloadObserver;

    invoke-virtual {p1}, Lcom/amazon/kindle/services/download/IDownloadService$DownloadStateUpdateEvent;->getDownload()Lcom/amazon/kindle/services/download/IContentDownload;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/models/internal/IBookDownloadObserver;->onDownloadAdded(Lcom/amazon/kindle/services/download/IContentDownload;)V

    .line 48
    iput-boolean v2, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->hasSentStartEvent:Z

    const/4 v0, 0x1

    .line 51
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kindle/services/download/IDownloadService$DownloadStateUpdateEvent;->getDownload()Lcom/amazon/kindle/services/download/IContentDownload;

    move-result-object v1

    .line 52
    sget-object v3, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker$1;->$SwitchMap$com$amazon$kindle$model$content$ContentState:[I

    invoke-virtual {p1}, Lcom/amazon/kindle/services/download/IDownloadService$DownloadStateUpdateEvent;->getDownloadState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v3, p1

    if-eq p1, v2, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    if-nez v0, :cond_5

    .line 70
    iget-object p1, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->downloadObserver:Lcom/amazon/kcp/library/models/internal/IBookDownloadObserver;

    invoke-interface {p1, v1}, Lcom/amazon/kcp/library/models/internal/IBookDownloadObserver;->onDownloadStateChanged(Lcom/amazon/kindle/services/download/IContentDownload;)V

    goto :goto_0

    .line 60
    :cond_2
    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IContentDownload;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->CDE_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    if-ne p1, v0, :cond_3

    .line 61
    iget-object p1, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->downloadObserver:Lcom/amazon/kcp/library/models/internal/IBookDownloadObserver;

    invoke-interface {p1, v1}, Lcom/amazon/kcp/library/models/internal/IBookDownloadObserver;->onLicenseCountError(Lcom/amazon/kindle/services/download/IContentDownload;)V

    goto :goto_0

    .line 63
    :cond_3
    iget-object p1, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->downloadObserver:Lcom/amazon/kcp/library/models/internal/IBookDownloadObserver;

    invoke-interface {p1, v1}, Lcom/amazon/kcp/library/models/internal/IBookDownloadObserver;->onDownloadError(Lcom/amazon/kindle/services/download/IContentDownload;)V

    goto :goto_0

    .line 55
    :cond_4
    iget-object p1, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->downloadObserver:Lcom/amazon/kcp/library/models/internal/IBookDownloadObserver;

    invoke-interface {p1, v1}, Lcom/amazon/kcp/library/models/internal/IBookDownloadObserver;->onDownloadComplete(Lcom/amazon/kindle/services/download/IContentDownload;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public startTracking(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;Lcom/amazon/kcp/library/models/internal/IBookDownloadObserver;)V
    .locals 2

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received request to track: asin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", docType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->tracking:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "Already tracking download (startTracking() has already been called)"

    .line 115
    sget-object p2, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 118
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 124
    :cond_1
    iput-object p3, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->downloadObserver:Lcom/amazon/kcp/library/models/internal/IBookDownloadObserver;

    .line 128
    new-instance p3, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    invoke-direct {p3, p1, p2}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    iput-object p3, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->downloadBookId:Lcom/amazon/kindle/model/content/IBookID;

    .line 129
    invoke-interface {p3}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p1

    .line 131
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDownloadService()Lcom/amazon/kindle/services/download/IDownloadService;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/amazon/kindle/services/download/IDownloadService;->getContentDownload(Ljava/lang/String;)Lcom/amazon/kindle/services/download/IContentDownload;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    .line 135
    iget-object p3, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->downloadObserver:Lcom/amazon/kcp/library/models/internal/IBookDownloadObserver;

    invoke-interface {p3, p1}, Lcom/amazon/kcp/library/models/internal/IBookDownloadObserver;->onDownloadAdded(Lcom/amazon/kindle/services/download/IContentDownload;)V

    .line 136
    iput-boolean p2, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->hasSentStartEvent:Z

    .line 139
    :cond_2
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 140
    iget-object p1, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->tracking:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public stopTracking()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->tracking:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 162
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    return-void

    .line 163
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not tracking download (startTracking() must be called first or stopTracking() has been called)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    .line 171
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->tracking:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 172
    iput-boolean v1, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->hasSentStartEvent:Z

    const/4 v0, 0x0

    .line 173
    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->downloadObserver:Lcom/amazon/kcp/library/models/internal/IBookDownloadObserver;

    return-void
.end method
