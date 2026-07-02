.class public Lcom/amazon/krf/platform/KRFView;
.super Landroid/widget/RelativeLayout;
.source "KRFView.java"

# interfaces
.implements Lcom/amazon/krf/platform/Disposable;
.implements Lcom/amazon/krf/platform/Navigable;
.implements Lcom/amazon/krf/platform/PageElementProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;,
        Lcom/amazon/krf/platform/KRFView$Orientation;,
        Lcom/amazon/krf/platform/KRFView$BoundsElements;,
        Lcom/amazon/krf/platform/KRFView$DummyPageElement;
    }
.end annotation


# static fields
.field public static final AUDIO_COMPONENT:I = 0x1

.field private static final KRF_CLASS_NAME:Ljava/lang/String; = "com.amazon.krf.platform.KRFView"

.field public static final MEDIA_COMPONENT:I = 0x3

.field public static final RENDERLOOP_COMPONENT:I = 0x4

.field public static final VIDEO_COMPONENT:I = 0x2


# instance fields
.field private mPageElementComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/amazon/krf/platform/element/PageElement;",
            ">;"
        }
    .end annotation
.end field

.field private m_contentDecorationEventListener:Lcom/amazon/krf/platform/ContentDecorationEventListener;

.field private m_contentView:Lcom/amazon/krf/internal/KRFGLESView;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, v0}, Lcom/amazon/krf/platform/KRFView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 77
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 293
    new-instance v0, Lcom/amazon/krf/platform/KRFView$3;

    invoke-direct {v0, p0}, Lcom/amazon/krf/platform/KRFView$3;-><init>(Lcom/amazon/krf/platform/KRFView;)V

    iput-object v0, p0, Lcom/amazon/krf/platform/KRFView;->mPageElementComparator:Ljava/util/Comparator;

    .line 78
    new-instance v0, Lcom/amazon/krf/internal/KRFGLESView;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/krf/internal/KRFGLESView;-><init>(Lcom/amazon/krf/platform/KRFView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    .line 81
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 82
    iget-object p2, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {p0, p2, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x10

    if-lt p1, p2, :cond_0

    .line 84
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 85
    iget-object p2, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/krf/platform/KRFView;)Lcom/amazon/krf/internal/KRFGLESView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    return-object p0
.end method

.method static synthetic access$002(Lcom/amazon/krf/platform/KRFView;Lcom/amazon/krf/internal/KRFGLESView;)Lcom/amazon/krf/internal/KRFGLESView;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    return-object p1
.end method

.method private checkValid()V
    .locals 2

    .line 1139
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    if-eqz v0, :cond_0

    return-void

    .line 1140
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "KRFView functions cannot be used after a call to dispose()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getIndexOfElementFromPosition([Lcom/amazon/krf/platform/element/PageElement;Lcom/amazon/krf/platform/Position;)I
    .locals 3

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    .line 330
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_0

    .line 334
    :cond_0
    new-instance v1, Lcom/amazon/krf/platform/KRFView$DummyPageElement;

    invoke-direct {v1, p0, p2}, Lcom/amazon/krf/platform/KRFView$DummyPageElement;-><init>(Lcom/amazon/krf/platform/KRFView;Lcom/amazon/krf/platform/Position;)V

    iget-object v2, p0, Lcom/amazon/krf/platform/KRFView;->mPageElementComparator:Ljava/util/Comparator;

    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v1

    if-ltz v1, :cond_1

    return v1

    :cond_1
    if-ge v1, v0, :cond_2

    neg-int v1, v1

    add-int/lit8 v1, v1, -0x2

    .line 347
    aget-object p1, p1, v1

    invoke-virtual {p1}, Lcom/amazon/krf/platform/element/PageElement;->getPositionRange()Lcom/amazon/krf/platform/PositionRange;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/amazon/krf/platform/PositionRange;->contains(Lcom/amazon/krf/platform/Position;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public addBookBoundaryListener(Lcom/amazon/krf/platform/BookBoundaryListener;)V
    .locals 1

    .line 908
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 909
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/internal/KRFGLESView;->addBookBoundaryListener(Lcom/amazon/krf/platform/BookBoundaryListener;)V

    return-void
.end method

.method public addNavigationListener(Lcom/amazon/krf/platform/NavigationListener;)Z
    .locals 1

    .line 716
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 717
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/internal/KRFGLESView;->addNavigationListener(Lcom/amazon/krf/platform/NavigationListener;)Z

    move-result p1

    return p1
.end method

.method public addPanZoomListener(Lcom/amazon/krf/platform/PanZoomListener;)Z
    .locals 1

    .line 727
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 728
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/internal/KRFGLESView;->addPanZoomListener(Lcom/amazon/krf/platform/PanZoomListener;)Z

    move-result p1

    return p1
.end method

.method public addPlugin(Lcom/amazon/krf/platform/KRFPlugin;)V
    .locals 1

    .line 849
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 850
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/internal/KRFGLESView;->addPlugin(Lcom/amazon/krf/platform/KRFPlugin;)V

    return-void
.end method

.method public addSelectionChangeListener(Lcom/amazon/krf/platform/SelectionChangeListener;)V
    .locals 1

    .line 527
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 528
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/internal/KRFGLESView;->addSelectionChangeListener(Lcom/amazon/krf/platform/SelectionChangeListener;)V

    return-void
.end method

.method public addSettingsChangedListener(Lcom/amazon/krf/platform/SettingsChangedListener;)V
    .locals 1

    .line 1097
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 1098
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/internal/KRFGLESView;->addSettingsChangedListener(Lcom/amazon/krf/platform/SettingsChangedListener;)V

    return-void
.end method

.method public areSelectionsVisible()Z
    .locals 1

    .line 600
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 601
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/KRFGLESView;->areSelectionsVisible()Z

    move-result v0

    return v0
.end method

.method public attachContentViewer(Lcom/amazon/krf/platform/ContentViewer;)V
    .locals 1

    .line 1157
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/internal/KRFGLESView;->attachContentViewer(Lcom/amazon/krf/platform/ContentViewer;)V

    return-void
.end method

.method public bookDidFinishInitializing()V
    .locals 1

    .line 661
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 662
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/KRFGLESView;->bookDidFinishInitializing()V

    return-void
.end method

.method public bookWillFinishInitializing()V
    .locals 1

    .line 651
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 652
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/KRFGLESView;->bookWillFinishInitializing()V

    return-void
.end method

.method public canGoToCoverPage()Z
    .locals 1

    .line 791
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 792
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/KRFGLESView;->canGoToCoverPage()Z

    move-result v0

    return v0
.end method

.method public canGoToNextPage()Z
    .locals 1

    .line 767
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 768
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/KRFGLESView;->canGoToNextPage()Z

    move-result v0

    return v0
.end method

.method public canGoToPreviousPage()Z
    .locals 1

    .line 779
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 780
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/KRFGLESView;->canGoToPreviousPage()Z

    move-result v0

    return v0
.end method

.method public canGoToTableOfContentsPage()Z
    .locals 1

    .line 797
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 798
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/KRFGLESView;->canGoToTableOfContentsPage()Z

    move-result v0

    return v0
.end method

.method public clearSelection()Z
    .locals 1

    .line 1015
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 1016
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/KRFGLESView;->clearSelection()Z

    move-result v0

    return v0
.end method

.method public closeComponentViewer()Z
    .locals 1

    .line 620
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 621
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/KRFGLESView;->closeComponentViewer()Z

    move-result v0

    return v0
.end method

.method public contains(Lcom/amazon/krf/platform/Position;)Z
    .locals 1

    .line 677
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 678
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/internal/KRFGLESView;->contains(Lcom/amazon/krf/platform/Position;)Z

    move-result p1

    return p1
.end method

.method public createSelection()Lcom/amazon/krf/platform/Selection;
    .locals 1

    .line 581
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 582
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/KRFGLESView;->createSelection()Lcom/amazon/krf/platform/Selection;

    move-result-object v0

    return-object v0
.end method

.method public dispose()V
    .locals 3

    .line 122
    :try_start_0
    new-instance v0, Lcom/amazon/krf/platform/KRFView$2;

    invoke-direct {v0, p0}, Lcom/amazon/krf/platform/KRFView$2;-><init>(Lcom/amazon/krf/platform/KRFView;)V

    invoke-static {v0}, Lcom/amazon/krf/platform/ThreadUtils;->runOnUiThreadBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "KRF"

    const-string v2, "Exception while trying to run KRFView.dispose from main thread"

    .line 133
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 134
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/krf/platform/ThreadUtils;->assertDebug(Ljava/lang/Boolean;)V

    :goto_0
    return-void
.end method

.method public enableStylusBehavior(Z)V
    .locals 1

    .line 1183
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 1184
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/internal/KRFGLESView;->enableStylusBehavior(Z)V

    return-void
.end method

.method public enterGuidedView()Z
    .locals 1

    .line 630
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 631
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/KRFGLESView;->enterGuidedView()Z

    move-result v0

    return v0
.end method

.method public exitGuidedView()Z
    .locals 1

    .line 640
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 641
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/KRFGLESView;->exitGuidedView()Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "KRF"

    const-string v1, "KRFView.dispose was missed called manually, attempting to clean up from finalizer"

    .line 104
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    new-instance v0, Lcom/amazon/krf/platform/KRFView$1;

    invoke-direct {v0, p0}, Lcom/amazon/krf/platform/KRFView$1;-><init>(Lcom/amazon/krf/platform/KRFView;)V

    invoke-static {v0}, Lcom/amazon/krf/platform/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 112
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 1069
    invoke-virtual {p0, v0}, Lcom/amazon/krf/platform/KRFView;->getBitmap(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmap(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 1

    .line 1078
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/internal/KRFGLESView;->getBitmap(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getBook()Lcom/amazon/krf/platform/KRFBook;
    .locals 1

    .line 989
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 990
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/KRFGLESView;->getBook()Lcom/amazon/krf/platform/KRFBook;

    move-result-object v0

    return-object v0
.end method

.method public getBoundsElementsInPage(Lcom/amazon/krf/platform/PositionRange;)Lcom/amazon/krf/platform/KRFView$BoundsElements;
    .locals 4

    .line 372
    invoke-virtual {p0}, Lcom/amazon/krf/platform/KRFView;->getPageElements()[Lcom/amazon/krf/platform/element/PageElement;

    move-result-object v0

    .line 375
    iget-object v1, p0, Lcom/amazon/krf/platform/KRFView;->mPageElementComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 376
    new-instance v1, Lcom/amazon/krf/platform/KRFView$BoundsElements;

    invoke-direct {v1}, Lcom/amazon/krf/platform/KRFView$BoundsElements;-><init>()V

    .line 378
    invoke-virtual {p1}, Lcom/amazon/krf/platform/PositionRange;->getFirstPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/amazon/krf/platform/PositionRange;->getFirstPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/krf/platform/Position;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 379
    invoke-virtual {p1}, Lcom/amazon/krf/platform/PositionRange;->getFirstPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/amazon/krf/platform/KRFView;->getIndexOfElementFromPosition([Lcom/amazon/krf/platform/element/PageElement;Lcom/amazon/krf/platform/Position;)I

    move-result v2

    if-lez v2, :cond_0

    .line 380
    array-length v3, v0

    if-ge v2, v3, :cond_0

    add-int/lit8 v2, v2, -0x1

    .line 381
    aget-object v2, v0, v2

    iput-object v2, v1, Lcom/amazon/krf/platform/KRFView$BoundsElements;->mPreviousElement:Lcom/amazon/krf/platform/element/PageElement;

    .line 385
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/krf/platform/PositionRange;->getLastPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/amazon/krf/platform/PositionRange;->getLastPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/krf/platform/Position;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 386
    invoke-virtual {p1}, Lcom/amazon/krf/platform/PositionRange;->getLastPosition()Lcom/amazon/krf/platform/Position;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/amazon/krf/platform/KRFView;->getIndexOfElementFromPosition([Lcom/amazon/krf/platform/element/PageElement;Lcom/amazon/krf/platform/Position;)I

    move-result p1

    if-ltz p1, :cond_1

    .line 387
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge p1, v2, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 388
    aget-object p1, v0, p1

    iput-object p1, v1, Lcom/amazon/krf/platform/KRFView$BoundsElements;->mNextElement:Lcom/amazon/krf/platform/element/PageElement;

    :cond_1
    return-object v1
.end method

.method public getContentAccessibilityVerbosity()Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;
    .locals 1

    .line 1268
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    if-eqz v0, :cond_0

    .line 1269
    invoke-virtual {v0}, Lcom/amazon/krf/internal/KRFGLESView;->getContentAccessibilityVerbosity()Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;

    move-result-object v0

    return-object v0

    .line 1271
    :cond_0
    sget-object v0, Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;->LEGACY:Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;

    return-object v0
.end method

.method public getContentDecorationEventListener()Lcom/amazon/krf/platform/ContentDecorationEventListener;
    .locals 1

    .line 1007
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentDecorationEventListener:Lcom/amazon/krf/platform/ContentDecorationEventListener;

    return-object v0
.end method

.method public getCurrentColorTheme()Lcom/amazon/krf/platform/theme/ColorTheme;
    .locals 1

    .line 1116
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 1117
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/KRFGLESView;->getCurrentColorTheme()Lcom/amazon/krf/platform/theme/ColorTheme;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultSelection()Lcom/amazon/krf/platform/Selection;
    .locals 1

    .line 590
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 591
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/KRFGLESView;->getDefaultSelection()Lcom/amazon/krf/platform/Selection;

    move-result-object v0

    return-object v0
.end method

.method public getHistoryManager()Lcom/amazon/krf/platform/HistoryManager;
    .locals 1

    .line 949
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 950
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/KRFGLESView;->getHistoryManager()Lcom/amazon/krf/platform/HistoryManager;

    move-result-object v0

    return-object v0
.end method

.method public getKRFGLESView()Lcom/amazon/krf/internal/KRFGLESView;
    .locals 1

    .line 1149
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    return-object v0
.end method

.method public getLocalizationDataSource()Lcom/amazon/krf/platform/LocalizationDataSource;
    .locals 1

    .line 883
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/KRFGLESView;->getLocalizationDataSource()Lcom/amazon/krf/platform/LocalizationDataSource;

    move-result-object v0

    return-object v0
.end method

.method public getPageElements()[Lcom/amazon/krf/platform/element/PageElement;
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/KRFGLESView;->nativeGetPageElements()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/amazon/krf/platform/element/PageElement;

    return-object v0

    .line 289
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/amazon/krf/platform/element/PageElement;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/krf/platform/element/PageElement;

    return-object v0
.end method

.method public getPageManager()Lcom/amazon/krf/platform/PageManager;
    .locals 2

    .line 1226
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {p0}, Lcom/amazon/krf/platform/KRFView;->getSettings()Lcom/amazon/krf/platform/ViewSettings;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/krf/internal/KRFGLESView;->getPageManager(Lcom/amazon/krf/platform/ViewSettings;)Lcom/amazon/krf/platform/PageManager;

    move-result-object v0

    return-object v0
.end method

.method public getPageTransitionStyle()Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;
    .locals 1

    .line 1175
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 1176
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/KRFGLESView;->getPageTransitionStyle()Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;

    move-result-object v0

    return-object v0
.end method

.method public getPositionRange()Lcom/amazon/krf/platform/PositionRange;
    .locals 1

    .line 671
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 672
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/KRFGLESView;->getPositionRange()Lcom/amazon/krf/platform/PositionRange;

    move-result-object v0

    return-object v0
.end method

.method protected getPositionRangeFromBoundingBox(Landroid/graphics/Rect;)Lcom/amazon/krf/platform/PositionRange;
    .locals 4

    .line 710
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 711
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/amazon/krf/internal/KRFGLESView;->getPositionRangeFromBoundingBox(IIII)Lcom/amazon/krf/platform/PositionRange;

    move-result-object p1

    return-object p1
.end method

.method protected getPositionRangeFromLine(Landroid/graphics/Rect;)Lcom/amazon/krf/platform/PositionRange;
    .locals 4

    .line 699
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 700
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/amazon/krf/internal/KRFGLESView;->getPositionRangeFromLine(IIII)Lcom/amazon/krf/platform/PositionRange;

    move-result-object p1

    return-object p1
.end method

.method protected getPositionRangeFromOval(Landroid/graphics/Rect;)Lcom/amazon/krf/platform/PositionRange;
    .locals 4

    .line 688
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 689
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/amazon/krf/internal/KRFGLESView;->getPositionRangeFromOval(IIII)Lcom/amazon/krf/platform/PositionRange;

    move-result-object p1

    return-object p1
.end method

.method public getSettings()Lcom/amazon/krf/platform/ViewSettings;
    .locals 1

    .line 487
    sget-object v0, Lcom/amazon/krf/platform/KRFView$Orientation;->CURRENT:Lcom/amazon/krf/platform/KRFView$Orientation;

    invoke-virtual {p0, v0}, Lcom/amazon/krf/platform/KRFView;->getSettings(Lcom/amazon/krf/platform/KRFView$Orientation;)Lcom/amazon/krf/platform/ViewSettings;

    move-result-object v0

    return-object v0
.end method

.method public getSettings(Lcom/amazon/krf/platform/KRFView$Orientation;)Lcom/amazon/krf/platform/ViewSettings;
    .locals 1

    .line 497
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 498
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/internal/KRFGLESView;->getSettings(Lcom/amazon/krf/platform/KRFView$Orientation;)Lcom/amazon/krf/platform/ViewSettings;

    move-result-object p1

    return-object p1
.end method

.method public getSpeechBreakers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/krf/platform/SpeechBreaker;",
            ">;"
        }
    .end annotation

    .line 1036
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 1037
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/KRFGLESView;->getSpeechBreakers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public goToCoverPage()Z
    .locals 1

    .line 738
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 739
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/KRFGLESView;->goToCoverPage()Z

    move-result v0

    return v0
.end method

.method public goToFirstPage()Z
    .locals 1

    .line 755
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 756
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/KRFGLESView;->goToFirstPage()Z

    move-result v0

    return v0
.end method

.method public goToLastPage()Z
    .locals 1

    .line 761
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 762
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/KRFGLESView;->goToLastPage()Z

    move-result v0

    return v0
.end method

.method public goToLocation(J)Z
    .locals 1

    .line 803
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 804
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/krf/internal/KRFGLESView;->goToLocation(J)Z

    move-result p1

    return p1
.end method

.method public goToNextPage()Z
    .locals 1

    .line 773
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 774
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/KRFGLESView;->goToNextPage()Z

    move-result v0

    return v0
.end method

.method public goToPercent(D)Z
    .locals 1

    .line 833
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 834
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/krf/internal/KRFGLESView;->goToPercent(D)Z

    move-result p1

    return p1
.end method

.method public goToPosition(Lcom/amazon/krf/platform/Position;)Z
    .locals 1

    .line 809
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 810
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/internal/KRFGLESView;->goToPosition(Lcom/amazon/krf/platform/Position;)Z

    move-result p1

    return p1
.end method

.method public goToPositionAsync(Lcom/amazon/krf/platform/Position;)Z
    .locals 1

    .line 815
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 816
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/internal/KRFGLESView;->goToPositionAsync(Lcom/amazon/krf/platform/Position;)Z

    move-result p1

    return p1
.end method

.method public goToPositionOnLoad(Lcom/amazon/krf/platform/Position;)Z
    .locals 1

    .line 821
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 822
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/internal/KRFGLESView;->goToPositionOnLoad(Lcom/amazon/krf/platform/Position;)Z

    move-result p1

    return p1
.end method

.method public goToPositionOnLoadAsync(Lcom/amazon/krf/platform/Position;)Z
    .locals 1

    .line 827
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 828
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/internal/KRFGLESView;->goToPositionOnLoadAsync(Lcom/amazon/krf/platform/Position;)Z

    move-result p1

    return p1
.end method

.method public goToPreviousPage()Z
    .locals 1

    .line 785
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 786
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/KRFGLESView;->goToPreviousPage()Z

    move-result v0

    return v0
.end method

.method public goToStartReadingPage()Z
    .locals 1

    .line 749
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 750
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/KRFGLESView;->goToStartReadingPage()Z

    move-result v0

    return v0
.end method

.method public goToTableOfContentsPage()Z
    .locals 1

    .line 743
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 744
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/KRFGLESView;->goToTableOfContentsPage()Z

    move-result v0

    return v0
.end method

.method public hasFootnotes()Z
    .locals 1

    .line 1200
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 1201
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/KRFGLESView;->hasFootnotes()Z

    move-result v0

    return v0
.end method

.method public isAccessibilityPageTurnSupport()Z
    .locals 1

    .line 1245
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    if-eqz v0, :cond_0

    .line 1246
    invoke-virtual {v0}, Lcom/amazon/krf/internal/KRFGLESView;->isAccessibilityPageTurnSupport()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isStylusBehaviorEnabled()Z
    .locals 1

    .line 1191
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 1192
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/KRFGLESView;->isStylusBehaviorEnabled()Z

    move-result v0

    return v0
.end method

.method public modifyContentDecorationStyle(Lcom/amazon/krf/platform/ContentDecorationStyle;IIIFF)V
    .locals 7

    .line 1050
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 1051
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/amazon/krf/internal/KRFGLESView;->modifyContentDecorationStyle(Lcom/amazon/krf/platform/ContentDecorationStyle;IIIFF)V

    return-void
.end method

.method public modifyContentDecorationStyles([Lcom/amazon/krf/platform/ContentDecorationStyle;)V
    .locals 1

    .line 1059
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 1060
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/internal/KRFGLESView;->modifyContentDecorationStyles([Lcom/amazon/krf/platform/ContentDecorationStyle;)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 98
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-string v0, "com.amazon.krf.platform.KRFView"

    .line 99
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 92
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string v0, "com.amazon.krf.platform.KRFView"

    .line 93
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public openComponentViewer(Lcom/amazon/krf/platform/PositionRange;)Z
    .locals 1

    .line 1088
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 1089
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/internal/KRFGLESView;->openComponentViewer(Lcom/amazon/krf/platform/PositionRange;)Z

    move-result p1

    return p1
.end method

.method public pause(I)V
    .locals 1

    .line 185
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 186
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/internal/KRFGLESView;->pauseComponent(I)V

    return-void
.end method

.method public pauseRendering()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x4

    .line 164
    invoke-virtual {p0, v0}, Lcom/amazon/krf/platform/KRFView;->pause(I)V

    return-void
.end method

.method public reloadCurrentPageMarginals()V
    .locals 1

    .line 959
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 960
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/KRFGLESView;->reloadCurrentPageMarginals()V

    return-void
.end method

.method public removeBookBoundaryListener(Lcom/amazon/krf/platform/BookBoundaryListener;)V
    .locals 1

    .line 918
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 919
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/internal/KRFGLESView;->removeBookBoundaryListener(Lcom/amazon/krf/platform/BookBoundaryListener;)V

    return-void
.end method

.method public removeNavigationListener(Lcom/amazon/krf/platform/NavigationListener;)Z
    .locals 1

    .line 722
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 723
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/internal/KRFGLESView;->removeNavigationListener(Lcom/amazon/krf/platform/NavigationListener;)Z

    move-result p1

    return p1
.end method

.method public removePanZoomListener(Lcom/amazon/krf/platform/PanZoomListener;)Z
    .locals 1

    .line 732
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 733
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/internal/KRFGLESView;->removePanZoomListener(Lcom/amazon/krf/platform/PanZoomListener;)Z

    move-result p1

    return p1
.end method

.method public removeSelectionChangeListener(Lcom/amazon/krf/platform/SelectionChangeListener;)Z
    .locals 1

    .line 518
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 519
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/internal/KRFGLESView;->removeSelectionChangeListener(Lcom/amazon/krf/platform/SelectionChangeListener;)Z

    move-result p1

    return p1
.end method

.method public removeSettingsChangedListener(Lcom/amazon/krf/platform/SettingsChangedListener;)V
    .locals 1

    .line 1106
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 1107
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/internal/KRFGLESView;->removeSettingsChangedListener(Lcom/amazon/krf/platform/SettingsChangedListener;)V

    return-void
.end method

.method public resetPluginVisibilityLifeCycleListener()V
    .locals 1

    .line 939
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 940
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/KRFGLESView;->resetPluginVisibilityLifeCycleListener()V

    return-void
.end method

.method public resume(I)V
    .locals 1

    .line 196
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 197
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/internal/KRFGLESView;->resumeComponent(I)V

    return-void
.end method

.method public resumeRendering()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x4

    .line 175
    invoke-virtual {p0, v0}, Lcom/amazon/krf/platform/KRFView;->resume(I)V

    return-void
.end method

.method public setAccessibilityPageTurnSupport(Z)V
    .locals 1

    .line 1236
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    if-eqz v0, :cond_0

    .line 1237
    invoke-virtual {v0, p1}, Lcom/amazon/krf/internal/KRFGLESView;->setAccessibilityPageTurnSupport(Z)V

    :cond_0
    return-void
.end method

.method public setAccessibilityProvider(Lcom/amazon/krf/platform/AccessibilityProvider;)V
    .locals 1

    .line 610
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 611
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/internal/KRFGLESView;->setAccessibilityProvider(Lcom/amazon/krf/platform/AccessibilityProvider;)V

    return-void
.end method

.method public setBook(Lcom/amazon/krf/platform/KRFBook;Lcom/amazon/krf/platform/Position;)V
    .locals 1

    .line 207
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 210
    :try_start_0
    new-instance v0, Lcom/amazon/krf/platform/ViewSettings;

    invoke-direct {v0}, Lcom/amazon/krf/platform/ViewSettings;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/krf/platform/KRFView;->setBook(Lcom/amazon/krf/platform/KRFBook;Lcom/amazon/krf/platform/Position;Lcom/amazon/krf/platform/ViewSettings;)V
    :try_end_0
    .catch Lcom/amazon/krf/exception/InvalidSettingsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "KRF"

    const-string/jumbo p2, "setBook failed with settings, if this happens, the code is broken"

    .line 215
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setBook(Lcom/amazon/krf/platform/KRFBook;Lcom/amazon/krf/platform/Position;Lcom/amazon/krf/platform/ViewSettings;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/krf/exception/InvalidSettingsException;
        }
    .end annotation

    .line 230
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    if-eqz p3, :cond_0

    .line 235
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 236
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 238
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dpi is being set to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    int-to-float v0, v0

    .line 242
    invoke-virtual {p3, v0}, Lcom/amazon/krf/platform/ViewSettings;->setDPI(F)V

    .line 244
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/krf/internal/KRFGLESView;->setBook(Lcom/amazon/krf/platform/KRFBook;Lcom/amazon/krf/platform/Position;Lcom/amazon/krf/platform/ViewSettings;)V

    return-void

    .line 233
    :cond_0
    new-instance p1, Lcom/amazon/krf/exception/InvalidSettingsException;

    const-string p2, "ViewSettings cannot be null"

    invoke-direct {p1, p2}, Lcom/amazon/krf/exception/InvalidSettingsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBook(Lcom/amazon/krf/platform/KRFBook;Lcom/amazon/krf/platform/Position;Lcom/amazon/krf/platform/ViewSettings;Lcom/amazon/krf/platform/ViewSettings;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/krf/exception/InvalidSettingsException;
        }
    .end annotation

    .line 257
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    .line 264
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    move-object v2, p4

    goto :goto_0

    :cond_0
    move-object v2, p3

    .line 269
    :goto_0
    invoke-virtual {p0, p1, p2, v2}, Lcom/amazon/krf/platform/KRFView;->setBook(Lcom/amazon/krf/platform/KRFBook;Lcom/amazon/krf/platform/Position;Lcom/amazon/krf/platform/ViewSettings;)V

    if-ne v1, v0, :cond_1

    .line 274
    sget-object p1, Lcom/amazon/krf/platform/KRFView$Orientation;->PORTRAIT:Lcom/amazon/krf/platform/KRFView$Orientation;

    invoke-virtual {p0, p3, p1}, Lcom/amazon/krf/platform/KRFView;->setSettings(Lcom/amazon/krf/platform/ViewSettings;Lcom/amazon/krf/platform/KRFView$Orientation;)V

    goto :goto_1

    .line 278
    :cond_1
    sget-object p1, Lcom/amazon/krf/platform/KRFView$Orientation;->LANDSCAPE:Lcom/amazon/krf/platform/KRFView$Orientation;

    invoke-virtual {p0, p4, p1}, Lcom/amazon/krf/platform/KRFView;->setSettings(Lcom/amazon/krf/platform/ViewSettings;Lcom/amazon/krf/platform/KRFView$Orientation;)V

    :goto_1
    return-void

    .line 260
    :cond_2
    new-instance p1, Lcom/amazon/krf/exception/InvalidSettingsException;

    const-string p2, "ViewSettings cannot be null for either orientation"

    invoke-direct {p1, p2}, Lcom/amazon/krf/exception/InvalidSettingsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setColorTheme(Lcom/amazon/krf/platform/theme/ColorTheme;)V
    .locals 1

    .line 1131
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 1132
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/internal/KRFGLESView;->setColorTheme(Lcom/amazon/krf/platform/theme/ColorTheme;)V

    return-void
.end method

.method public setContentAccessibilityVerbosity(Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;)V
    .locals 1

    .line 1258
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    if-eqz v0, :cond_0

    .line 1259
    invoke-virtual {v0, p1}, Lcom/amazon/krf/internal/KRFGLESView;->setContentAccessibilityVerbosity(Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;)V

    :cond_0
    return-void
.end method

.method public setContentDecorationEventListener(Lcom/amazon/krf/platform/ContentDecorationEventListener;)V
    .locals 1

    .line 998
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 999
    iput-object p1, p0, Lcom/amazon/krf/platform/KRFView;->m_contentDecorationEventListener:Lcom/amazon/krf/platform/ContentDecorationEventListener;

    .line 1000
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/internal/KRFGLESView;->setContentDecorationEventListener(Lcom/amazon/krf/platform/ContentDecorationEventListener;)V

    return-void
.end method

.method public setContentMissingListener(Lcom/amazon/krf/platform/ContentMissingListener;)V
    .locals 1

    .line 898
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 899
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/internal/KRFGLESView;->setContentMissingListener(Lcom/amazon/krf/platform/ContentMissingListener;)V

    return-void
.end method

.method public setDecorationEnabled(Lcom/amazon/krf/platform/ContentDecorationStyle;Z)V
    .locals 1

    .line 1025
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 1026
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/krf/internal/KRFGLESView;->setDecorationEnabled(Lcom/amazon/krf/platform/ContentDecorationStyle;Z)V

    return-void
.end method

.method public setDefaultUIEventHandler(Lcom/amazon/krf/platform/UIEventHandler;)V
    .locals 1

    .line 861
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 862
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/internal/KRFGLESView;->setDefaultUIEventHandler(Lcom/amazon/krf/platform/UIEventHandler;)V

    return-void
.end method

.method public setFootnotesFontStyle(Ljava/lang/String;F)V
    .locals 1

    .line 1210
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 1211
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/krf/internal/KRFGLESView;->setFootnotesFontStyle(Ljava/lang/String;F)V

    return-void
.end method

.method public setLocalizationDataSource(Lcom/amazon/krf/platform/LocalizationDataSource;)V
    .locals 1

    .line 872
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 873
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/internal/KRFGLESView;->setLocalizationDataSource(Lcom/amazon/krf/platform/LocalizationDataSource;)V

    return-void
.end method

.method public setMarginalDataProvider(Lcom/amazon/krf/platform/MarginalDataProvider;)V
    .locals 1

    .line 969
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 970
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/internal/KRFGLESView;->setMarginalDataProvider(Lcom/amazon/krf/platform/MarginalDataProvider;)V

    return-void
.end method

.method public setMarginalListener(Lcom/amazon/krf/platform/MarginalListener;)V
    .locals 1

    .line 979
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 980
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/internal/KRFGLESView;->setMarginalListener(Lcom/amazon/krf/platform/MarginalListener;)V

    return-void
.end method

.method public setOrientationLockRequestListener(Lcom/amazon/krf/platform/OrientationLockRequestListener;)V
    .locals 1

    .line 538
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 539
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/internal/KRFGLESView;->setOrientationLockRequestListener(Lcom/amazon/krf/platform/OrientationLockRequestListener;)V

    return-void
.end method

.method public setPageTransitionStyle(Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;)V
    .locals 1

    .line 1166
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 1167
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/internal/KRFGLESView;->setPageTransitionStyle(Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;)V

    return-void
.end method

.method public setPluginVisibilityLifeCycleListener(Lcom/amazon/krf/platform/PluginVisibilityLifeCycleListener;)V
    .locals 1

    .line 930
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 931
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/internal/KRFGLESView;->setPluginVisibilityLifeCycleListener(Lcom/amazon/krf/platform/PluginVisibilityLifeCycleListener;)V

    return-void
.end method

.method public setReadingRulerSettings(Lcom/amazon/krf/platform/ReadingRulerSettings;)V
    .locals 1

    .line 507
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 508
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/internal/KRFGLESView;->setReadingRulerSettings(Lcom/amazon/krf/platform/ReadingRulerSettings;)V

    return-void
.end method

.method public setRubberbandingEnabled(Z)Z
    .locals 1

    .line 839
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 840
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/internal/KRFGLESView;->setRubberbandingEnabled(Z)Z

    move-result p1

    return p1
.end method

.method public setSelectionRange(Lcom/amazon/krf/platform/PositionRange;)V
    .locals 1

    .line 558
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 559
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/internal/KRFGLESView;->setSelectionRange(Lcom/amazon/krf/platform/PositionRange;)V

    return-void
.end method

.method public setSelectionRanges(Lcom/amazon/krf/platform/PositionRange;)Z
    .locals 1

    .line 548
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 549
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/internal/KRFGLESView;->setSelectionRanges(Lcom/amazon/krf/platform/PositionRange;)Z

    move-result p1

    return p1
.end method

.method public setSelectionStyle(Lcom/amazon/krf/platform/SelectionState$HandleStyle;Lcom/amazon/krf/platform/SelectionState$LoupeStyle;I)V
    .locals 1

    .line 569
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 570
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/krf/internal/KRFGLESView;->setSelectionStyle(Lcom/amazon/krf/platform/SelectionState$HandleStyle;Lcom/amazon/krf/platform/SelectionState$LoupeStyle;I)V

    return-void
.end method

.method public setSelectionsVisible(Z)V
    .locals 1

    .line 595
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 596
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/internal/KRFGLESView;->setSelectionsVisible(Z)V

    return-void
.end method

.method public setSettings(Lcom/amazon/krf/platform/ViewSettings;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/krf/exception/InvalidSettingsException;
        }
    .end annotation

    .line 456
    sget-object v0, Lcom/amazon/krf/platform/KRFView$Orientation;->ALL:Lcom/amazon/krf/platform/KRFView$Orientation;

    invoke-virtual {p0, p1, v0}, Lcom/amazon/krf/platform/KRFView;->setSettings(Lcom/amazon/krf/platform/ViewSettings;Lcom/amazon/krf/platform/KRFView$Orientation;)V

    return-void
.end method

.method public setSettings(Lcom/amazon/krf/platform/ViewSettings;Lcom/amazon/krf/platform/KRFView$Orientation;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/krf/exception/InvalidSettingsException;
        }
    .end annotation

    .line 466
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    if-eqz p1, :cond_0

    .line 471
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 472
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 474
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 476
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dpi is being set to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    int-to-float v0, v0

    .line 477
    invoke-virtual {p1, v0}, Lcom/amazon/krf/platform/ViewSettings;->setDPI(F)V

    .line 478
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {p0, p1}, Lcom/amazon/krf/platform/KRFView;->updateDefaultSettingifNeeded(Lcom/amazon/krf/platform/ViewSettings;)Lcom/amazon/krf/platform/ViewSettings;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/amazon/krf/internal/KRFGLESView;->setSettings(Lcom/amazon/krf/platform/ViewSettings;Lcom/amazon/krf/platform/KRFView$Orientation;)V

    return-void

    .line 469
    :cond_0
    new-instance p1, Lcom/amazon/krf/exception/InvalidSettingsException;

    const-string p2, "ViewSettings cannot be null"

    invoke-direct {p1, p2}, Lcom/amazon/krf/exception/InvalidSettingsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setWeblabCallback(Lcom/amazon/krf/platform/WeblabCallback;)V
    .locals 1

    .line 888
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 889
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/internal/KRFGLESView;->setWeblabCallback(Lcom/amazon/krf/platform/WeblabCallback;)V

    return-void
.end method

.method public startRendering()V
    .locals 1

    .line 143
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 144
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/KRFGLESView;->startRendering()V

    return-void
.end method

.method public stopRendering()V
    .locals 1

    .line 152
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFView;->checkValid()V

    .line 153
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/KRFGLESView;->stopRendering()V

    return-void
.end method

.method public updateDefaultSettingifNeeded(Lcom/amazon/krf/platform/ViewSettings;)Lcom/amazon/krf/platform/ViewSettings;
    .locals 1

    .line 1282
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/KRFGLESView;->getAccessibilityDelegate()Lcom/amazon/krf/platform/KRFAccessibilityDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1283
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/KRFGLESView;->getAccessibilityDelegate()Lcom/amazon/krf/platform/KRFAccessibilityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->isTouchExploreEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/amazon/krf/platform/ViewSettings;->setAccessibilityEnabled(Z)V

    :cond_0
    return-object p1
.end method

.method public wordPageElementHitTest(FF)Lcom/amazon/krf/platform/element/WordPageElement;
    .locals 1

    .line 1216
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView;->m_contentView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/krf/internal/KRFGLESView;->nativeGetWordPageElementAtPoint(FF)Lcom/amazon/krf/platform/element/WordPageElement;

    move-result-object p1

    return-object p1
.end method
