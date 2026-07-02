.class public Lcom/amazon/nwstd/upsell/UpsellBannerView;
.super Ljava/lang/Object;
.source "UpsellBannerView.java"


# instance fields
.field protected mButton:Landroid/widget/Button;

.field private mChromesHeight:I

.field private mIsInLandscape:Z

.field private mIsVisible:Z

.field protected mTextViewDescription:Landroid/widget/TextView;

.field protected mTextViewTitle:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/ViewStub;)V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 83
    sget v0, Lcom/amazon/kindle/newsstand/core/R$id;->upsell_banner_view:I

    invoke-virtual {p1, v0}, Landroid/view/ViewStub;->setInflatedId(I)V

    .line 84
    sget v0, Lcom/amazon/kindle/newsstand/core/R$layout;->upsell_banner_view:I

    invoke-virtual {p1, v0}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 85
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mView:Landroid/view/View;

    .line 86
    sget v0, Lcom/amazon/kindle/newsstand/core/R$id;->upsell_banner_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mButton:Landroid/widget/Button;

    .line 87
    iget-object p1, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mView:Landroid/view/View;

    sget v0, Lcom/amazon/kindle/newsstand/core/R$id;->upsell_banner_text_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mTextViewTitle:Landroid/widget/TextView;

    .line 88
    iget-object p1, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mView:Landroid/view/View;

    sget v0, Lcom/amazon/kindle/newsstand/core/R$id;->upsell_banner_text_description:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mTextViewDescription:Landroid/widget/TextView;

    .line 91
    iget-object p1, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mView:Landroid/view/View;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 92
    iget-object p1, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mView:Landroid/view/View;

    new-instance v0, Lcom/amazon/nwstd/upsell/UpsellBannerView$1;

    invoke-direct {v0, p0}, Lcom/amazon/nwstd/upsell/UpsellBannerView$1;-><init>(Lcom/amazon/nwstd/upsell/UpsellBannerView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object p1, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mTextViewTitle:Landroid/widget/TextView;

    new-instance v0, Lcom/amazon/nwstd/upsell/UpsellBannerView$2;

    invoke-direct {v0, p0}, Lcom/amazon/nwstd/upsell/UpsellBannerView$2;-><init>(Lcom/amazon/nwstd/upsell/UpsellBannerView;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object p1, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mTextViewDescription:Landroid/widget/TextView;

    new-instance v0, Lcom/amazon/nwstd/upsell/UpsellBannerView$3;

    invoke-direct {v0, p0}, Lcom/amazon/nwstd/upsell/UpsellBannerView$3;-><init>(Lcom/amazon/nwstd/upsell/UpsellBannerView;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private setVisibility(Z)V
    .locals 5

    .line 164
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mIsVisible:Z

    if-ne v1, p1, :cond_0

    goto :goto_1

    .line 167
    :cond_0
    iput-boolean p1, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mIsVisible:Z

    .line 169
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_1

    sget p1, Lcom/amazon/kindle/newsstand/core/R$integer;->location_seeker_show_animation_duration:I

    goto :goto_0

    :cond_1
    sget p1, Lcom/amazon/kindle/newsstand/core/R$integer;->hide_animation_duration:I

    :goto_0
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 171
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mIsVisible:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    int-to-long v3, p1

    invoke-static {v0, v1, v3, v4}, Lcom/amazon/kcp/animation/AnimatorFactory;->createUpSlideAnimator(Landroid/view/View;ZJ)Landroid/animation/Animator;

    move-result-object p1

    .line 172
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mIsVisible:Z

    invoke-static {v0, v2, v1}, Lcom/amazon/kcp/animation/AnimatorUtils;->createVisibilityChangeListener(Landroid/view/View;ZZ)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 173
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :cond_2
    :goto_1
    return-void
.end method

.method private updateLayout()V
    .locals 1

    .line 219
    iget-boolean v0, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mIsInLandscape:Z

    if-eqz v0, :cond_0

    .line 220
    invoke-direct {p0}, Lcom/amazon/nwstd/upsell/UpsellBannerView;->updateLayoutLandscape()V

    goto :goto_0

    .line 222
    :cond_0
    invoke-direct {p0}, Lcom/amazon/nwstd/upsell/UpsellBannerView;->updateLayoutPortrait()V

    :goto_0
    return-void
.end method

.method private updateLayoutLandscape()V
    .locals 6

    .line 230
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 232
    iget v1, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mChromesHeight:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/4 v1, 0x0

    .line 233
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 234
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 235
    iget-object v1, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/newsstand/core/R$dimen;->upsell_banner_paddingBottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 236
    iget-object v2, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/newsstand/core/R$dimen;->upsell_banner_paddingTop:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 237
    iget-object v3, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/newsstand/core/R$dimen;->upsell_banner_paddingLeft:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 238
    iget-object v4, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/amazon/kindle/newsstand/core/R$dimen;->upsell_banner_paddingRight:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 239
    iget-object v5, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mView:Landroid/view/View;

    invoke-virtual {v5, v3, v2, v4, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 240
    iget-object v1, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/newsstand/core/R$dimen;->upsell_banner_button_font_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 242
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mTextViewDescription:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/newsstand/core/R$dimen;->upsell_banner_text_description_font_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 243
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mTextViewTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/newsstand/core/R$dimen;->upsell_banner_text_title_font_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_0
    return-void
.end method

.method private updateLayoutPortrait()V
    .locals 6

    .line 251
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 253
    iget v1, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mChromesHeight:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/4 v1, 0x0

    .line 254
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 255
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 257
    iget-object v1, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/newsstand/core/R$dimen;->upsell_banner_paddingBottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 258
    iget-object v2, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/newsstand/core/R$dimen;->upsell_banner_paddingTop:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 259
    iget-object v3, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/newsstand/core/R$dimen;->upsell_banner_paddingLeft:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 260
    iget-object v4, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/amazon/kindle/newsstand/core/R$dimen;->upsell_banner_paddingRight:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 261
    iget-object v5, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mView:Landroid/view/View;

    invoke-virtual {v5, v3, v2, v4, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 262
    iget-object v1, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/newsstand/core/R$dimen;->upsell_banner_button_font_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 264
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mTextViewDescription:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/newsstand/core/R$dimen;->upsell_banner_text_description_font_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 265
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mTextViewTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/newsstand/core/R$dimen;->upsell_banner_text_title_font_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const/4 v0, 0x0

    .line 270
    iput-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mView:Landroid/view/View;

    const/4 v1, 0x0

    .line 271
    iput-boolean v1, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mIsVisible:Z

    .line 272
    iput-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mButton:Landroid/widget/Button;

    .line 273
    iput-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mTextViewTitle:Landroid/widget/TextView;

    .line 274
    iput-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mTextViewDescription:Landroid/widget/TextView;

    return-void
.end method

.method public getInflatedLayout()Landroid/view/View;
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mView:Landroid/view/View;

    return-object v0
.end method

.method public hide()V
    .locals 1

    const/4 v0, 0x0

    .line 148
    invoke-direct {p0, v0}, Lcom/amazon/nwstd/upsell/UpsellBannerView;->setVisibility(Z)V

    return-void
.end method

.method public isVisible()Z
    .locals 1

    .line 181
    iget-boolean v0, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mIsVisible:Z

    return v0
.end method

.method public onOrientationChanged(Z)V
    .locals 0

    .line 199
    iput-boolean p1, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mIsInLandscape:Z

    .line 200
    iget-object p1, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 201
    invoke-direct {p0}, Lcom/amazon/nwstd/upsell/UpsellBannerView;->updateLayout()V

    :cond_0
    return-void
.end method

.method public populateAccessibilityNodeInfoIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 282
    iget-boolean v0, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mIsVisible:Z

    if-eqz v0, :cond_2

    .line 283
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mTextViewTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;)V

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mTextViewDescription:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 287
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;)V

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 290
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public setBannerButtomMargin(I)V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mChromesHeight:I

    if-eq v0, p1, :cond_0

    .line 210
    iput p1, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mChromesHeight:I

    .line 211
    invoke-direct {p0}, Lcom/amazon/nwstd/upsell/UpsellBannerView;->updateLayout()V

    :cond_0
    return-void
.end method

.method public setButtonOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setButtonText(Ljava/lang/String;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 140
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mTextViewDescription:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 130
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellBannerView;->mTextViewTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 120
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x1

    .line 155
    invoke-direct {p0, v0}, Lcom/amazon/nwstd/upsell/UpsellBannerView;->setVisibility(Z)V

    return-void
.end method
