.class public Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;
.super Ljava/lang/Object;
.source "PageRenderDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$PageRange;,
        Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$Listener;
    }
.end annotation


# static fields
.field protected static final TOGGLEBOUNDS_NONE:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final UNKNOWN_POSITION:Lcom/amazon/kindle/krf/KRF/Reader/Position;


# instance fields
.field protected inToggleOffTransient:Z

.field protected final krfThread:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

.field private final m_asyncHandler:Landroid/os/Handler;

.field protected m_defaultPageProvider:Lcom/amazon/android/docviewer/mobi/IPageProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/android/docviewer/mobi/IPageProvider<",
            "Lcom/amazon/android/docviewer/mobi/MobiPage;",
            ">;"
        }
    .end annotation
.end field

.field protected m_lastUsedPageProvider:Lcom/amazon/android/docviewer/mobi/IPageProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/android/docviewer/mobi/IPageProvider<",
            "Lcom/amazon/android/docviewer/mobi/MobiPage;",
            ">;"
        }
    .end annotation
.end field

.field protected m_range:Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$PageRange;

.field protected m_renderElement:Lcom/amazon/android/docviewer/mobi/IMobiRenderElement;

.field protected final m_renderElementReadyListener:Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$Listener;

.field protected m_togglableActivated:Z

.field protected m_toggleIndex:I

.field protected final m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

.field protected pageId:I

.field protected volatile renderElementReady:Z

.field private renderTask:Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field protected toggleBounds:Landroid/util/Pair;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const v0, 0x7fffffff

    .line 32
    invoke-static {v0}, Lcom/amazon/krfhacks/KRFHacks;->intPositionToPosition(I)Lcom/amazon/kindle/krf/KRF/Reader/Position;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->UNKNOWN_POSITION:Lcom/amazon/kindle/krf/KRF/Reader/Position;

    .line 33
    new-instance v0, Landroid/util/Pair;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->TOGGLEBOUNDS_NONE:Landroid/util/Pair;

    return-void
.end method

.method constructor <init>(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$Listener;Lcom/amazon/android/docviewer/mobi/IPageProvider;Lcom/amazon/android/docviewer/mobi/IMobiRenderElementFactory;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/docviewer/mobi/MobiDocViewer;",
            "Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$Listener;",
            "Lcom/amazon/android/docviewer/mobi/IPageProvider<",
            "Lcom/amazon/android/docviewer/mobi/MobiPage;",
            ">;",
            "Lcom/amazon/android/docviewer/mobi/IMobiRenderElementFactory;",
            ")V"
        }
    .end annotation

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->m_togglableActivated:Z

    .line 60
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->inToggleOffTransient:Z

    .line 62
    sget-object v1, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->TOGGLEBOUNDS_NONE:Landroid/util/Pair;

    iput-object v1, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->toggleBounds:Landroid/util/Pair;

    .line 63
    iput v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->m_toggleIndex:I

    .line 131
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    .line 132
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getKRFExecutorService()Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->krfThread:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    .line 133
    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->m_renderElementReadyListener:Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$Listener;

    .line 134
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->renderElementReady:Z

    .line 135
    iput-object p3, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->m_defaultPageProvider:Lcom/amazon/android/docviewer/mobi/IPageProvider;

    const/4 p1, 0x0

    .line 136
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->m_lastUsedPageProvider:Lcom/amazon/android/docviewer/mobi/IPageProvider;

    .line 137
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->krfThread:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->getKRFCallbackHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->m_asyncHandler:Landroid/os/Handler;

    .line 138
    invoke-interface {p4}, Lcom/amazon/android/docviewer/mobi/IMobiRenderElementFactory;->create()Lcom/amazon/android/docviewer/mobi/IMobiRenderElement;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->m_renderElement:Lcom/amazon/android/docviewer/mobi/IMobiRenderElement;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;)Landroid/os/Handler;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->m_asyncHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$102(Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;)Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->renderTask:Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;

    return-object p1
.end method

.method private cancelRenderTask()V
    .locals 2

    const/4 v0, 0x0

    .line 172
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->renderElementReady:Z

    .line 173
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->renderTask:Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 174
    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;->cancelTask(Z)V

    const/4 v0, 0x0

    .line 175
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->renderTask:Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;

    :cond_0
    return-void
.end method

