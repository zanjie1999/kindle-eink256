.class public Lcom/amazon/kcp/library/ContentInteractionHandler;
.super Ljava/lang/Object;
.source "ContentInteractionHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private actionButtonProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/krx/providers/IProviderRegistry<",
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;",
            "Lcom/amazon/kindle/krx/providers/IProvider<",
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;>;>;"
        }
    .end annotation
.end field

.field protected final activity:Landroidx/fragment/app/FragmentActivity;

.field protected final libraryFragmentClient:Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;

.field protected final readerController:Lcom/amazon/kcp/reader/ReaderController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    const-class v0, Lcom/amazon/kcp/library/ContentInteractionHandler;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/ContentInteractionHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/amazon/kcp/library/ContentInteractionHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    .line 71
    iput-object p2, p0, Lcom/amazon/kcp/library/ContentInteractionHandler;->libraryFragmentClient:Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;

    .line 72
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/reader/ReaderController;

    iput-object p1, p0, Lcom/amazon/kcp/library/ContentInteractionHandler;->readerController:Lcom/amazon/kcp/reader/ReaderController;

    return-void
.end method

.method private reportBookDownloadMetricsByType(Lcom/amazon/kcp/library/ILibraryDisplayItem;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 298
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 301
    sget-object v1, Lcom/amazon/kcp/library/ContentInteractionHandler$2;->$SwitchMap$com$amazon$kcp$library$models$BookType:[I

    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const-string v1, "EBook"

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const-string p1, "Sample"

    goto :goto_0

    :pswitch_1
    const-string/jumbo p1, "pDoc"

    goto :goto_0

    :pswitch_2
    const-string p1, "Periodical"

    goto :goto_0

    :pswitch_3
    move-object p1, v1

    .line 323
    :goto_0
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "ContentType"

    .line 324
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string p1, "DownloadContent"

    .line 327
    invoke-virtual {p0, p2, p1, v0}, Lcom/amazon/kcp/library/ContentInteractionHandler;->reportMetric(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private reportBookOpenedClickstreamMetrics(Ljava/lang/String;)V
    .locals 4

    .line 263
    iget-object v0, p0, Lcom/amazon/kcp/library/ContentInteractionHandler;->readerController:Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderController;->currentBookInfo()Lcom/amazon/kindle/model/content/ILocalBookInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 266
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v2

    const-string v3, "asin"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getAmzGuid()Ljava/lang/String;

    move-result-object v2

    const-string v3, "guid"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getMimeType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "filetype"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Opened"

    .line 269
    invoke-static {p1, v0, v1}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEventWithMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected completeOpenItem(Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 198
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/ContentInteractionHandler;->readerController:Lcom/amazon/kcp/reader/ReaderController;

    iget-object v2, p0, Lcom/amazon/kcp/library/ContentInteractionHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/amazon/kcp/library/ILibraryController;->openItemByIntent(Lcom/amazon/kcp/reader/IReaderController;Landroid/app/Activity;Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/content/Intent;)V

    if-eqz p1, :cond_1

    .line 199
    invoke-interface {p1}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/library/models/BookType;->isReaderContent()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 200
    invoke-static {p3}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 201
    invoke-direct {p0, p3}, Lcom/amazon/kcp/library/ContentInteractionHandler;->reportBookOpenedClickstreamMetrics(Ljava/lang/String;)V

    .line 203
    :cond_0
    invoke-virtual {p0, p4, p5}, Lcom/amazon/kcp/library/ContentInteractionHandler;->reportMetrics(Ljava/lang/String;Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method protected downloadItemAndReportMetrics(Lcom/amazon/kcp/library/ILibraryDisplayItem;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/view/View;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/view/View;",
            "Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;",
            ")V"
        }
    .end annotation

    .line 241
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    invoke-interface {v0, p1, p5, p6}, Lcom/amazon/kcp/library/ILibraryController;->checkForErrorAndDownloadItem(Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Z

    .line 242
    invoke-interface {p1}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p5

    invoke-interface {p5}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p5

    invoke-virtual {p5}, Lcom/amazon/kcp/library/models/BookType;->isReaderContent()Z

    move-result p5

    if-eqz p5, :cond_0

    .line 243
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/library/ContentInteractionHandler;->reportBookDownloadMetrics(Lcom/amazon/kcp/library/ILibraryDisplayItem;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public getActionButtonItemId(Lcom/amazon/kindle/krx/ui/IActionButton;)Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;>;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 356
    :try_start_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/IButton;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 358
    sget-object v0, Lcom/amazon/kcp/library/ContentInteractionHandler;->TAG:Ljava/lang/String;

    const-string v1, "Failed to get action button id"

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getActionButtons(Ljava/util/List;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;)",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;>;>;"
        }
    .end annotation

    .line 367
    invoke-static {}, Lcom/amazon/kindle/krx/KindleReaderSDK;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 369
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryUIManager()Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/ILibraryUIManager;->getContextualActionButtonProviderRegistry()Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/ContentInteractionHandler;->actionButtonProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/ContentInteractionHandler;->actionButtonProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/ContentInteractionHandler;->getIBookList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/providers/IProviderRegistry;->getAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getIBookList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;"
        }
    .end annotation

    .line 378
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 379
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    .line 380
    invoke-interface {v1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->toKrxBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 382
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getScreenletContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/amazon/kcp/library/ContentInteractionHandler;->libraryFragmentClient:Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;->getScreenletContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;

    move-result-object v0

    return-object v0
.end method

.method protected initAddToCollectionDialogFragment(Ljava/util/List;)Lcom/amazon/kcp/library/AddToCollectionDialogFragment;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;)",
            "Lcom/amazon/kcp/library/AddToCollectionDialogFragment;"
        }
    .end annotation

    .line 170
    invoke-static {p1}, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->newInstance(Ljava/util/List;)Lcom/amazon/kcp/library/AddToCollectionDialogFragment;

    move-result-object p1

    return-object p1
.end method

.method protected initDeleteOwnedSampleDialogFragment(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Lcom/amazon/kcp/library/DeleteOwnedSampleDialog;
    .locals 1

    .line 176
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->isLocal()Z

    move-result p1

    .line 175
    invoke-static {v0, p1}, Lcom/amazon/kcp/library/DeleteOwnedSampleDialog;->newInstance(Ljava/util/List;Z)Lcom/amazon/kcp/library/DeleteOwnedSampleDialog;

    move-result-object p1

    return-object p1
.end method

.method protected openItemAndReportMetrics(Lcom/amazon/kcp/library/ILibraryDisplayItem;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 215
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/library/ContentInteractionHandler$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/library/ContentInteractionHandler$1;-><init>(Lcom/amazon/kcp/library/ContentInteractionHandler;Lcom/amazon/kcp/library/ILibraryDisplayItem;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 223
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/content/Intent;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/kcp/library/ContentInteractionHandler;->completeOpenItem(Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 227
    sget-object p2, Lcom/amazon/kcp/library/ContentInteractionHandler;->TAG:Ljava/lang/String;

    const-string p3, "Failed to open book due to execution"

    invoke-static {p2, p3, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 225
    sget-object p2, Lcom/amazon/kcp/library/ContentInteractionHandler;->TAG:Ljava/lang/String;

    const-string p3, "Failed to open book due to interruption"

    invoke-static {p2, p3, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected prepOpenItem(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Landroid/content/Intent;
    .locals 3

    .line 186
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/ContentInteractionHandler;->readerController:Lcom/amazon/kcp/reader/ReaderController;

    iget-object v2, p0, Lcom/amazon/kcp/library/ContentInteractionHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-interface {v0, v1, p1, v2}, Lcom/amazon/kcp/library/ILibraryController;->signaledOpenItem(Lcom/amazon/kcp/reader/IReaderController;Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method protected reportAddToCollectionMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 157
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/kcp/library/ContentInteractionHandler;->reportMetric(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public reportBookDownloadMetrics(Lcom/amazon/kcp/library/ILibraryDisplayItem;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 281
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/library/ContentInteractionHandler;->reportBookDownloadMetricsByType(Lcom/amazon/kcp/library/ILibraryDisplayItem;Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0, p2, p3, p4}, Lcom/amazon/kcp/library/ContentInteractionHandler;->reportMetric(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method protected reportBookOpenedPerformanceForQA(Lcom/amazon/kcp/library/ILibraryDisplayItem;)V
    .locals 2

    .line 252
    invoke-interface {p1}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/BookType;->isReaderContent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->BOOK_OPEN:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-static {v0}, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->createStartEvent(Lcom/amazon/kindle/performance/KindlePerformanceConstants;)Lcom/amazon/kindle/performance/PerformanceEventBuilder;

    move-result-object v0

    .line 254
    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getAsin()Ljava/lang/String;

    move-result-object p1

    const-string v1, "asin"

    invoke-virtual {v0, v1, p1}, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->addMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/performance/PerformanceEventBuilder;

    invoke-virtual {v0}, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->buildAndSend()V

    :cond_0
    return-void
.end method

.method public reportMetric(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 334
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/kcp/library/ContentInteractionHandler;->reportMetric(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method protected reportMetric(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 338
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;Ljava/util/Map;)V

    return-void
.end method

.method protected reportMetrics(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 347
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 348
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/library/ContentInteractionHandler;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public showAddToCollectionView(Lcom/amazon/kcp/library/ILibraryDisplayItem;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 152
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/library/ContentInteractionHandler;->showAddToCollectionView(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public showAddToCollectionView(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 136
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/ContentInteractionHandler;->initAddToCollectionDialogFragment(Ljava/util/List;)Lcom/amazon/kcp/library/AddToCollectionDialogFragment;

    move-result-object p1

    .line 137
    iget-object v0, p0, Lcom/amazon/kcp/library/ContentInteractionHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "AddToCollectionDialog"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0, p2, p3, p4}, Lcom/amazon/kcp/library/ContentInteractionHandler;->reportAddToCollectionMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public showDeleteOwnedSampleDialog(Lcom/amazon/kcp/library/ILibraryDisplayItem;)V
    .locals 2

    .line 165
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/ContentInteractionHandler;->initDeleteOwnedSampleDialogFragment(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Lcom/amazon/kcp/library/DeleteOwnedSampleDialog;

    move-result-object p1

    .line 166
    iget-object v0, p0, Lcom/amazon/kcp/library/ContentInteractionHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "DeleteOwnedSampleDialog"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method viewBookInStore(Ljava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/amazon/kcp/library/ContentInteractionHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0, p1, p2}, Lcom/amazon/kindle/utils/StoreOpeners;->createBookDetailsOpener(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p1

    .line 97
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ContentInteractionHandler;->getScreenletContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazon/kindle/store/StoreOpener;->setScreenletContext(Lcom/amazon/kindle/krx/ui/ScreenletContext;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p1

    .line 98
    invoke-interface {p1, p5}, Lcom/amazon/kindle/store/StoreOpener;->setReferralTag(Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p1

    .line 99
    invoke-interface {p1}, Lcom/amazon/kindle/store/StoreOpener;->execute()V

    .line 100
    invoke-virtual {p0, p3, p4}, Lcom/amazon/kcp/library/ContentInteractionHandler;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method viewSeriesInStore(Ljava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/amazon/kcp/library/ContentInteractionHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0, p1, p2}, Lcom/amazon/kindle/utils/StoreOpeners;->createSeriesDetailsOpener(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p1

    .line 119
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ContentInteractionHandler;->getScreenletContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazon/kindle/store/StoreOpener;->setScreenletContext(Lcom/amazon/kindle/krx/ui/ScreenletContext;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p1

    .line 120
    invoke-interface {p1, p5}, Lcom/amazon/kindle/store/StoreOpener;->setReferralTag(Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p1

    .line 121
    invoke-interface {p1}, Lcom/amazon/kindle/store/StoreOpener;->execute()V

    .line 122
    invoke-virtual {p0, p3, p4}, Lcom/amazon/kcp/library/ContentInteractionHandler;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
