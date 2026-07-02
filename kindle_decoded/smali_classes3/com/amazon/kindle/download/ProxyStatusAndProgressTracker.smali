.class public final Lcom/amazon/kindle/download/ProxyStatusAndProgressTracker;
.super Ljava/lang/Object;
.source "FileDownloadRequest.kt"

# interfaces
.implements Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFileDownloadRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileDownloadRequest.kt\ncom/amazon/kindle/download/ProxyStatusAndProgressTracker\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,168:1\n1819#2,2:169\n1819#2,2:171\n1819#2,2:173\n1819#2,2:175\n*E\n*S KotlinDebug\n*F\n+ 1 FileDownloadRequest.kt\ncom/amazon/kindle/download/ProxyStatusAndProgressTracker\n*L\n140#1,2:169\n146#1,2:171\n152#1,2:173\n159#1,2:175\n*E\n"
.end annotation


# instance fields
.field private numberOfBytesDownloaded:J

.field private final trackers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/download/ProxyStatusAndProgressTracker;->trackers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final registerTracker(Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;)V
    .locals 1

    const-string v0, "tracker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/amazon/kindle/download/ProxyStatusAndProgressTracker;->trackers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public reportProgress(Lcom/amazon/kindle/webservices/IWebRequest;J)V
    .locals 2

    .line 158
    iget-wide v0, p0, Lcom/amazon/kindle/download/ProxyStatusAndProgressTracker;->numberOfBytesDownloaded:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/amazon/kindle/download/ProxyStatusAndProgressTracker;->numberOfBytesDownloaded:J

    .line 159
    iget-object p2, p0, Lcom/amazon/kindle/download/ProxyStatusAndProgressTracker;->trackers:Ljava/util/List;

    .line 175
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;

    .line 160
    iget-wide v0, p0, Lcom/amazon/kindle/download/ProxyStatusAndProgressTracker;->numberOfBytesDownloaded:J

    invoke-interface {p3, p1, v0, v1}, Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;->reportProgress(Lcom/amazon/kindle/webservices/IWebRequest;J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public reportStatus(Lcom/amazon/kindle/webservices/IWebRequest;Lcom/amazon/kindle/webservices/RequestStatus;)V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/amazon/kindle/download/ProxyStatusAndProgressTracker;->trackers:Ljava/util/List;

    .line 169
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;

    .line 141
    invoke-interface {v1, p1, p2}, Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;->reportStatus(Lcom/amazon/kindle/webservices/IWebRequest;Lcom/amazon/kindle/webservices/RequestStatus;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setMaxProgress(Lcom/amazon/kindle/webservices/IWebRequest;J)V
    .locals 2

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/amazon/kindle/download/ProxyStatusAndProgressTracker;->trackers:Ljava/util/List;

    .line 173
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;

    .line 153
    invoke-interface {v1, p1, p2, p3}, Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;->setMaxProgress(Lcom/amazon/kindle/webservices/IWebRequest;J)V

    goto :goto_0

    :cond_0
    return-void
.end method
