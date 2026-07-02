.class public Lcom/amazon/kcp/search/BaseBookSearchController;
.super Ljava/lang/Object;
.source "BaseBookSearchController.java"

# interfaces
.implements Lcom/amazon/kcp/search/IBookSearchController;


# instance fields
.field private volatile currentProgress:J

.field private docViewerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amazon/android/docviewer/KindleDocViewer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile indexAvailable:Z

.field private listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/kcp/search/IBookSearchController$IBookSearchListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile maxProgress:J

.field private volatile query:Ljava/lang/String;

.field private results:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/android/docviewer/BookSearchResult;",
            ">;"
        }
    .end annotation
.end field

.field private searchStopper:Ljava/lang/Runnable;

.field private final statusTracker:Lcom/amazon/kindle/services/download/IStatusTracker;

.field private volatile wasCanceled:Z


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/amazon/kcp/search/BaseBookSearchController$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/search/BaseBookSearchController$1;-><init>(Lcom/amazon/kcp/search/BaseBookSearchController;)V

    iput-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchController;->statusTracker:Lcom/amazon/kindle/services/download/IStatusTracker;

    .line 67
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchController;->docViewerRef:Ljava/lang/ref/WeakReference;

    .line 68
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/search/BaseBookSearchController;->results:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 69
    iput-object p1, p0, Lcom/amazon/kcp/search/BaseBookSearchController;->listeners:Ljava/util/ArrayList;

    .line 70
    iput-object p1, p0, Lcom/amazon/kcp/search/BaseBookSearchController;->searchStopper:Ljava/lang/Runnable;

    .line 71
    iput-object p1, p0, Lcom/amazon/kcp/search/BaseBookSearchController;->query:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/amazon/kcp/search/BaseBookSearchController;J)J
    .locals 0

    .line 16
    iput-wide p1, p0, Lcom/amazon/kcp/search/BaseBookSearchController;->maxProgress:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/amazon/kcp/search/BaseBookSearchController;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/amazon/kcp/search/BaseBookSearchController;->notifyMaxProgress()V

    return-void
.end method

