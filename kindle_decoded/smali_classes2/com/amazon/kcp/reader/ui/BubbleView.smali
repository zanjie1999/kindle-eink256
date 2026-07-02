.class public Lcom/amazon/kcp/reader/ui/BubbleView;
.super Landroid/widget/FrameLayout;
.source "BubbleView.java"


# instance fields
.field private needsReposition:Z

.field private windowSafeInsets:Lcom/amazon/kcp/util/device/SafeInsets;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/BubbleView;->needsReposition:Z

    .line 16
    new-instance p1, Lcom/amazon/kcp/util/device/SafeInsets;

    invoke-direct {p1}, Lcom/amazon/kcp/util/device/SafeInsets;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/BubbleView;->windowSafeInsets:Lcom/amazon/kcp/util/device/SafeInsets;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/BubbleView;->needsReposition:Z

    .line 16
    new-instance p1, Lcom/amazon/kcp/util/device/SafeInsets;

    invoke-direct {p1}, Lcom/amazon/kcp/util/device/SafeInsets;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/BubbleView;->windowSafeInsets:Lcom/amazon/kcp/util/device/SafeInsets;

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 28
    invoke-static {p1}, Lcom/amazon/kcp/util/device/DisplayCutoutUtils;->getDisplayCutoutSafeInsets(Landroid/view/WindowInsets;)Lcom/amazon/kcp/util/device/SafeInsets;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/BubbleView;->windowSafeInsets:Lcom/amazon/kcp/util/device/SafeInsets;

    .line 29
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

.method public onMeasure(II)V
    .locals 0

    .line 34
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 36
    iget-boolean p1, p0, Lcom/amazon/kcp/reader/ui/BubbleView;->needsReposition:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/BubbleView;->needsReposition:Z

    .line 41
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/BubbleView;->reposition(FF)V

    return-void
.end method

.method reposition(FF)V
    .locals 6

    .line 50
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->getAvailableWindowDimensions(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object v0

    .line 52
    invoke-static {}, Lcom/amazon/kcp/util/device/DisplayCutoutUtils;->isNotchSupportEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BubbleView;->windowSafeInsets:Lcom/amazon/kcp/util/device/SafeInsets;

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/util/DeviceUtils;->getSafeInsets(Landroid/content/Context;)Lcom/amazon/kcp/util/device/SafeInsets;

    move-result-object v1

    .line 55
    :goto_0
    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    .line 56
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getX()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p1, v4

    sub-float/2addr v3, v4

    add-float v4, v3, p1

    .line 57
    invoke-virtual {v1}, Lcom/amazon/kcp/util/device/SafeInsets;->getRight()I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v2, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    sub-float/2addr v2, p1

    .line 58
    invoke-virtual {v1}, Lcom/amazon/kcp/util/device/SafeInsets;->getRight()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v2, p1

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setX(F)V

    goto :goto_1

    .line 59
    :cond_1
    invoke-virtual {v1}, Lcom/amazon/kcp/util/device/SafeInsets;->getLeft()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, v3, p1

    if-gez p1, :cond_2

    .line 60
    invoke-virtual {v1}, Lcom/amazon/kcp/util/device/SafeInsets;->getLeft()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setX(F)V

    goto :goto_1

    .line 62
    :cond_2
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setX(F)V

    .line 66
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getY()F

    move-result p1

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1}, Lcom/amazon/kcp/util/device/SafeInsets;->getBottom()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float p1, p1, v2

    if-lez p1, :cond_3

    .line 67
    iget p1, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1}, Lcom/amazon/kcp/util/device/SafeInsets;->getBottom()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    sub-float/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setY(F)V

    goto :goto_2

    .line 68
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getY()F

    move-result p1

    sub-float/2addr p1, p2

    invoke-virtual {v1}, Lcom/amazon/kcp/util/device/SafeInsets;->getTop()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_4

    .line 69
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getY()F

    move-result p1

    sub-float/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setY(F)V

    goto :goto_2

    .line 70
    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getY()F

    move-result p1

    invoke-virtual {v1}, Lcom/amazon/kcp/util/device/SafeInsets;->getTop()I

    move-result p2

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_5

    .line 71
    invoke-virtual {v1}, Lcom/amazon/kcp/util/device/SafeInsets;->getTop()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setY(F)V

    :cond_5
    :goto_2
    return-void
.end method

.method public setPosition(FF)V
    .locals 1

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/BubbleView;->needsReposition:Z

    .line 82
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setX(F)V

    .line 83
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setY(F)V

    return-void
.end method
