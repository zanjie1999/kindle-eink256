.class final Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks$1;
.super Ljava/lang/Object;
.source "ReddingActivityLifecycleCallbacks.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;->recordBookOpenEvent(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 294
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 298
    :cond_0
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    .line 299
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 300
    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v1, :cond_a

    if-eqz v3, :cond_a

    .line 303
    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v4

    .line 305
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 306
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string/jumbo v5, "nlnEnabled"

    .line 308
    invoke-static {v0}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->shouldUseNonLinearNavigation(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v11, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "ContentClass"

    .line 309
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v6

    invoke-interface {v6}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getContentClass()Lcom/amazon/kindle/model/content/ContentClass;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v11, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "MimeType"

    .line 310
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v6

    invoke-interface {v6}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v11, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "VerticalScrollReflowable"

    .line 312
    iget-object v6, p0, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0, v6}, Lcom/amazon/kindle/yj/ContinuousScrollUtils;->getCSMetadata(Lcom/amazon/android/docviewer/KindleDocViewer;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v11, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v5, "activityInMultiWindow"

    .line 316
    iget-object v6, p0, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks$1;->val$activity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;->access$100(Landroid/app/Activity;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v11, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    invoke-interface {v3}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v5

    invoke-interface {v3}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3}, Lcom/amazon/kindle/krx/content/IBook;->getGuid()Ljava/lang/String;

    move-result-object v7

    .line 324
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getStartReadingPosition()I

    move-result v8

    invoke-static {v1}, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;->access$200(Lcom/amazon/android/docviewer/KindleDoc;)I

    move-result v9

    .line 325
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookEndPosition()I

    move-result v10

    .line 318
    invoke-interface/range {v4 .. v11}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->openContent(Lcom/amazon/kindle/krx/content/ContentType;Ljava/lang/String;Ljava/lang/String;IIILjava/util/Map;)V

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    .line 335
    invoke-interface {v2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amazon/kindle/download/MimeTypeHelper;->isYellowJerseyEBookMimeType(Ljava/lang/String;)Z

    move-result v5

    .line 336
    sget-object v6, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_4

    sget-object v6, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    .line 337
    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v6, 0x1

    :goto_2
    if-nez v5, :cond_5

    if-eqz v6, :cond_6

    :cond_5
    const/4 v4, 0x1

    :cond_6
    if-nez v4, :cond_7

    .line 341
    iget-object v4, p0, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0, v4}, Lcom/amazon/kcp/readingstreams/ReadingStreamUtil;->recordPageTurnEvent(Lcom/amazon/android/docviewer/KindleDocViewer;Landroid/content/Context;)V

    .line 346
    :cond_7
    iget-object v4, p0, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks$1;->val$activity:Landroid/app/Activity;

    check-cast v4, Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v4}, Lcom/amazon/kcp/reader/ReaderActivity;->recordSettings()V

    if-eqz v2, :cond_8

    .line 349
    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/library/models/BookType;->getName()Ljava/lang/String;

    move-result-object v2

    .line 350
    invoke-static {v1}, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;->access$200(Lcom/amazon/android/docviewer/KindleDoc;)I

    move-result v4

    invoke-static {v3, v1, v4, v2}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;->startReadingSession(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/android/docviewer/KindleDoc;ILjava/lang/String;)V

    goto :goto_3

    .line 352
    :cond_8
    invoke-static {v1}, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;->access$200(Lcom/amazon/android/docviewer/KindleDoc;)I

    move-result v2

    invoke-static {v3, v1, v2}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;->startReadingSession(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/android/docviewer/KindleDoc;I)V

    .line 355
    :goto_3
    invoke-static {}, Lcom/amazon/kindle/displaymask/DisplayMaskMetricsManager;->getInstance()Lcom/amazon/kindle/displaymask/DisplayMaskMetrics;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks$1;->val$activity:Landroid/app/Activity;

    invoke-interface {v1, v2}, Lcom/amazon/kindle/displaymask/DisplayMaskMetrics;->onBookOpened(Landroid/content/Context;)V

    .line 357
    invoke-static {}, Lcom/amazon/kcp/debug/DarkModeUtils;->isPhaseThreeEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 358
    invoke-static {}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->instance()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->bookLoadEventCalled()V

    .line 361
    :cond_9
    invoke-static {v0}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->isNLNSupportedForMetric(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v1

    .line 362
    invoke-static {v1}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->setIsNlnSupported(Z)V

    .line 363
    iget-object v1, p0, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks$1;->val$activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/amazon/android/util/UIUtils;->isActivityInMultiWindowedMode(Landroid/app/Activity;)Z

    move-result v1

    invoke-static {v1}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->setInMultiWindowMode(Z)V

    .line 364
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getLastPositionRead()I

    move-result v1

    invoke-static {v1}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->setCurrentPosition(I)V

    .line 365
    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->LIBRARY:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    sget-object v2, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->OPEN_BOOK:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    invoke-static {v1, v2}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->recordMetrics(Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;)V

    .line 368
    invoke-static {}, Lcom/amazon/kcp/util/fastmetrics/ReadingRulerMetricsManager;->getInstance()Lcom/amazon/kcp/util/fastmetrics/ReadingRulerMetrics;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kcp/util/fastmetrics/ReadingRulerMetrics;->onBookOpened(Lcom/amazon/android/docviewer/KindleDocViewer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 371
    :catch_0
    invoke-static {}, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to record event recordBookOpenEvent"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_4
    return-void
.end method