.method static synthetic access$1100(Lcom/amazon/kcp/search/BaseBookSearchController;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/amazon/kcp/search/BaseBookSearchController;->onSearchCanceled()V

    return-void
.end method

.method static synthetic access$1200(Lcom/amazon/kcp/search/BaseBookSearchController;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/amazon/kcp/search/BaseBookSearchController;->onSearchCompleted()V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/kcp/search/BaseBookSearchController;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/amazon/kcp/search/BaseBookSearchController;->notifyReset()V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/kcp/search/BaseBookSearchController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/search/BaseBookSearchController;->notifyState(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$402(Lcom/amazon/kcp/search/BaseBookSearchController;J)J
    .locals 0

    .line 16
    iput-wide p1, p0, Lcom/amazon/kcp/search/BaseBookSearchController;->currentProgress:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/amazon/kcp/search/BaseBookSearchController;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/amazon/kcp/search/BaseBookSearchController;->notifyCurrentProgress()V

    return-void
.end method

.method static synthetic access$602(Lcom/amazon/kcp/search/BaseBookSearchController;Z)Z
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/amazon/kcp/search/BaseBookSearchController;->indexAvailable:Z

    return p1
.end method

.method static synthetic access$700(Lcom/amazon/kcp/search/BaseBookSearchController;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/amazon/kcp/search/BaseBookSearchController;->notifySearchStart()V

    return-void
.end method

.method static synthetic access$800(Lcom/amazon/kcp/search/BaseBookSearchController;I)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/BaseBookSearchController;->notifySearchResultCount(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/amazon/kcp/search/BaseBookSearchController;Lcom/amazon/android/docviewer/BookSearchResult;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/BaseBookSearchController;->onResultFound(Lcom/amazon/android/docviewer/BookSearchResult;)V

    return-void
.end method

.method private notifyCurrentProgress()V
    .locals 4

    .line 448
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchController;->listeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 449
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/search/IBookSearchController$IBookSearchListener;

    .line 450
    iget-wide v2, p0, Lcom/amazon/kcp/search/BaseBookSearchController;->currentProgress:J

    invoke-interface {v1, p0, v2, v3}, Lcom/amazon/kcp/search/IBookSearchController$IBookSearchListener;->onTrackerReportCurrentProgress(Lcom/amazon/kcp/search/IBookSearchController;J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyMaxProgress()V
    .locals 4

    .line 436
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchController;->listeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 437
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/search/IBookSearchController$IBookSearchListener;

    .line 438
    iget-wide v2, p0, Lcom/amazon/kcp/search/BaseBookSearchController;->maxProgress:J

    invoke-interface {v1, p0, v2, v3}, Lcom/amazon/kcp/search/IBookSearchController$IBookSearchListener;->onTrackerSetMaxProgress(Lcom/amazon/kcp/search/IBookSearchController;J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyReset()V
    .locals 2

    .line 475
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchController;->listeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 476
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/search/IBookSearchController$IBookSearchListener;

    .line 477
    invoke-interface {v1, p0}, Lcom/amazon/kcp/search/IBookSearchController$IBookSearchListener;->onTrackerReset(Lcom/amazon/kcp/search/IBookSearchController;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifySearchEnd()V
    .locals 3

    .line 385
    invoke-virtual {p0}, Lcom/amazon/kcp/search/BaseBookSearchController;->wasCanceled()Z

    move-result v0

    .line 386
    iget-object v1, p0, Lcom/amazon/kcp/search/BaseBookSearchController;->listeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 387
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/search/IBookSearchController$IBookSearchListener;

    .line 388
    invoke-interface {v2, p0, v0}, Lcom/amazon/kcp/search/IBookSearchController$IBookSearchListener;->onSearchStopped(Lcom/amazon/kcp/search/IBookSearchController;Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 392
    iput-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchController;->searchStopper:Ljava/lang/Runnable;

    .line 393
    iput-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchController;->query:Ljava/lang/String;

    const/4 v0, 0x0

    .line 394
    iput-boolean v0, p0, Lcom/amazon/kcp/search/BaseBookSearchController;->indexAvailable:Z

    return-void
.end method

.method private notifySearchResult(Lcom/amazon/android/docviewer/BookSearchResult;)V
    .locals 2

    .line 412
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchController;->listeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 413
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/search/IBookSearchController$IBookSearchListener;

    .line 414
    invoke-interface {v1, p0, p1}, Lcom/amazon/kcp/search/IBookSearchController$IBookSearchListener;->onSearchResult(Lcom/amazon/kcp/search/IBookSearchController;Lcom/amazon/android/docviewer/BookSearchResult;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifySearchResultCount(I)V
    .locals 2

    .line 398
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchController;->listeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 399
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/search/IBookSearchController$IBookSearchListener;

    .line 400
    invoke-interface {v1, p0, p1}, Lcom/amazon/kcp/search/IBookSearchController$IBookSearchListener;->onSearchResultCount(Lcom/amazon/kcp/search/IBookSearchController;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifySearchStart()V
    .locals 3

    .line 373
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchController;->listeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 374
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/search/IBookSearchController$IBookSearchListener;

    .line 375
    iget-boolean v2, p0, Lcom/amazon/kcp/search/BaseBookSearchController;->indexAvailable:Z

    invoke-interface {v1, p0, v2}, Lcom/amazon/kcp/search/IBookSearchController$IBookSearchListener;->onSearchStarted(Lcom/amazon/kcp/search/IBookSearchController;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 463
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchController;->listeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 464
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/search/IBookSearchController$IBookSearchListener;

    .line 465
    invoke-interface {v1, p0, p1, p2}, Lcom/amazon/kcp/search/IBookSearchController$IBookSearchListener;->onTrackerReportState(Lcom/amazon/kcp/search/IBookSearchController;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onResultFound(Lcom/amazon/android/docviewer/BookSearchResult;)V
    .locals 1

    .line 336
    invoke-virtual {p0}, Lcom/amazon/kcp/search/BaseBookSearchController;->isSearching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchController;->results:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/BaseBookSearchController;->notifySearchResult(Lcom/amazon/android/docviewer/BookSearchResult;)V

    :cond_0
    return-void
.end method

.method private onSearchCanceled()V
    .locals 1

    const/4 v0, 0x1

    .line 348
    iput-boolean v0, p0, Lcom/amazon/kcp/search/BaseBookSearchController;->wasCanceled:Z

    .line 349
    invoke-direct {p0}, Lcom/amazon/kcp/search/BaseBookSearchController;->notifySearchEnd()V

    return-void
.end method

.method private onSearchCompleted()V
    .locals 3

    .line 357
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchController;->docViewerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/KindleDocViewer;

    if-nez v0, :cond_0

    return-void

    .line 363
    :cond_0
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getSearcher()Lcom/amazon/android/docviewer/KindleDocSearcher;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/search/BaseBookSearchController;->results:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/amazon/kcp/search/BaseBookSearchController;->query:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/amazon/android/docviewer/KindleDocSearcher;->setCachedSearchResults(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 365
    invoke-direct {p0}, Lcom/amazon/kcp/search/BaseBookSearchController;->notifySearchEnd()V

    return-void
.end method


# virtual methods
.method public addBookSearchListener(Lcom/amazon/kcp/search/IBookSearchController$IBookSearchListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchController;->listeners:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 312
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchController;->listeners:Ljava/util/ArrayList;

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchController;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearCachedSearchResults()V
    .locals 1

    .line 290
    invoke-virtual {p0}, Lcom/amazon/kcp/search/BaseBookSearchController;->stopSearch()V

    .line 292
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchController;->results:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 294
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchController;->docViewerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_0

    .line 296
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getSearcher()Lcom/amazon/android/docviewer/KindleDocSearcher;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocSearcher;->clearCachedSearchResults()V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 234
    invoke-virtual {p0}, Lcom/amazon/kcp/search/BaseBookSearchController;->clearCachedSearchResults()V

    .line 236
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchController;->listeners:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 238
    iput-object v1, p0, Lcom/amazon/kcp/search/BaseBookSearchController;->listeners:Ljava/util/ArrayList;

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchController;->searchStopper:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 242
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 243
    iput-object v1, p0, Lcom/amazon/kcp/search/BaseBookSearchController;->searchStopper:Ljava/lang/Runnable;

    .line 246
    :cond_1
    iput-object v1, p0, Lcom/amazon/kcp/search/BaseBookSearchController;->results:Ljava/util/ArrayList;

    .line 248
    iput-object v1, p0, Lcom/amazon/kcp/search/BaseBookSearchController;->query:Ljava/lang/String;

    .line 249
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchController;->docViewerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method

.method public getCachedCurrentSearchResults()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/android/docviewer/BookSearchResult;",
            ">;"
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchController;->results:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amazon/kcp/search/BaseBookSearchController;->results:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    return-object v0
.end method

.method public getCachedSearchResults(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/android/docviewer/BookSearchResult;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 260
    invoke-virtual {p0}, Lcom/amazon/kcp/search/BaseBookSearchController;->isSearching()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchController;->query:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchController;->docViewerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_1

    .line 265
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getSearcher()Lcom/amazon/android/docviewer/KindleDocSearcher;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/KindleDocSearcher;->getCachedSearchResults(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1

    .line 261
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kcp/search/BaseBookSearchController;->getCachedCurrentSearchResults()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentProgress()J
    .locals 2

    .line 203
    iget-wide v0, p0, Lcom/amazon/kcp/search/BaseBookSearchController;->currentProgress:J

    return-wide v0
.end method

.method public getCurrentQuery()Ljava/lang/String;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchController;->query:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxProgress()J
    .locals 2

    .line 193
    iget-wide v0, p0, Lcom/amazon/kcp/search/BaseBookSearchController;->maxProgress:J

    return-wide v0
.end method

.method public isIndexAvailable()Z
    .locals 1

    .line 213
    iget-boolean v0, p0, Lcom/amazon/kcp/search/BaseBookSearchController;->indexAvailable:Z

    return v0
.end method

.method public isSearching()Z
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchController;->searchStopper:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeBookSearchListener(Lcom/amazon/kcp/search/IBookSearchController$IBookSearchListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 324
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchController;->listeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public startSearch(Ljava/lang/String;)V
    .locals 3

    .line 81
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchController;->docViewerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/KindleDocViewer;

    if-nez v0, :cond_1

    return-void

    .line 92
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/search/BaseBookSearchController;->isSearching()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 93
    iget-object v1, p0, Lcom/amazon/kcp/search/BaseBookSearchController;->query:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 94
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 100
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kcp/search/BaseBookSearchController;->stopSearch()V

    .line 105
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/kcp/search/BaseBookSearchController;->clearCachedSearchResults()V

    .line 107
    iget-object v1, p0, Lcom/amazon/kcp/search/BaseBookSearchController;->results:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 108
    iput-object p1, p0, Lcom/amazon/kcp/search/BaseBookSearchController;->query:Ljava/lang/String;

    .line 112
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getSearcher()Lcom/amazon/android/docviewer/KindleDocSearcher;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchController;->query:Ljava/lang/String;

    new-instance v1, Lcom/amazon/kcp/search/BaseBookSearchController$2;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/search/BaseBookSearchController$2;-><init>(Lcom/amazon/kcp/search/BaseBookSearchController;)V

    iget-object v2, p0, Lcom/amazon/kcp/search/BaseBookSearchController;->statusTracker:Lcom/amazon/kindle/services/download/IStatusTracker;

    invoke-interface {p1, v0, v1, v2}, Lcom/amazon/android/docviewer/KindleDocSearcher;->search(Ljava/lang/String;Lcom/amazon/android/docviewer/KindleDocSearcher$SearchCallback;Lcom/amazon/kindle/services/download/IStatusTracker;)Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/search/BaseBookSearchController;->searchStopper:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 147
    iput-boolean p1, p0, Lcom/amazon/kcp/search/BaseBookSearchController;->wasCanceled:Z

    return-void
.end method

.method public stopSearch()V
    .locals 1

    .line 157
    invoke-virtual {p0}, Lcom/amazon/kcp/search/BaseBookSearchController;->isSearching()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 158
    iput-boolean v0, p0, Lcom/amazon/kcp/search/BaseBookSearchController;->wasCanceled:Z

    .line 159
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchController;->searchStopper:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 160
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 162
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/search/BaseBookSearchController;->notifySearchEnd()V

    :cond_1
    return-void
.end method

.method public wasCanceled()Z
    .locals 1

    .line 183
    iget-boolean v0, p0, Lcom/amazon/kcp/search/BaseBookSearchController;->wasCanceled:Z

    return v0
.end method
