.class public abstract Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;
.super Ljava/lang/Object;
.source "BookmarkManager.java"

# interfaces
.implements Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mBookmarksMetricTag:Ljava/lang/String;

.field private mLoadExecutor:Ljava/util/concurrent/ExecutorService;

.field private mLocalPeriodicalStateFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/nwstd/persistence/LocalPeriodicalState;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalState:Lcom/amazon/nwstd/persistence/LocalPeriodicalState;

.field protected final m_addedEvent:Lcom/amazon/foundation/internal/ObjectEventProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/foundation/internal/ObjectEventProvider<",
            "Lcom/amazon/android/docviewer/bookmarks/IBookmark;",
            ">;"
        }
    .end annotation
.end field

.field private final m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

.field protected final m_deletedEvent:Lcom/amazon/foundation/internal/ObjectEventProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/foundation/internal/ObjectEventProvider<",
            "Lcom/amazon/android/docviewer/bookmarks/IBookmark;",
            ">;"
        }
    .end annotation
.end field

.field private m_toggleEvent:Lcom/amazon/foundation/internal/IntEventProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/model/content/ILocalBookItem;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->mLocalState:Lcom/amazon/nwstd/persistence/LocalPeriodicalState;

    .line 53
    new-instance v0, Lcom/amazon/foundation/internal/IntEventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/IntEventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->m_toggleEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    .line 69
    invoke-static {p1}, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->getBookmarksMetricTag(Lcom/amazon/kindle/model/content/ILocalBookItem;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->mBookmarksMetricTag:Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    .line 72
    new-instance p1, Lcom/amazon/foundation/internal/ObjectEventProvider;

    invoke-direct {p1}, Lcom/amazon/foundation/internal/ObjectEventProvider;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->m_addedEvent:Lcom/amazon/foundation/internal/ObjectEventProvider;

    .line 73
    new-instance p1, Lcom/amazon/foundation/internal/ObjectEventProvider;

    invoke-direct {p1}, Lcom/amazon/foundation/internal/ObjectEventProvider;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->m_deletedEvent:Lcom/amazon/foundation/internal/ObjectEventProvider;

    .line 75
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->mLoadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 76
    new-instance v0, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager$1;

    invoke-direct {v0, p0}, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager$1;-><init>(Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->mLocalPeriodicalStateFuture:Ljava/util/concurrent/Future;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;)Lcom/amazon/nwstd/persistence/LocalPeriodicalState;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->mLocalState:Lcom/amazon/nwstd/persistence/LocalPeriodicalState;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;)Lcom/amazon/kindle/model/content/ILocalBookItem;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private stopExecutor()V
    .locals 4

    .line 102
    iget-object v0, p0, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->mLoadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->mLoadExecutor:Ljava/util/concurrent/ExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->mLoadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 108
    iget-object v0, p0, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->mLoadExecutor:Ljava/util/concurrent/ExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    sget-object v0, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->TAG:Ljava/lang/String;

    const/16 v1, 0x10

    const-string v2, "Bookmarks loading thread cancellation failed"

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->mLoadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 115
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method protected createBookmarkItem(IILjava/lang/String;Ljava/lang/String;)Lcom/amazon/android/docviewer/bookmarks/IBookmark;
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 201
    invoke-virtual/range {v0 .. v6}, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->createBookmarkItem(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/amazon/android/docviewer/bookmarks/IBookmark;

    move-result-object p1

    return-object p1
.end method

.method protected abstract createBookmarkItem(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/amazon/android/docviewer/bookmarks/IBookmark;
.end method

.method protected abstract createBookmarkItemForLocationIndex(II)Lcom/amazon/android/docviewer/bookmarks/IBookmark;
.end method

.method public getAddedEvent()Lcom/amazon/foundation/internal/ObjectEventProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/foundation/internal/ObjectEventProvider<",
            "Lcom/amazon/android/docviewer/bookmarks/IBookmark;",
            ">;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->m_addedEvent:Lcom/amazon/foundation/internal/ObjectEventProvider;

    return-object v0
.end method

.method public getBookmarkData()Ljava/util/Collection;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/android/docviewer/bookmarks/IBookmark;",
            ">;"
        }
    .end annotation

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 179
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->getLocalPeriodicalState()Lcom/amazon/nwstd/persistence/LocalPeriodicalState;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->getLocalPeriodicalState()Lcom/amazon/nwstd/persistence/LocalPeriodicalState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/nwstd/persistence/LocalPeriodicalState;->getBookmarkData()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData;

    .line 181
    invoke-virtual {v2}, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData;->getBookAsin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData;->getBookGuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData;->getPageId()I

    move-result v6

    .line 182
    invoke-virtual {v2}, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData;->getPosition()I

    move-result v7

    invoke-virtual {v2}, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData;->getArticleTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData;->getDescription()Ljava/lang/String;

    move-result-object v9

    move-object v3, p0

    .line 181
    invoke-virtual/range {v3 .. v9}, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->createBookmarkItem(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/amazon/android/docviewer/bookmarks/IBookmark;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected getBookmarkFromIndex(I)Lcom/amazon/android/docviewer/bookmarks/IBookmark;
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v3, p1

    .line 223
    invoke-virtual/range {v0 .. v6}, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->createBookmarkItem(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/amazon/android/docviewer/bookmarks/IBookmark;

    move-result-object p1

    return-object p1
.end method

.method public abstract getBookmarkableItems(I)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection<",
            "Lcom/amazon/android/docviewer/bookmarks/IBookmark;",
            ">;"
        }
    .end annotation
.end method

.method public getDeletedEvent()Lcom/amazon/foundation/internal/ObjectEventProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/foundation/internal/ObjectEventProvider<",
            "Lcom/amazon/android/docviewer/bookmarks/IBookmark;",
            ">;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->m_deletedEvent:Lcom/amazon/foundation/internal/ObjectEventProvider;

    return-object v0
.end method

.method protected getLocalPeriodicalState()Lcom/amazon/nwstd/persistence/LocalPeriodicalState;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->mLocalState:Lcom/amazon/nwstd/persistence/LocalPeriodicalState;

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->mLocalPeriodicalStateFuture:Ljava/util/concurrent/Future;

    invoke-static {v0}, Lcom/amazon/nwstd/utils/ConcurrentUtils;->getFutureResultNoThrow(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/nwstd/persistence/LocalPeriodicalState;

    iput-object v0, p0, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->mLocalState:Lcom/amazon/nwstd/persistence/LocalPeriodicalState;

    .line 62
    invoke-direct {p0}, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->stopExecutor()V

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->mLocalState:Lcom/amazon/nwstd/persistence/LocalPeriodicalState;

    return-object v0
.end method

.method public getMetricsTag()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->mBookmarksMetricTag:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getPeriodicalPageCount()I
.end method

.method public hasBookmarksForLocationIndex(I)Z
    .locals 1

    .line 249
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->getBookmarkableItems(I)Ljava/util/Collection;

    move-result-object p1

    .line 250
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/bookmarks/IBookmark;

    .line 251
    invoke-interface {v0}, Lcom/amazon/android/docviewer/bookmarks/IBookmark;->isBookmarked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isLocationBookmarked(II)Z
    .locals 1

    .line 145
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->getLocalPeriodicalState()Lcom/amazon/nwstd/persistence/LocalPeriodicalState;

    move-result-object v0

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->getLocalPeriodicalState()Lcom/amazon/nwstd/persistence/LocalPeriodicalState;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/amazon/nwstd/persistence/LocalPeriodicalState;->isLocationBookmarked(II)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public registerToggleEventCallback(Lcom/amazon/foundation/IIntCallback;)V
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->m_toggleEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    invoke-virtual {v0, p1}, Lcom/amazon/foundation/internal/IntEventProvider;->register(Lcom/amazon/foundation/IIntCallback;)Z

    return-void
.end method

.method public removeBookmarksForLocationIndex(I)Z
    .locals 5

    .line 230
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->getBookmarkableItems(I)Ljava/util/Collection;

    move-result-object v0

    .line 232
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/android/docviewer/bookmarks/IBookmark;

    .line 233
    invoke-interface {v2}, Lcom/amazon/android/docviewer/bookmarks/IBookmark;->isBookmarked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 234
    invoke-interface {v2}, Lcom/amazon/android/docviewer/bookmarks/IBookmark;->getPosition()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 235
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->toggleBookmarkForLocationIndex(I)Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;

    move-result-object v2

    goto :goto_1

    .line 238
    :cond_1
    invoke-interface {v2}, Lcom/amazon/android/docviewer/bookmarks/IBookmark;->getPosition()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->toggleBookmarkForLocationIndex(II)Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;

    move-result-object v2

    .line 240
    :goto_1
    sget-object v3, Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;->Error:Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    return v1
.end method

.method public saveBookmarks()V
    .locals 3

    .line 156
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->getLocalPeriodicalState()Lcom/amazon/nwstd/persistence/LocalPeriodicalState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->getLocalPeriodicalState()Lcom/amazon/nwstd/persistence/LocalPeriodicalState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/model/content/LocalBookState;->persist()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 163
    sget-object v1, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->TAG:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public toggleBookmarkForLocationIndex(I)Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;
    .locals 4

    .line 259
    sget-object v0, Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;->Error:Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;

    .line 260
    invoke-static {}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->getInstance()Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;

    .line 262
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getActiveContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$bool;->nwstd_popup_bookmark_list_enabled:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 265
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->getBookmarkableItems(I)Ljava/util/Collection;

    move-result-object v2

    .line 266
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/bookmarks/IBookmark;

    :cond_0
    if-eqz v0, :cond_1

    .line 273
    invoke-interface {v0}, Lcom/amazon/android/docviewer/bookmarks/IBookmark;->getPosition()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->toggleBookmarkForLocationIndex(II)Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;

    move-result-object p1

    goto :goto_0

    .line 275
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->toggleBookmarkForLocationIndex(II)Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;

    move-result-object p1

    goto :goto_0

    .line 278
    :cond_2
    invoke-virtual {p0, p1, v1}, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->toggleBookmarkForLocationIndex(II)Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public toggleBookmarkForLocationIndex(II)Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;
    .locals 9

    .line 285
    sget-object v0, Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;->Error:Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;

    .line 287
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->getLocalPeriodicalState()Lcom/amazon/nwstd/persistence/LocalPeriodicalState;

    move-result-object v1

    if-eqz v1, :cond_1

    if-ltz p1, :cond_1

    .line 288
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->getPeriodicalPageCount()I

    move-result v2

    if-ge p1, v2, :cond_1

    const/4 v2, -0x1

    if-lt p2, v2, :cond_1

    .line 290
    invoke-virtual {v1, p1, p2}, Lcom/amazon/nwstd/persistence/LocalPeriodicalState;->isLocationBookmarked(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {v1, p1, p2}, Lcom/amazon/nwstd/persistence/LocalPeriodicalState;->removeBookmark(II)V

    .line 292
    iget-object v0, p0, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->m_deletedEvent:Lcom/amazon/foundation/internal/ObjectEventProvider;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v7}, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->createBookmarkItem(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/amazon/android/docviewer/bookmarks/IBookmark;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/amazon/foundation/internal/ObjectEventProvider;->notifyListeners(Ljava/lang/Object;)V

    .line 293
    sget-object p2, Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;->Deleted:Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;

    goto :goto_0

    .line 295
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->createBookmarkItemForLocationIndex(II)Lcom/amazon/android/docviewer/bookmarks/IBookmark;

    move-result-object v0

    .line 296
    invoke-interface {v0}, Lcom/amazon/android/docviewer/bookmarks/IBookmark;->getArticleTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/amazon/android/docviewer/bookmarks/IBookmark;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/amazon/nwstd/persistence/LocalPeriodicalState;->addBookmark(IILjava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v1, p0, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->m_addedEvent:Lcom/amazon/foundation/internal/ObjectEventProvider;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/bookmarks/IBookmark;->getArticleTitle()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0}, Lcom/amazon/android/docviewer/bookmarks/IBookmark;->getDescription()Ljava/lang/String;

    move-result-object v8

    move-object v2, p0

    move v5, p1

    move v6, p2

    invoke-virtual/range {v2 .. v8}, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->createBookmarkItem(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/amazon/android/docviewer/bookmarks/IBookmark;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/amazon/foundation/internal/ObjectEventProvider;->notifyListeners(Ljava/lang/Object;)V

    .line 298
    sget-object p2, Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;->Added:Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;

    :goto_0
    move-object v0, p2

    .line 300
    iget-object p2, p0, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->m_toggleEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    invoke-virtual {p2, p1}, Lcom/amazon/foundation/internal/IntEventProvider;->notifyListeners(I)V

    :cond_1
    return-object v0
.end method

.method public unregisterToggleEventCallback(Lcom/amazon/foundation/IIntCallback;)V
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->m_toggleEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    invoke-virtual {v0, p1}, Lcom/amazon/foundation/internal/IntEventProvider;->unregister(Lcom/amazon/foundation/IIntCallback;)Z

    return-void
.end method
