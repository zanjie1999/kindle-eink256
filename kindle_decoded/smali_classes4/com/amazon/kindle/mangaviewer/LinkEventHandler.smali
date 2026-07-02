.class public Lcom/amazon/kindle/mangaviewer/LinkEventHandler;
.super Lcom/amazon/kindle/mangaviewer/SimpleTouchEventHandler;
.source "LinkEventHandler.java"


# instance fields
.field private docViewer:Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

.field private pointerActiveAreaPrecisionDips:I

.field private readerLayout:Lcom/amazon/kindle/mangaviewer/MangaLayout;


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/mobi/MangaDocViewer;Lcom/amazon/kindle/mangaviewer/MangaLayout;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/amazon/kindle/mangaviewer/SimpleTouchEventHandler;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/amazon/kindle/mangaviewer/LinkEventHandler;->docViewer:Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    .line 28
    iput-object p2, p0, Lcom/amazon/kindle/mangaviewer/LinkEventHandler;->readerLayout:Lcom/amazon/kindle/mangaviewer/MangaLayout;

    .line 29
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/kmv/R$integer;->gesture_pointer_active_area_precision_dips:I

    .line 30
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/mangaviewer/LinkEventHandler;->pointerActiveAreaPrecisionDips:I

    return-void
.end method

.method private getScaledMargin(Lcom/amazon/kindle/mangaviewer/BoundImageView;)I
    .locals 2

    .line 123
    invoke-virtual {p1}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->getScaleX()F

    move-result p1

    .line 124
    iget v0, p0, Lcom/amazon/kindle/mangaviewer/LinkEventHandler;->pointerActiveAreaPrecisionDips:I

    int-to-float v1, v0

    div-float/2addr v1, p1

    float-to-int p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 126
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/LinkEventHandler;->readerLayout:Lcom/amazon/kindle/mangaviewer/MangaLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/amazon/android/util/UIUtils;->convertDipsToPixels(Landroid/content/Context;F)I

    move-result p1

    return p1
.end method

.method private selectObject(Landroid/view/MotionEvent;Lcom/amazon/kindle/mangaviewer/BoundImageView;)Z
    .locals 5

    .line 96
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/LinkEventHandler;->docViewer:Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getSelector()Lcom/amazon/android/docviewer/IObjectSelector;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/amazon/kindle/mangaviewer/LinkEventHandler;->docViewer:Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/KindleDocView;->getPageMargins()Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 99
    invoke-virtual {p2}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->getScaleX()F

    move-result v2

    .line 102
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p2}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->getTranslateX()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v2

    float-to-int v3, v3

    .line 103
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float v1, v1

    sub-float/2addr p1, v1

    invoke-virtual {p2}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->getTranslateY()F

    move-result v1

    sub-float/2addr p1, v1

    div-float/2addr p1, v2

    float-to-int p1, p1

    .line 105
    invoke-direct {p0, p2}, Lcom/amazon/kindle/mangaviewer/LinkEventHandler;->getScaledMargin(Lcom/amazon/kindle/mangaviewer/BoundImageView;)I

    move-result p2

    sub-int/2addr v3, p2

    .line 107
    invoke-interface {v0, v3, p1, p2}, Lcom/amazon/android/docviewer/IObjectSelector;->selectAt(III)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public doubleTap(Landroid/view/MotionEvent;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z
    .locals 2

    .line 66
    invoke-interface {p2}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getCurrentChild()Lcom/amazon/kindle/mangaviewer/MangaPageLayout;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 70
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/kindle/mangaviewer/MangaPageLayout;->imageView()Lcom/amazon/kindle/mangaviewer/BoundImageView;

    move-result-object p2

    .line 71
    iget-object v1, p0, Lcom/amazon/kindle/mangaviewer/LinkEventHandler;->docViewer:Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getSelector()Lcom/amazon/android/docviewer/IObjectSelector;

    move-result-object v1

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/mangaviewer/LinkEventHandler;->selectObject(Landroid/view/MotionEvent;Lcom/amazon/kindle/mangaviewer/BoundImageView;)Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz v1, :cond_1

    sget-object p1, Lcom/amazon/android/docviewer/IObjectSelector$UserAction;->DOUBLE_TAP:Lcom/amazon/android/docviewer/IObjectSelector$UserAction;

    .line 75
    invoke-interface {v1, p1}, Lcom/amazon/android/docviewer/IObjectSelector;->hasActionAnywhere(Lcom/amazon/android/docviewer/IObjectSelector$UserAction;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    .line 76
    :cond_2
    :goto_0
    sget-object p1, Lcom/amazon/android/docviewer/IObjectSelector$UserAction;->DOUBLE_TAP:Lcom/amazon/android/docviewer/IObjectSelector$UserAction;

    invoke-interface {v1, p1}, Lcom/amazon/android/docviewer/IObjectSelector;->performAction(Lcom/amazon/android/docviewer/IObjectSelector$UserAction;)I

    move-result p1

    .line 80
    invoke-interface {v1}, Lcom/amazon/android/docviewer/IObjectSelector;->selectNone()V

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public singleTap(Landroid/view/MotionEvent;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z
    .locals 2

    .line 39
    invoke-interface {p2}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getCurrentChild()Lcom/amazon/kindle/mangaviewer/MangaPageLayout;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 43
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/kindle/mangaviewer/MangaPageLayout;->imageView()Lcom/amazon/kindle/mangaviewer/BoundImageView;

    move-result-object p2

    .line 44
    iget-object v1, p0, Lcom/amazon/kindle/mangaviewer/LinkEventHandler;->docViewer:Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getSelector()Lcom/amazon/android/docviewer/IObjectSelector;

    move-result-object v1

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/mangaviewer/LinkEventHandler;->selectObject(Landroid/view/MotionEvent;Lcom/amazon/kindle/mangaviewer/BoundImageView;)Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz v1, :cond_1

    sget-object p1, Lcom/amazon/android/docviewer/IObjectSelector$UserAction;->SINGLE_TAP:Lcom/amazon/android/docviewer/IObjectSelector$UserAction;

    .line 48
    invoke-interface {v1, p1}, Lcom/amazon/android/docviewer/IObjectSelector;->hasActionAnywhere(Lcom/amazon/android/docviewer/IObjectSelector$UserAction;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    .line 49
    :cond_2
    :goto_0
    sget-object p1, Lcom/amazon/android/docviewer/IObjectSelector$UserAction;->SINGLE_TAP:Lcom/amazon/android/docviewer/IObjectSelector$UserAction;

    invoke-interface {v1, p1}, Lcom/amazon/android/docviewer/IObjectSelector;->performAction(Lcom/amazon/android/docviewer/IObjectSelector$UserAction;)I

    move-result p1

    .line 53
    invoke-interface {v1}, Lcom/amazon/android/docviewer/IObjectSelector;->selectNone()V

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method
