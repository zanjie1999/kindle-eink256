.class Lcom/amazon/android/docviewer/mobi/MobiPage;
.super Ljava/lang/Object;
.source "MobiPage.java"

# interfaces
.implements Lcom/amazon/android/docviewer/IDocumentPage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/docviewer/mobi/MobiPage$IKRFPageProvider;
    }
.end annotation


# static fields
.field private static final SELECTABLE_LIMIT:I = 0x2710


# instance fields
.field private firstPosId:I

.field private hasSelectableImage:Z

.field private isFirstPageOfChapter:Z

.field private krfTasksInflight:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask<",
            "*>;>;"
        }
    .end annotation
.end field

.field private lastPosId:I

.field private m_cachedCoveringRects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Vector<",
            "Landroid/graphics/Rect;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_cachedDecorativeRects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Vector<",
            "Landroid/graphics/Rect;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_hasTopazState:Z

.field private m_krfPage:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;

.field m_krfThread:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

.field private m_leftOffset:I

.field private m_leftSystemOffset:I

.field private m_pageProvider:Lcom/amazon/android/docviewer/mobi/MobiPage$IKRFPageProvider;

.field private m_topOffset:I

.field private m_topSystemOffset:I

.field private tagStack:[B

.field private type:J


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;ZLcom/amazon/android/docviewer/mobi/KRFExecutorService;)V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Lcom/amazon/kcp/library/models/ConcurrentHashSet;

    invoke-direct {v0}, Lcom/amazon/kcp/library/models/ConcurrentHashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->krfTasksInflight:Ljava/util/Set;

    .line 100
    iput-object p3, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->m_krfThread:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    .line 101
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->m_cachedCoveringRects:Ljava/util/Map;

    .line 102
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->m_cachedDecorativeRects:Ljava/util/Map;

    const/4 p3, 0x0

    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/android/docviewer/mobi/MobiPage;->doUpdatePage(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;ZLcom/amazon/android/docviewer/mobi/MobiPage$IKRFPageProvider;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/android/docviewer/mobi/MobiPage;Lcom/amazon/kindle/performance/KindlePerformanceConstants;Z)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/amazon/android/docviewer/mobi/MobiPage;->logPerformanceMetric(Lcom/amazon/kindle/performance/KindlePerformanceConstants;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/android/docviewer/mobi/MobiPage;)Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->m_krfPage:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/android/docviewer/mobi/MobiPage;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->m_leftOffset:I

    return p0
.end method

