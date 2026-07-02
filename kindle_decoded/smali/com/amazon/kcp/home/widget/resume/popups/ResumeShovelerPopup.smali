.class public Lcom/amazon/kcp/home/widget/resume/popups/ResumeShovelerPopup;
.super Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;
.source "ResumeShovelerPopup.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kcp/home/events/ResumeWidgetEvent;Lcom/amazon/kcp/library/ContentInteractionHandler;)V
    .locals 1

    .line 26
    invoke-static {}, Lcom/amazon/kcp/debug/DeleteBooksFromAccountDebugUtils;->isDeleteBooksFromAccountEnabled()Z

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;-><init>(Landroid/content/Context;Lcom/amazon/kcp/home/events/ResumeWidgetEvent;Lcom/amazon/kcp/library/ContentInteractionHandler;Z)V

    return-void
.end method

.method private calculateWidth()I
    .locals 7

    .line 67
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$dimen;->resume_popup_center_min_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 68
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/librarymodule/R$dimen;->resume_popup_center_max_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 70
    iget-object v2, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Landroid/view/View;->measure(II)V

    .line 71
    iget-object v2, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 72
    iget-object v3, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/librarymodule/R$dimen;->resume_popup_width_increment:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-double v3, v3

    int-to-double v5, v2

    div-double/2addr v5, v3

    .line 73
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v2, v5

    int-to-double v5, v2

    mul-double v3, v3, v5

    double-to-int v2, v3

    .line 75
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private createTitleView(Ljava/lang/String;)V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->titleView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 50
    :cond_0
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 51
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->titleView:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->resume_popup_title:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 53
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    sget p1, Lcom/amazon/kindle/librarymodule/R$id;->popup_title:I

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setId(I)V

    .line 56
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->titleView:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 58
    :cond_2
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->titleView:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private dimBackground()V
    .locals 4

    .line 80
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->context:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 82
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x2

    .line 83
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x3f000000    # 0.5f

    .line 84
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 85
    invoke-interface {v1, v0, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected setUpTitlePopUpItem()V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->title:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeShovelerPopup;->createTitleView(Ljava/lang/String;)V

    return-void
.end method

.method public show()V
    .locals 4

    .line 30
    iget-boolean v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->isInitSucceeded:Z

    if-eqz v0, :cond_0

    .line 31
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeShovelerPopup;->calculateWidth()I

    move-result v0

    .line 32
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->activity:Lcom/amazon/kcp/redding/ReddingActivity;

    sget v2, Lcom/amazon/kindle/librarymodule/R$id;->library_root_view:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 33
    iget-object v2, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->popupWindow:Landroid/widget/PopupWindow;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 34
    iget-object v2, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 35
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->popupWindow:Landroid/widget/PopupWindow;

    const/16 v2, 0x11

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 37
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeShovelerPopup;->dimBackground()V

    :cond_0
    return-void
.end method