.method private notifyOnRenderElementInvalidated(Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$Listener;I)V
    .locals 2

    .line 446
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 447
    invoke-interface {p1, p2}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$Listener;->onRenderElementInvalidated(I)V

    goto :goto_0

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->m_asyncHandler:Landroid/os/Handler;

    new-instance v1, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$5;-><init>(Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$Listener;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method customRenderTask(Lcom/amazon/android/docviewer/mobi/IPageProvider;Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$Listener;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/docviewer/mobi/IPageProvider<",
            "Lcom/amazon/android/docviewer/mobi/MobiPage;",
            ">;",
            "Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$Listener;",
            "Z)V"
        }
    .end annotation

    .line 367
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->cancelRenderTask()V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 368
    :cond_0
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->m_defaultPageProvider:Lcom/amazon/android/docviewer/mobi/IPageProvider;

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->m_renderElementReadyListener:Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$Listener;

    :goto_1
    iget v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->pageId:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->render(Lcom/amazon/android/docviewer/mobi/IPageProvider;Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$Listener;ZI)V

    return-void
.end method

.method dispose()V
    .locals 1

    .line 142
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->cancelRenderTask()V

    .line 143
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->m_renderElement:Lcom/amazon/android/docviewer/mobi/IMobiRenderElement;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/mobi/IMobiRenderElement;->dispose()V

    const/4 v0, 0x0

    .line 144
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->m_defaultPageProvider:Lcom/amazon/android/docviewer/mobi/IPageProvider;

    .line 145
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->m_lastUsedPageProvider:Lcom/amazon/android/docviewer/mobi/IPageProvider;

    .line 146
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->m_range:Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$PageRange;

    return-void
.end method

.method doSwap(Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$PageRange;)V
    .locals 2

    .line 334
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->m_renderElement:Lcom/amazon/android/docviewer/mobi/IMobiRenderElement;

    .line 335
    iget-object v1, p1, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->m_renderElement:Lcom/amazon/android/docviewer/mobi/IMobiRenderElement;

    iput-object v1, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->m_renderElement:Lcom/amazon/android/docviewer/mobi/IMobiRenderElement;

    .line 336
    iput-object v0, p1, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->m_renderElement:Lcom/amazon/android/docviewer/mobi/IMobiRenderElement;

    .line 337
    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->m_range:Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$PageRange;

    const/4 p1, 0x1

    .line 338
    iput-boolean p1, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->renderElementReady:Z

    .line 339
    iget p2, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->pageId:I

    .line 340
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->m_renderElementReadyListener:Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$Listener;

    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {p0, v0, p2, p1}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->notifyOnRenderElementReady(Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$Listener;IZ)V

    :cond_0
    return-void
.end method

.method draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->m_renderElement:Lcom/amazon/android/docviewer/mobi/IMobiRenderElement;

    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/android/docviewer/mobi/IMobiRenderElement;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method forceBlocking()Z
    .locals 1

    .line 330
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->m_togglableActivated:Z

    return v0
.end method

.method public getActiveToggleIndex()I
    .locals 1

    .line 515
    iget v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->m_toggleIndex:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 220
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->isReadyToDraw()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->m_renderElement:Lcom/amazon/android/docviewer/mobi/IMobiRenderElement;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/mobi/IMobiRenderElement;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method getMobiPage()Lcom/amazon/android/docviewer/mobi/MobiPage;
    .locals 3

    .line 203
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->m_lastUsedPageProvider:Lcom/amazon/android/docviewer/mobi/IPageProvider;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 206
    :cond_0
    invoke-interface {v0}, Lcom/amazon/android/docviewer/mobi/IPageProvider;->getPage()Lcom/amazon/android/docviewer/IDocumentPage;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/mobi/MobiPage;

    if-eqz v0, :cond_2

    .line 207
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiPage;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getPageId()I
    .locals 1

    .line 195
    iget v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->pageId:I

    return v0
.end method

.method getPageRange()Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$PageRange;
    .locals 1

    .line 189
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->renderElementReady:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->m_range:Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$PageRange;

    return-object v0
.end method

.method public getTogglableByNavIndex(I)Lcom/amazon/kindle/krf/KRF/Reader/ITogglablePageElement;
    .locals 8

    .line 563
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->getTogglableNavigationBounds()Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    if-lt p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->getTogglableNavigationBounds()Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, p1, :cond_0

    goto :goto_1

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->m_defaultPageProvider:Lcom/amazon/android/docviewer/mobi/IPageProvider;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/mobi/IPageProvider;->getPage()Lcom/amazon/android/docviewer/IDocumentPage;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/mobi/MobiPage;

    if-eqz v0, :cond_3

    .line 568
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiPage;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 571
    :cond_1
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiPage;->getKRFPage()Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;

    move-result-object v0

    .line 573
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->getElements()Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePageElementAlterableArray;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    int-to-long v3, v2

    .line 574
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePageElementArray;->getCount()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-gez v7, :cond_3

    .line 575
    invoke-virtual {v0, v3, v4}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePageElementAlterableArray;->getItem(J)Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;

    move-result-object v3

    .line 576
    invoke-virtual {v3}, Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;->getType()I

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_2

    .line 577
    invoke-virtual {v3}, Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;->interpretAsITogglablePageElement()Lcom/amazon/kindle/krf/KRF/Reader/ITogglablePageElement;

    move-result-object v3

    .line 578
    invoke-virtual {v3}, Lcom/amazon/kindle/krf/KRF/Reader/ITogglablePageElement;->getOrdinal()I

    move-result v4

    if-ne v4, p1, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v1
.end method

.method public getTogglableElementById(Lcom/amazon/kindle/krf/KRF/Reader/Position;)Lcom/amazon/kindle/krf/KRF/Reader/ITogglablePageElement;
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 539
    sget-object v1, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->UNKNOWN_POSITION:Lcom/amazon/kindle/krf/KRF/Reader/Position;

    invoke-virtual {p1, v1}, Lcom/amazon/kindle/krf/KRF/Reader/Position;->valueEquals(Lcom/amazon/kindle/krf/KRF/Reader/Position;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 543
    :cond_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->m_defaultPageProvider:Lcom/amazon/android/docviewer/mobi/IPageProvider;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/mobi/IPageProvider;->getPage()Lcom/amazon/android/docviewer/IDocumentPage;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/mobi/MobiPage;

    if-eqz v1, :cond_3

    .line 544
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/MobiPage;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 547
    :cond_1
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/MobiPage;->getKRFPage()Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;

    move-result-object v1

    .line 549
    invoke-virtual {v1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->getElements()Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePageElementAlterableArray;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    int-to-long v3, v2

    .line 550
    invoke-virtual {v1}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePageElementArray;->getCount()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-gez v7, :cond_3

    .line 551
    invoke-virtual {v1, v3, v4}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePageElementAlterableArray;->getItem(J)Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;

    move-result-object v3

    .line 552
    invoke-virtual {v3}, Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;->getType()I

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_2

    .line 553
    invoke-virtual {v3}, Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;->getId()Lcom/amazon/kindle/krf/KRF/Reader/Position;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazon/kindle/krf/KRF/Reader/Position;->valueEquals(Lcom/amazon/kindle/krf/KRF/Reader/Position;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 554
    invoke-virtual {v3}, Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;->interpretAsITogglablePageElement()Lcom/amazon/kindle/krf/KRF/Reader/ITogglablePageElement;

    move-result-object p1

    return-object p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public getTogglableNavigationBounds()Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 468
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->toggleBounds:Landroid/util/Pair;

    sget-object v1, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->TOGGLEBOUNDS_NONE:Landroid/util/Pair;

    if-eq v0, v1, :cond_0

    return-object v0

    .line 472
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->refreshTogglableNavigationBounds()Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 216
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->isReadyToDraw()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->m_renderElement:Lcom/amazon/android/docviewer/mobi/IMobiRenderElement;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/mobi/IMobiRenderElement;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNextNavigationStop()Z
    .locals 2

    .line 523
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->getActiveToggleIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->getTogglableNavigationBounds()Landroid/util/Pair;

    move-result-object v1

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPrevNavigationStop()Z
    .locals 2

    .line 527
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->getActiveToggleIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->getTogglableNavigationBounds()Landroid/util/Pair;

    move-result-object v1

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method invalidate()V
    .locals 2

    .line 228
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->cancelRenderTask()V

    const/4 v0, 0x0

    .line 229
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->m_range:Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$PageRange;

    .line 230
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->m_renderElementReadyListener:Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$Listener;

    if-eqz v0, :cond_0

    .line 231
    iget v1, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->pageId:I

    invoke-direct {p0, v0, v1}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->notifyOnRenderElementInvalidated(Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$Listener;I)V

    :cond_0
    return-void
.end method

.method public isInToggleOffTransient()Z
    .locals 1

    .line 535
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->inToggleOffTransient:Z

    return v0
.end method

.method public isReadyToDraw()Z
    .locals 2

    .line 165
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PageRenderDrawable asked if ready to draw. renderElementReady: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->renderElementReady:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->m_renderElement:Lcom/amazon/android/docviewer/mobi/IMobiRenderElement;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/mobi/IMobiRenderElement;->readyToDraw()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->renderElementReady:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->m_togglableActivated:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->m_lastUsedPageProvider:Lcom/amazon/android/docviewer/mobi/IPageProvider;

    instance-of v0, v0, Lcom/amazon/android/docviewer/mobi/CachedPageProvider;

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method notifyOnRenderElementReady(Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$Listener;IZ)V
    .locals 2

    .line 432
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 433
    invoke-interface {p1, p2, p3}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$Listener;->onRenderElementReady(IZ)V

    goto :goto_0

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->m_asyncHandler:Landroid/os/Handler;

    new-instance v1, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$4;-><init>(Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$Listener;IZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method postRender()V
    .locals 0

    return-void
.end method

.method recycleRenderElement()V
    .locals 1

    .line 150
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->cancelRenderTask()V

    .line 151
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->m_renderElement:Lcom/amazon/android/docviewer/mobi/IMobiRenderElement;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/mobi/IMobiRenderElement;->recycle()V

    .line 152
    sget-object v0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->TOGGLEBOUNDS_NONE:Landroid/util/Pair;

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->toggleBounds:Landroid/util/Pair;

    const/4 v0, 0x0

    .line 153
    iput v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->m_toggleIndex:I

    return-void
.end method

.method refresh()V
    .locals 1

    const/4 v0, 0x0

    .line 267
    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->refreshPageAndSwapRenderElement(Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;)V

    return-void
.end method

.method refresh(Ljava/lang/Runnable;)V
    .locals 3

    .line 240
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->cancelRenderTask()V

    .line 242
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->m_defaultPageProvider:Lcom/amazon/android/docviewer/mobi/IPageProvider;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/mobi/IPageProvider;->getPage()Lcom/amazon/android/docviewer/IDocumentPage;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/mobi/MobiPage;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 243
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiPage;->krfPageAvailible()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->m_defaultPageProvider:Lcom/amazon/android/docviewer/mobi/IPageProvider;

    new-instance v1, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$1;-><init>(Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;Ljava/lang/Runnable;)V

    iget-boolean p1, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->m_togglableActivated:Z

    iget v2, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->pageId:I

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->render(Lcom/amazon/android/docviewer/mobi/IPageProvider;Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$Listener;ZI)V

    return-void

    .line 244
    :cond_2
    :goto_1
    iput-object v1, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->m_range:Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$PageRange;

    const/4 p1, 0x0

    .line 245
    iput-boolean p1, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->renderElementReady:Z

    return-void
.end method

.method refreshPageAndSwapRenderElement(Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;)V
    .locals 1

    const/4 v0, 0x0

    .line 285
    invoke-virtual {p0, p1, v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->refreshPageAndSwapRenderElement(Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;Z)V

    return-void
.end method

.method refreshPageAndSwapRenderElement(Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;Z)V
    .locals 4

    .line 296
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->cancelRenderTask()V

    .line 305
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->m_defaultPageProvider:Lcom/amazon/android/docviewer/mobi/IPageProvider;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/mobi/IPageProvider;->getPage()Lcom/amazon/android/docviewer/IDocumentPage;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/mobi/MobiPage;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 306
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiPage;->krfPageAvailible()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_2

    .line 311
    :cond_1
    new-instance v1, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$PageRange;

    iget-object v3, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v3}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$PageRange;-><init>(Lcom/amazon/android/docviewer/IDocumentPage;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 317
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->isReadyToDraw()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->m_range:Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$PageRange;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$PageRange;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 318
    invoke-virtual {p0, p1, v1}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->doSwap(Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$PageRange;)V

    goto :goto_1

    .line 325
    :cond_2
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->m_defaultPageProvider:Lcom/amazon/android/docviewer/mobi/IPageProvider;

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->m_renderElementReadyListener:Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$Listener;

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->forceBlocking()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz p2, :cond_4

    :cond_3
    const/4 v2, 0x1

    :cond_4
    iget p2, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->pageId:I

    invoke-virtual {p0, p1, v0, v2, p2}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->render(Lcom/amazon/android/docviewer/mobi/IPageProvider;Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$Listener;ZI)V

    :goto_1
    return-void

    .line 307
    :cond_5
    :goto_2
    iput-object v1, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->m_range:Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$PageRange;

    .line 308
    iput-boolean v2, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->renderElementReady:Z

    return-void
.end method

.method public refreshTogglableNavigationBounds()Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 479
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->m_defaultPageProvider:Lcom/amazon/android/docviewer/mobi/IPageProvider;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/mobi/IPageProvider;->getPage()Lcom/amazon/android/docviewer/IDocumentPage;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/mobi/MobiPage;

    if-eqz v0, :cond_6

    .line 480
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiPage;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 483
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiPage;->getKRFPage()Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;

    move-result-object v0

    .line 485
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->getElements()Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePageElementAlterableArray;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    :goto_0
    int-to-long v5, v1

    .line 486
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePageElementArray;->getCount()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-gez v9, :cond_5

    .line 487
    invoke-virtual {v0, v5, v6}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePageElementAlterableArray;->getItem(J)Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;

    move-result-object v5

    .line 488
    invoke-virtual {v5}, Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;->getType()I

    move-result v6

    const/16 v7, 0x20

    if-ne v6, v7, :cond_4

    .line 489
    invoke-virtual {v5}, Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;->interpretAsITogglablePageElement()Lcom/amazon/kindle/krf/KRF/Reader/ITogglablePageElement;

    move-result-object v5

    .line 490
    invoke-virtual {v5}, Lcom/amazon/kindle/krf/KRF/Reader/ITogglablePageElement;->getOrdinal()I

    move-result v5

    if-eq v3, v2, :cond_1

    if-le v3, v5, :cond_2

    :cond_1
    move v3, v5

    :cond_2
    if-eq v4, v2, :cond_3

    if-ge v4, v5, :cond_4

    :cond_3
    move v4, v5

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 501
    :cond_5
    new-instance v0, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->toggleBounds:Landroid/util/Pair;

    return-object v0

    .line 481
    :cond_6
    :goto_1
    sget-object v0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->TOGGLEBOUNDS_NONE:Landroid/util/Pair;

    return-object v0
.end method

.method render(Lcom/amazon/android/docviewer/mobi/IPageProvider;Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$Listener;ZI)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/docviewer/mobi/IPageProvider<",
            "Lcom/amazon/android/docviewer/mobi/MobiPage;",
            ">;",
            "Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$Listener;",
            "ZI)V"
        }
    .end annotation

    const-string v0, "PageRenderDrawable.render()"

    const/4 v1, 0x1

    .line 379
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 381
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->cancelRenderTask()V

    if-nez p3, :cond_0

    .line 382
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->m_renderElementReadyListener:Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$Listener;

    if-eqz v1, :cond_0

    .line 383
    iget v2, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->pageId:I

    invoke-direct {p0, v1, v2}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->notifyOnRenderElementInvalidated(Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$Listener;I)V

    .line 385
    :cond_0
    new-instance v1, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$2;

    invoke-direct {v1, p0, p1}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$2;-><init>(Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;Lcom/amazon/android/docviewer/mobi/IPageProvider;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    .line 417
    new-instance p1, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$3;

    invoke-direct {p1, p0, p2, p4}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$3;-><init>(Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$Listener;I)V

    .line 425
    :cond_1
    new-instance p2, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;

    iget-object p4, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->krfThread:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p2, p4, v1, p1}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;-><init>(Lcom/amazon/android/docviewer/mobi/KRFExecutorService;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->renderTask:Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;

    .line 426
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->krfThread:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    invoke-virtual {p1, p2, p3}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->submitTaskToKRFThread(Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;Z)V

    const/4 p1, 0x0

    .line 428
    invoke-static {v0, p1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method

.method public setInToggleOffTransient(Z)V
    .locals 0

    .line 531
    iput-boolean p1, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->inToggleOffTransient:Z

    return-void
.end method

.method setToggleableActived(ZI)V
    .locals 0

    .line 211
    iput-boolean p1, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->m_togglableActivated:Z

    .line 212
    iput p2, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->m_toggleIndex:I

    return-void
.end method

.method public updatePageId(I)V
    .locals 0

    .line 199
    iput p1, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->pageId:I

    return-void
.end method