.method static synthetic access$300(Lcom/amazon/android/docviewer/mobi/MobiPage;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->m_topOffset:I

    return p0
.end method

.method static synthetic access$400(Lcom/amazon/android/docviewer/mobi/MobiPage;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->m_leftSystemOffset:I

    return p0
.end method

.method static synthetic access$500(Lcom/amazon/android/docviewer/mobi/MobiPage;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->m_topSystemOffset:I

    return p0
.end method

.method private doUpdatePage(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;ZLcom/amazon/android/docviewer/mobi/MobiPage$IKRFPageProvider;)V
    .locals 2

    .line 201
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->m_krfPage:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;

    .line 202
    iput-boolean p2, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->m_hasTopazState:Z

    .line 203
    iput-object p3, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->m_pageProvider:Lcom/amazon/android/docviewer/mobi/MobiPage$IKRFPageProvider;

    const/4 p2, 0x0

    .line 204
    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->tagStack:[B

    .line 205
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->m_cachedCoveringRects:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 206
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->m_cachedDecorativeRects:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 209
    sget-object p1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->KRF_GET_FIRST_POSITION_ID:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    const/4 p3, 0x1

    invoke-direct {p0, p1, p3}, Lcom/amazon/android/docviewer/mobi/MobiPage;->logPerformanceMetric(Lcom/amazon/kindle/performance/KindlePerformanceConstants;Z)V

    .line 210
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->m_krfPage:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;

    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->getFirstPositionId()Lcom/amazon/kindle/krf/KRF/Reader/Position;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/krfhacks/KRFHacks;->positionToIntPosition(Lcom/amazon/kindle/krf/KRF/Reader/Position;)I

    move-result p1

    iput p1, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->firstPosId:I

    .line 211
    sget-object p1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->KRF_GET_FIRST_POSITION_ID:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-direct {p0, p1, p2}, Lcom/amazon/android/docviewer/mobi/MobiPage;->logPerformanceMetric(Lcom/amazon/kindle/performance/KindlePerformanceConstants;Z)V

    .line 212
    sget-object p1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->KRF_GET_LAST_POSITION_ID:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-direct {p0, p1, p3}, Lcom/amazon/android/docviewer/mobi/MobiPage;->logPerformanceMetric(Lcom/amazon/kindle/performance/KindlePerformanceConstants;Z)V

    .line 213
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->m_krfPage:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;

    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->getLastPositionId()Lcom/amazon/kindle/krf/KRF/Reader/Position;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/krfhacks/KRFHacks;->positionToIntPosition(Lcom/amazon/kindle/krf/KRF/Reader/Position;)I

    move-result p1

    iput p1, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->lastPosId:I

    .line 214
    sget-object p1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->KRF_GET_LAST_POSITION_ID:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-direct {p0, p1, p2}, Lcom/amazon/android/docviewer/mobi/MobiPage;->logPerformanceMetric(Lcom/amazon/kindle/performance/KindlePerformanceConstants;Z)V

    .line 216
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->m_krfPage:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;

    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->getPageType()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->type:J

    .line 218
    iput-boolean p2, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->hasSelectableImage:Z

    .line 219
    iput-boolean p2, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->isFirstPageOfChapter:Z

    .line 220
    iget-boolean p1, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->m_hasTopazState:Z

    if-nez p1, :cond_1

    .line 221
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->m_krfPage:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;

    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->createPageSnapshotInfo()Lcom/amazon/kindle/krf/KRF/Reader/IPageSnapshotInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 224
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IPageSnapshotInfo;->getBuffer()Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;->getDataConst()[B

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->tagStack:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IPageSnapshotInfo;->delete()V

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IPageSnapshotInfo;->delete()V

    .line 227
    throw p2

    .line 231
    :cond_0
    iput p2, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->firstPosId:I

    .line 232
    iput p2, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->lastPosId:I

    .line 233
    invoke-static {}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->getKPageTypeUnknown()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->type:J

    .line 234
    iput-boolean p2, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->hasSelectableImage:Z

    .line 235
    iput-boolean p2, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->isFirstPageOfChapter:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private logPerformanceMetric(Lcom/amazon/kindle/performance/KindlePerformanceConstants;Z)V
    .locals 1

    .line 519
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 520
    invoke-static {v0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->currentBookInfo()Lcom/amazon/kindle/model/content/ILocalBookInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 523
    invoke-virtual {p1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 525
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public createCoveringRectangles(II)Ljava/util/Vector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Vector<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 372
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiPage;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    int-to-long v0, p1

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p2

    or-long/2addr v0, v2

    .line 376
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 377
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->m_cachedCoveringRects:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    if-eqz v1, :cond_1

    return-object v1

    .line 382
    :cond_1
    new-instance v1, Lcom/amazon/android/docviewer/mobi/MobiPage$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/android/docviewer/mobi/MobiPage$4;-><init>(Lcom/amazon/android/docviewer/mobi/MobiPage;II)V

    .line 416
    new-instance p1, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;

    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->m_krfThread:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p1, p2, v1}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;-><init>(Lcom/amazon/android/docviewer/mobi/KRFExecutorService;Ljava/util/concurrent/Callable;)V

    .line 417
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->krfTasksInflight:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 418
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->m_krfThread:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    invoke-virtual {p2, p1}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->submitBlockingTaskToKRFThread(Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Vector;

    .line 419
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->m_cachedCoveringRects:Ljava/util/Map;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->krfTasksInflight:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-object p2
.end method

.method public createText(III)Ljava/lang/String;
    .locals 1

    .line 479
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiPage;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 483
    :cond_0
    new-instance v0, Lcom/amazon/android/docviewer/mobi/MobiPage$6;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/android/docviewer/mobi/MobiPage$6;-><init>(Lcom/amazon/android/docviewer/mobi/MobiPage;III)V

    .line 491
    new-instance p1, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;

    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->m_krfThread:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p1, p2, v0}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;-><init>(Lcom/amazon/android/docviewer/mobi/KRFExecutorService;Ljava/util/concurrent/Callable;)V

    .line 492
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->krfTasksInflight:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 493
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->m_krfThread:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    invoke-virtual {p2, p1}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->submitBlockingTaskToKRFThread(Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 494
    iget-object p3, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->krfTasksInflight:Ljava/util/Set;

    invoke-interface {p3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-object p2
.end method

.method public getDecorativeRectangles()Ljava/util/Vector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 426
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiPage;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 430
    :cond_0
    iget v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->firstPosId:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget v2, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->lastPosId:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 431
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->m_cachedDecorativeRects:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    if-eqz v1, :cond_1

    return-object v1

    .line 436
    :cond_1
    new-instance v1, Lcom/amazon/android/docviewer/mobi/MobiPage$5;

    invoke-direct {v1, p0}, Lcom/amazon/android/docviewer/mobi/MobiPage$5;-><init>(Lcom/amazon/android/docviewer/mobi/MobiPage;)V

    .line 469
    new-instance v2, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;

    iget-object v3, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->m_krfThread:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3, v1}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;-><init>(Lcom/amazon/android/docviewer/mobi/KRFExecutorService;Ljava/util/concurrent/Callable;)V

    .line 470
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->krfTasksInflight:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 471
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->m_krfThread:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    invoke-virtual {v1, v2}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->submitBlockingTaskToKRFThread(Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    .line 472
    iget-object v3, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->m_cachedDecorativeRects:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->krfTasksInflight:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public getElementAtPoint(IIIZ)Lcom/amazon/android/docviewer/IPageElement;
    .locals 7

    .line 324
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiPage;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 328
    :cond_0
    new-instance v6, Lcom/amazon/android/docviewer/mobi/MobiPage$2;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/android/docviewer/mobi/MobiPage$2;-><init>(Lcom/amazon/android/docviewer/mobi/MobiPage;IIIZ)V

    .line 337
    new-instance p1, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;

    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->m_krfThread:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p1, p2, v6}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;-><init>(Lcom/amazon/android/docviewer/mobi/KRFExecutorService;Ljava/util/concurrent/Callable;)V

    .line 338
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->krfTasksInflight:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 339
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->m_krfThread:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    invoke-virtual {p2, p1}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->submitBlockingTaskToKRFThread(Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/android/docviewer/IPageElement;

    .line 340
    iget-object p3, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->krfTasksInflight:Ljava/util/Set;

    invoke-interface {p3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-object p2
.end method

.method public getElementClosestToPoint(IIIZ)Lcom/amazon/android/docviewer/IPageElement;
    .locals 7

    .line 346
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiPage;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 350
    :cond_0
    new-instance v6, Lcom/amazon/android/docviewer/mobi/MobiPage$3;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/android/docviewer/mobi/MobiPage$3;-><init>(Lcom/amazon/android/docviewer/mobi/MobiPage;IIIZ)V

    .line 363
    new-instance p1, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;

    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->m_krfThread:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p1, p2, v6}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;-><init>(Lcom/amazon/android/docviewer/mobi/KRFExecutorService;Ljava/util/concurrent/Callable;)V

    .line 364
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->krfTasksInflight:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 365
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->m_krfThread:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    invoke-virtual {p2, p1}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->submitBlockingTaskToKRFThread(Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/android/docviewer/IPageElement;

    .line 366
    iget-object p3, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->krfTasksInflight:Ljava/util/Set;

    invoke-interface {p3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-object p2
.end method

.method public getElements()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lcom/amazon/android/docviewer/IPageElement;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    .line 284
    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/mobi/MobiPage;->getElements(I)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public getElements(I)Ljava/util/Vector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Vector<",
            "Lcom/amazon/android/docviewer/IPageElement;",
            ">;"
        }
    .end annotation

    .line 289
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiPage;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    return-object p1

    .line 295
    :cond_0
    new-instance v0, Lcom/amazon/android/docviewer/mobi/MobiPage$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/android/docviewer/mobi/MobiPage$1;-><init>(Lcom/amazon/android/docviewer/mobi/MobiPage;I)V

    .line 313
    new-instance p1, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->m_krfThread:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p1, v1, v0}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;-><init>(Lcom/amazon/android/docviewer/mobi/KRFExecutorService;Ljava/util/concurrent/Callable;)V

    .line 314
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->krfTasksInflight:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 315
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->m_krfThread:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->submitBlockingTaskToKRFThread(Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 316
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->krfTasksInflight:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 319
    :cond_1
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    :goto_0
    return-object v0
.end method

.method public declared-synchronized getFirstElementPositionId()I
    .locals 1

    monitor-enter p0

    .line 252
    :try_start_0
    iget v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->firstPosId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getKRFPage()Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->m_krfPage:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->m_pageProvider:Lcom/amazon/android/docviewer/mobi/MobiPage$IKRFPageProvider;

    if-eqz v0, :cond_0

    .line 146
    invoke-interface {v0}, Lcom/amazon/android/docviewer/mobi/MobiPage$IKRFPageProvider;->getKRFPage()Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;

    move-result-object v0

    iget-boolean v1, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->m_hasTopazState:Z

    invoke-virtual {p0, v0, v1}, Lcom/amazon/android/docviewer/mobi/MobiPage;->updatePage(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;Z)V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->m_krfPage:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;

    return-object v0
.end method

.method public declared-synchronized getLastElementPositionId()I
    .locals 1

    monitor-enter p0

    .line 257
    :try_start_0
    iget v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->lastPosId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPageState(I)[B
    .locals 1

    .line 501
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiPage;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 505
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->m_hasTopazState:Z

    if-nez v0, :cond_1

    .line 506
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->tagStack:[B

    return-object p1

    :cond_1
    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 508
    :cond_2
    iget p1, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->firstPosId:I

    :goto_0
    invoke-static {p1}, Lcom/amazon/krfhacks/KRFHacks;->getTopazPageState(I)[B

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized getPageType()J
    .locals 2

    monitor-enter p0

    .line 261
    :try_start_0
    iget-wide v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->type:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isValid()Z
    .locals 1

    monitor-enter p0

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->m_krfPage:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized krfPageAvailible()Z
    .locals 1

    monitor-enter p0

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->m_krfPage:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->m_pageProvider:Lcom/amazon/android/docviewer/mobi/MobiPage$IKRFPageProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setPagePageOffset(II)V
    .locals 1

    .line 116
    iget v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->m_leftOffset:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->m_topOffset:I

    if-ne v0, p2, :cond_0

    return-void

    .line 120
    :cond_0
    iput p1, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->m_leftOffset:I

    .line 121
    iput p2, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->m_topOffset:I

    .line 122
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->m_cachedCoveringRects:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 123
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->m_cachedDecorativeRects:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    return-void
.end method

.method setSystemUIOffsets(II)V
    .locals 0

    .line 134
    iput p1, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->m_leftSystemOffset:I

    .line 135
    iput p2, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->m_topSystemOffset:I

    return-void
.end method

.method public declared-synchronized updatePage(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;Z)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 168
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/android/docviewer/mobi/MobiPage;->updatePage(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;ZLcom/amazon/android/docviewer/mobi/MobiPage$IKRFPageProvider;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updatePage(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;ZLcom/amazon/android/docviewer/mobi/MobiPage$IKRFPageProvider;)V
    .locals 0

    monitor-enter p0

    .line 178
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/android/docviewer/mobi/MobiPage;->doUpdatePage(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;ZLcom/amazon/android/docviewer/mobi/MobiPage$IKRFPageProvider;)V

    .line 181
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->krfTasksInflight:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 182
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->krfTasksInflight:Ljava/util/Set;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 183
    :try_start_1
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->krfTasksInflight:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;

    .line 184
    invoke-virtual {p3}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;->cancelTask()V

    goto :goto_0

    .line 186
    :cond_0
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/MobiPage;->krfTasksInflight:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->clear()V

    .line 187
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 189
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
