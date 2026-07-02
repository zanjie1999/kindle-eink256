.class public final Lcom/amazon/kindle/mangaviewer/PanEventHandler;
.super Lcom/amazon/kindle/mangaviewer/SimpleTouchEventHandler;
.source "PanEventHandler.java"


# static fields
.field private static final PAN_SPEED:F = 1.0f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private ignoreNextMove:Z

.field private isImageEdge:Z

.field private m_layout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

.field private touchX:F

.field private touchY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/amazon/kindle/mangaviewer/PanEventHandler;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/mangaviewer/PanEventHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/amazon/kindle/mangaviewer/SimpleTouchEventHandler;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/amazon/kindle/mangaviewer/PanEventHandler;->ignoreNextMove:Z

    .line 44
    iput-boolean v0, p0, Lcom/amazon/kindle/mangaviewer/PanEventHandler;->isImageEdge:Z

    .line 54
    iput-object p1, p0, Lcom/amazon/kindle/mangaviewer/PanEventHandler;->m_layout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    return-void
.end method

.method private isEdgeOfPage(Landroid/view/View;)Z
    .locals 5

    .line 154
    instance-of v0, p1, Lcom/amazon/kindle/mangaviewer/BoundImageView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 155
    sget-object p1, Lcom/amazon/kindle/mangaviewer/PanEventHandler;->TAG:Ljava/lang/String;

    const-string v0, "Error: Expected BoundImageView, recieved something else."

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 159
    :cond_0
    check-cast p1, Lcom/amazon/kindle/mangaviewer/BoundImageView;

    .line 161
    invoke-virtual {p1}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->getTranslateX()F

    move-result v0

    .line 163
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v2

    .line 164
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->getAvailableWindowDimensions(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object v2

    .line 165
    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 167
    invoke-virtual {p1}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->getRenderDrawable()Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->getWidth()I

    move-result v3

    int-to-float v3, v3

    .line 168
    invoke-virtual {p1}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->getCurrentScale()F

    move-result p1

    mul-float v3, v3, p1

    int-to-float p1, v2

    sub-float/2addr v3, p1

    const/4 p1, 0x0

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    neg-float p1, v3

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_2

    goto :goto_0

    :cond_2
    move v4, v1

    :goto_0
    return v4
.end method


# virtual methods
.method public firstPointerDown(Landroid/view/MotionEvent;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z
    .locals 0

    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    iput p2, p0, Lcom/amazon/kindle/mangaviewer/PanEventHandler;->touchX:F

    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/mangaviewer/PanEventHandler;->touchY:F

    const/4 p1, 0x0

    return p1
.end method

.method public move(Landroid/view/MotionEvent;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z
    .locals 7

    .line 86
    invoke-interface {p2}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getCurrentChild()Lcom/amazon/kindle/mangaviewer/MangaPageLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    invoke-interface {p2}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getCurrentChild()Lcom/amazon/kindle/mangaviewer/MangaPageLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/mangaviewer/MangaPageLayout;->imageView()Lcom/amazon/kindle/mangaviewer/BoundImageView;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 88
    invoke-virtual {v0}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->hasRenderDrawable()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p2}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getViewMode()Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;->FULL_SCREEN:Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

    if-ne v2, v3, :cond_1

    goto/16 :goto_1

    .line 92
    :cond_1
    invoke-interface {p2}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getViewMode()Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;->VIRTUAL_PANEL:Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-le v2, v4, :cond_2

    return v4

    .line 97
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-le v2, v4, :cond_3

    return v1

    .line 100
    :cond_3
    invoke-virtual {v0}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->getCurrentScale()F

    move-result v2

    invoke-virtual {v0}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->getMinScale()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_5

    .line 105
    invoke-interface {p2}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getViewMode()Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

    move-result-object p1

    sget-object p2, Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;->VIRTUAL_PANEL:Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

    if-ne p1, p2, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1

    .line 108
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 109
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 111
    iget v3, p0, Lcom/amazon/kindle/mangaviewer/PanEventHandler;->touchX:F

    sub-float v3, v2, v3

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float v3, v3, v5

    .line 112
    iget v6, p0, Lcom/amazon/kindle/mangaviewer/PanEventHandler;->touchY:F

    sub-float v6, p1, v6

    mul-float v6, v6, v5

    .line 115
    iput v2, p0, Lcom/amazon/kindle/mangaviewer/PanEventHandler;->touchX:F

    .line 116
    iput p1, p0, Lcom/amazon/kindle/mangaviewer/PanEventHandler;->touchY:F

    .line 119
    iget-boolean p1, p0, Lcom/amazon/kindle/mangaviewer/PanEventHandler;->ignoreNextMove:Z

    if-eqz p1, :cond_6

    .line 120
    iput-boolean v1, p0, Lcom/amazon/kindle/mangaviewer/PanEventHandler;->ignoreNextMove:Z

    return v4

    .line 123
    :cond_6
    invoke-virtual {v0, v3, v6}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->translate(FF)V

    .line 124
    invoke-virtual {v0}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->bindImageToView()Z

    move-result p1

    .line 125
    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 129
    iget-object v2, p0, Lcom/amazon/kindle/mangaviewer/PanEventHandler;->m_layout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 130
    iget-object v2, p0, Lcom/amazon/kindle/mangaviewer/PanEventHandler;->m_layout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    const-wide/16 v5, 0x1f4

    invoke-virtual {v2, v5, v6}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->hideOverlaysAfterDelay(J)V

    :cond_7
    if-nez p1, :cond_8

    .line 135
    invoke-direct {p0, v0}, Lcom/amazon/kindle/mangaviewer/PanEventHandler;->isEdgeOfPage(Landroid/view/View;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/kindle/mangaviewer/PanEventHandler;->isImageEdge:Z

    .line 137
    :cond_8
    invoke-interface {p2}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getViewMode()Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

    move-result-object p2

    sget-object v0, Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;->VIRTUAL_PANEL:Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

    if-ne p2, v0, :cond_9

    return v4

    :cond_9
    if-eqz p1, :cond_a

    .line 140
    iget-boolean p1, p0, Lcom/amazon/kindle/mangaviewer/PanEventHandler;->isImageEdge:Z

    if-nez p1, :cond_b

    :cond_a
    const/4 v1, 0x1

    :cond_b
    :goto_1
    return v1
.end method

.method public pointerUp(Landroid/view/MotionEvent;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z
    .locals 0

    .line 68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    .line 69
    iput-boolean p1, p0, Lcom/amazon/kindle/mangaviewer/PanEventHandler;->ignoreNextMove:Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
