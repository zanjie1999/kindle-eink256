.class public Lcom/amazon/sitb/android/model/DownloadingState;
.super Lcom/amazon/sitb/android/model/AbstractState;
.source "DownloadingState.java"


# instance fields
.field private final downloadManager:Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

.field private downloadStatusListener:Lcom/amazon/sitb/android/model/DownloadStatusListener;

.field private final downloadStatusListenerFactory:Lcom/amazon/sitb/android/model/DownloadStatusListenerFactory;

.field private final readerActions:Lcom/amazon/sitb/android/ReaderActions;


# direct methods
.method public constructor <init>(Lcom/amazon/sitb/android/cache/Cache;Lcom/amazon/sitb/android/cache/Cache;Lcom/amazon/kindle/krx/download/IKRXDownloadManager;Lcom/amazon/sitb/android/model/DownloadStatusListenerFactory;Lcom/amazon/sitb/android/ReaderActions;Lcom/amazon/sitb/android/services/BookIdParser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/sitb/android/cache/Cache<",
            "Lcom/amazon/sitb/android/BookPrice;",
            ">;",
            "Lcom/amazon/sitb/android/cache/Cache<",
            "Lcom/amazon/sitb/android/SeriesInfo;",
            ">;",
            "Lcom/amazon/kindle/krx/download/IKRXDownloadManager;",
            "Lcom/amazon/sitb/android/model/DownloadStatusListenerFactory;",
            "Lcom/amazon/sitb/android/ReaderActions;",
            "Lcom/amazon/sitb/android/services/BookIdParser;",
            ")V"
        }
    .end annotation

    .line 32
    sget-object v0, Lcom/amazon/sitb/android/BookState;->DOWNLOADING:Lcom/amazon/sitb/android/BookState;

    invoke-direct {p0, v0, p1, p2, p6}, Lcom/amazon/sitb/android/model/AbstractState;-><init>(Lcom/amazon/sitb/android/BookState;Lcom/amazon/sitb/android/cache/Cache;Lcom/amazon/sitb/android/cache/Cache;Lcom/amazon/sitb/android/services/BookIdParser;)V

    .line 33
    iput-object p3, p0, Lcom/amazon/sitb/android/model/DownloadingState;->downloadManager:Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

    .line 34
    iput-object p4, p0, Lcom/amazon/sitb/android/model/DownloadingState;->downloadStatusListenerFactory:Lcom/amazon/sitb/android/model/DownloadStatusListenerFactory;

    .line 35
    iput-object p5, p0, Lcom/amazon/sitb/android/model/DownloadingState;->readerActions:Lcom/amazon/sitb/android/ReaderActions;

    return-void
.end method


# virtual methods
.method public cancelStarted(Ljava/lang/String;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/amazon/sitb/android/model/AbstractState;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/model/UpsellModel;->getUpsellAsin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/amazon/sitb/android/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 90
    iget-object p1, p0, Lcom/amazon/sitb/android/model/AbstractState;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    sget-object v0, Lcom/amazon/sitb/android/BookState;->CANCELING:Lcom/amazon/sitb/android/BookState;

    invoke-virtual {p1, v0}, Lcom/amazon/sitb/android/model/UpsellModel;->transition(Lcom/amazon/sitb/android/BookState;)V

    :cond_0
    return-void
.end method

.method public downloadFailed(Ljava/lang/String;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/amazon/sitb/android/model/AbstractState;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/model/UpsellModel;->getUpsellAsin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/amazon/sitb/android/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 72
    iget-object p1, p0, Lcom/amazon/sitb/android/model/AbstractState;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    sget-object v0, Lcom/amazon/sitb/android/BookState;->OWNED:Lcom/amazon/sitb/android/BookState;

    invoke-virtual {p1, v0}, Lcom/amazon/sitb/android/model/UpsellModel;->transition(Lcom/amazon/sitb/android/BookState;)V

    :cond_0
    return-void
.end method

.method public downloadProgress(Ljava/lang/String;I)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/amazon/sitb/android/model/AbstractState;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/model/UpsellModel;->getUpsellAsin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/amazon/sitb/android/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 81
    iget-object p1, p0, Lcom/amazon/sitb/android/model/AbstractState;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {p1, p2}, Lcom/amazon/sitb/android/model/UpsellModel;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public downloadSucceeded(Ljava/lang/String;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/amazon/sitb/android/model/AbstractState;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/model/UpsellModel;->getUpsellAsin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/amazon/sitb/android/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 63
    iget-object p1, p0, Lcom/amazon/sitb/android/model/AbstractState;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    sget-object v0, Lcom/amazon/sitb/android/BookState;->DOWNLOADED:Lcom/amazon/sitb/android/BookState;

    invoke-virtual {p1, v0}, Lcom/amazon/sitb/android/model/UpsellModel;->transition(Lcom/amazon/sitb/android/BookState;)V

    :cond_0
    return-void
.end method

.method public enter()V
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/amazon/sitb/android/model/DownloadingState;->readerActions:Lcom/amazon/sitb/android/ReaderActions;

    iget-object v1, p0, Lcom/amazon/sitb/android/model/AbstractState;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {v1}, Lcom/amazon/sitb/android/model/UpsellModel;->getUpsellAsin()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amazon/sitb/android/ReaderActions;->getBookFromAsin(Ljava/lang/String;Z)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v1, p0, Lcom/amazon/sitb/android/model/DownloadingState;->downloadStatusListenerFactory:Lcom/amazon/sitb/android/model/DownloadStatusListenerFactory;

    iget-object v2, p0, Lcom/amazon/sitb/android/model/AbstractState;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {v2}, Lcom/amazon/sitb/android/model/UpsellModel;->getUpsellAsin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/sitb/android/model/DownloadStatusListenerFactory;->createListener(Ljava/lang/String;)Lcom/amazon/sitb/android/model/DownloadStatusListener;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/sitb/android/model/DownloadingState;->downloadStatusListener:Lcom/amazon/sitb/android/model/DownloadStatusListener;

    .line 45
    iget-object v1, p0, Lcom/amazon/sitb/android/model/DownloadingState;->downloadManager:Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/sitb/android/model/DownloadingState;->downloadStatusListener:Lcom/amazon/sitb/android/model/DownloadStatusListener;

    invoke-interface {v1, v0, v2}, Lcom/amazon/kindle/krx/download/IKRXDownloadManager;->registerDownloadProgressListener(Ljava/lang/String;Lcom/amazon/kindle/krx/download/IDownloadStatusListener;)V

    :cond_0
    return-void
.end method

.method public exit()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/amazon/sitb/android/model/DownloadingState;->downloadStatusListener:Lcom/amazon/sitb/android/model/DownloadStatusListener;

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0}, Lcom/amazon/sitb/android/model/DownloadStatusListener;->discard()V

    :cond_0
    return-void
.end method
