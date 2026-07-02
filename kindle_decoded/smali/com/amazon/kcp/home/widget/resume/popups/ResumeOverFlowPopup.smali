.class public Lcom/amazon/kcp/home/widget/resume/popups/ResumeOverFlowPopup;
.super Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;
.source "ResumeOverFlowPopup.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kcp/home/events/ResumeWidgetEvent;Lcom/amazon/kcp/library/ContentInteractionHandler;)V
    .locals 1

    .line 23
    invoke-static {}, Lcom/amazon/kcp/debug/DeleteBooksFromAccountDebugUtils;->isDeleteBooksFromAccountEnabled()Z

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;-><init>(Landroid/content/Context;Lcom/amazon/kcp/home/events/ResumeWidgetEvent;Lcom/amazon/kcp/library/ContentInteractionHandler;Z)V

    return-void
.end method

.method private calculateWindowHeight(Landroid/view/View;)I
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 50
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    .line 52
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 53
    iget-object v2, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Landroid/view/View;->measure(II)V

    .line 54
    iget-object v2, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 55
    iget-object v3, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/librarymodule/R$dimen;->resume_popup_margin_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/4 v4, 0x1

    .line 56
    aget v0, v0, v4

    sub-int/2addr v1, v0

    sub-int/2addr v1, p1

    sub-int/2addr v1, v3

    if-ge v1, v2, :cond_0

    sub-int v2, v1, v3

    :cond_0
    return v2
.end method

.method private calculateWindowWidth()I
    .locals 6

    .line 75
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 76
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v0, v0

    .line 77
    iget-object v2, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/librarymodule/R$dimen;->resume_layout_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v2, v2, v4

    sub-double/2addr v0, v2

    .line 79
    iget-object v2, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-double v2, v2

    .line 80
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 81
    iget-object v4, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/amazon/kindle/librarymodule/R$dimen;->resume_popup_width_increment:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    .line 82
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-double v2, v2

    mul-double v4, v4, v2

    double-to-int v2, v4

    double-to-int v0, v0

    .line 84
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private calculateXoff(Landroid/view/View;I)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 93
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    mul-int/lit8 p2, p2, -0x1

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 96
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 97
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/amazon/kindle/librarymodule/R$dimen;->resume_layout_margin:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 98
    aget v0, v1, v0

    sub-int/2addr v0, p1

    neg-int p1, p2

    if-le p1, v0, :cond_1

    neg-int p1, v0

    return p1

    :cond_1
    return p2
.end method


# virtual methods
.method protected requiresShadow()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected setUpTitlePopUpItem()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->titleView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 66
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public show(Landroid/view/View;)V
    .locals 6

    if-eqz p1, :cond_0

    .line 31
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeOverFlowPopup;->calculateWindowWidth()I

    move-result v0

    .line 32
    invoke-direct {p0, p1}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeOverFlowPopup;->calculateWindowHeight(Landroid/view/View;)I

    move-result v1

    .line 34
    iget-object v2, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/librarymodule/R$dimen;->resume_popup_top_offset:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 35
    iget-object v3, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/librarymodule/R$dimen;->resume_popup_horizontal_offset:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeOverFlowPopup;->calculateXoff(Landroid/view/View;I)I

    move-result v4

    .line 38
    iget-object v5, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 39
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 40
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->popupWindow:Landroid/widget/PopupWindow;

    add-int/2addr v4, v3

    invoke-virtual {v0, p1, v4, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    :cond_0
    return-void
.end method
