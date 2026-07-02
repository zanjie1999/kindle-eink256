.class public Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;
.super Landroid/widget/FrameLayout;
.source "BreadCrumbContentLayout.java"


# instance fields
.field private badgeIcon:Landroid/widget/ImageView;

.field private labelContainer:Landroid/view/View;

.field private mrprBackgroundResId:I

.field private orienatation:I

.field private pageThumbnail:Landroid/view/View;

.field private safetyNetLabel:Landroid/widget/TextView;

.field private waypointBackgroundResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 37
    iput p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;->orienatation:I

    return-void
.end method

.method private removePageView(Z)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;->pageThumbnail:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 127
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    if-eqz p1, :cond_0

    .line 128
    iget-object p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;->pageThumbnail:Landroid/view/View;

    instance-of v0, p1, Lcom/amazon/krf/platform/KRFPageView;

    if-eqz v0, :cond_0

    .line 129
    check-cast p1, Lcom/amazon/krf/platform/KRFPageView;

    invoke-virtual {p1}, Lcom/amazon/krf/platform/KRFPageView;->dispose()V

    :cond_0
    const/4 p1, 0x0

    .line 131
    iput-object p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;->pageThumbnail:Landroid/view/View;

    :cond_1
    return-void
.end method

.method private setLabelContainerBackground()V
    .locals 3

    .line 84
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 86
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleDocColorMode;->hasDarkBackground()Z

    move-result v1

    if-nez v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;->labelContainer:Landroid/view/View;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getBackgroundColor()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 90
    sget v0, Lcom/amazon/kindle/krl/R$id;->breadcrumb_container_divider:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$color;->text_secondary_light:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;->safetyNetLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$color;->text_secondary_light:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public disposePageView()V
    .locals 1

    const/4 v0, 0x1

    .line 122
    invoke-direct {p0, v0}, Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;->removePageView(Z)V

    return-void
.end method

.method public getLabelContainer()Landroid/view/View;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;->labelContainer:Landroid/view/View;

    return-object v0
.end method

.method public getPageThumbnail()Landroid/view/View;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;->pageThumbnail:Landroid/view/View;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 69
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 70
    iget v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;->orienatation:I

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, p1, :cond_0

    .line 71
    iput p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;->orienatation:I

    .line 72
    iget-object p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;->labelContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$dimen;->nln_breadcrumb_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 73
    iget-object p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;->safetyNetLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$integer;->nln_breadcrumb_label_max_lines:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 74
    iget-object p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;->safetyNetLabel:Landroid/widget/TextView;

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$dimen;->nln_breadcrumb_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 74
    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 4

    .line 45
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 46
    sget v0, Lcom/amazon/kindle/krl/R$id;->safety_net_text:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;->safetyNetLabel:Landroid/widget/TextView;

    .line 47
    sget v0, Lcom/amazon/kindle/krl/R$id;->breadcrumb_label_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;->labelContainer:Landroid/view/View;

    .line 48
    sget v0, Lcom/amazon/kindle/krl/R$id;->badge_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;->badgeIcon:Landroid/widget/ImageView;

    .line 51
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/kcp/debug/DarkModeUtils;->isPhaseTwoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;->setLabelContainerBackground()V

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;->labelContainer:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 60
    sget v2, Lcom/amazon/kindle/krl/R$attr;->breadcrumbFrameMrpr:I

    aput v2, v0, v1

    sget v2, Lcom/amazon/kindle/krl/R$attr;->breadcrumbFrameWaypoint:I

    const/4 v3, 0x1

    aput v2, v0, v3

    .line 61
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 62
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;->mrprBackgroundResId:I

    .line 63
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;->waypointBackgroundResId:I

    .line 64
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public setBadgeIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;->badgeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 214
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;->badgeIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 216
    iget-object p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;->badgeIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 217
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    .line 218
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 219
    div-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_1
    div-int/lit8 v1, v0, 0x2

    :goto_1
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 220
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;->labelContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 221
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;->badgeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setIsMrpr(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 177
    iget p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;->mrprBackgroundResId:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;->waypointBackgroundResId:I

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 3

    .line 105
    invoke-static {p1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;->safetyNetLabel:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;->safetyNetLabel:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 112
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$integer;->nln_breadcrumb_label_max_lines:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/16 v1, 0xa

    const/16 v2, 0x20

    .line 114
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 116
    :cond_1
    iget-object v1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;->safetyNetLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 117
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;->safetyNetLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;->safetyNetLabel:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setThumbnail(Landroid/view/View;)V
    .locals 5

    .line 136
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;->pageThumbnail:Landroid/view/View;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 140
    invoke-direct {p0, v0}, Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;->removePageView(Z)V

    if-nez p1, :cond_1

    return-void

    .line 146
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;

    if-eqz v1, :cond_2

    .line 148
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;

    .line 149
    invoke-direct {v1, v0}, Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;->removePageView(Z)V

    .line 151
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    new-instance v3, Landroid/widget/Space;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    .line 153
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    invoke-virtual {v1, v3}, Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;->setThumbnail(Landroid/view/View;)V

    goto :goto_0

    .line 156
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 159
    :cond_3
    :goto_0
    iput-object p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;->pageThumbnail:Landroid/view/View;

    .line 160
    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 161
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;->labelContainer:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 162
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 163
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 164
    iget-object p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;->labelContainer:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    return-void
.end method

.method public transferContentToOther(Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;)V
    .locals 3

    .line 188
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;->pageThumbnail:Landroid/view/View;

    .line 189
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 190
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;->setThumbnail(Landroid/view/View;)V

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 191
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 192
    :goto_0
    iput-object v1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;->pageThumbnail:Landroid/view/View;

    .line 195
    new-instance v0, Landroid/widget/Space;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    if-eqz v2, :cond_1

    .line 197
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    :cond_1
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;->setThumbnail(Landroid/view/View;)V

    .line 201
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;->safetyNetLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;->setLabel(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
