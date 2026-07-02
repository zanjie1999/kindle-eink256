.class public Lcom/amazon/nwstd/upsell/UpsellFullPageView;
.super Landroid/widget/FrameLayout;
.source "UpsellFullPageView.java"


# instance fields
.field private final JELLY_BEAN_MR1:Ljava/lang/String;

.field private mButton:Landroid/widget/Button;

.field private mCardBackgroundView:Landroid/view/View;

.field public mContext:Landroid/content/Context;

.field protected mCoverImageView:Landroid/widget/ImageView;

.field protected mRootView:Landroid/view/View;

.field protected mTextViewDescription:Landroid/widget/TextView;

.field protected mTextViewTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/nwstd/upsell/UpsellController;Z)V
    .locals 2

    .line 61
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "4.2.2"

    .line 58
    iput-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellFullPageView;->JELLY_BEAN_MR1:Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lcom/amazon/nwstd/upsell/UpsellFullPageView;->mContext:Landroid/content/Context;

    .line 63
    invoke-static {}, Lcom/amazon/nwstd/utils/Assertion;->isDebug()Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string/jumbo v1, "upsellController shouldn\'t be null"

    .line 64
    invoke-static {p1, v1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    .line 67
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/amazon/kindle/newsstand/core/R$bool;->nwstd_fortate_identity:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz p3, :cond_2

    sget-object p1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 68
    new-instance p1, Lcom/amazon/nwstd/upsell/UpsellFullPageView$1;

    invoke-direct {p1, p0}, Lcom/amazon/nwstd/upsell/UpsellFullPageView$1;-><init>(Lcom/amazon/nwstd/upsell/UpsellFullPageView;)V

    invoke-static {p1}, Lcom/amazon/nwstd/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 75
    :cond_2
    iget-object p1, p0, Lcom/amazon/nwstd/upsell/UpsellFullPageView;->mContext:Landroid/content/Context;

    sget p3, Lcom/amazon/kindle/newsstand/core/R$layout;->upsell_fullpage_view:I

    const/4 v0, 0x0

    invoke-static {p1, p3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/nwstd/upsell/UpsellFullPageView;->mRootView:Landroid/view/View;

    .line 77
    :goto_1
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 p3, 0x11

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    iget-object p1, p0, Lcom/amazon/nwstd/upsell/UpsellFullPageView;->mRootView:Landroid/view/View;

    if-eqz p1, :cond_4

    .line 79
    sget p3, Lcom/amazon/kindle/newsstand/core/R$id;->upsell_fullpage_magazine_cover:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/amazon/nwstd/upsell/UpsellFullPageView;->mCoverImageView:Landroid/widget/ImageView;

    .line 80
    iget-object p1, p0, Lcom/amazon/nwstd/upsell/UpsellFullPageView;->mRootView:Landroid/view/View;

    sget p3, Lcom/amazon/kindle/newsstand/core/R$id;->upsell_fullpage_text_title:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/amazon/nwstd/upsell/UpsellFullPageView;->mTextViewTitle:Landroid/widget/TextView;

    .line 81
    iget-object p1, p0, Lcom/amazon/nwstd/upsell/UpsellFullPageView;->mRootView:Landroid/view/View;

    sget p3, Lcom/amazon/kindle/newsstand/core/R$id;->upsell_fullpage_text_description:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/amazon/nwstd/upsell/UpsellFullPageView;->mTextViewDescription:Landroid/widget/TextView;

    .line 82
    iget-object p1, p0, Lcom/amazon/nwstd/upsell/UpsellFullPageView;->mRootView:Landroid/view/View;

    sget p3, Lcom/amazon/kindle/newsstand/core/R$id;->upsell_fullpage_left_page_layout:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/nwstd/upsell/UpsellFullPageView;->mCardBackgroundView:Landroid/view/View;

    if-nez p1, :cond_3

    .line 86
    iget-object p1, p0, Lcom/amazon/nwstd/upsell/UpsellFullPageView;->mRootView:Landroid/view/View;

    sget p3, Lcom/amazon/kindle/newsstand/core/R$id;->upsell_fullpage_magazine_cover:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/nwstd/upsell/UpsellFullPageView;->mCardBackgroundView:Landroid/view/View;

    .line 88
    :cond_3
    iget-object p1, p0, Lcom/amazon/nwstd/upsell/UpsellFullPageView;->mRootView:Landroid/view/View;

    sget p3, Lcom/amazon/kindle/newsstand/core/R$id;->upsell_fullpage_button:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/amazon/nwstd/upsell/UpsellFullPageView;->mButton:Landroid/widget/Button;

    .line 89
    new-instance p3, Lcom/amazon/nwstd/upsell/UpsellFullPageView$2;

    invoke-direct {p3, p0, p2}, Lcom/amazon/nwstd/upsell/UpsellFullPageView$2;-><init>(Lcom/amazon/nwstd/upsell/UpsellFullPageView;Lcom/amazon/nwstd/upsell/UpsellController;)V

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-virtual {p2}, Lcom/amazon/nwstd/upsell/UpsellController;->getCoverImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/nwstd/upsell/UpsellFullPageView;->setCoverImage(Landroid/graphics/drawable/Drawable;)V

    .line 97
    invoke-virtual {p2}, Lcom/amazon/nwstd/upsell/UpsellController;->getFullPageTextTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/amazon/nwstd/upsell/UpsellController;->getFullPageTextDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Lcom/amazon/nwstd/upsell/UpsellFullPageView;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Lcom/amazon/nwstd/upsell/UpsellController;->getFullPageButtonText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/nwstd/upsell/UpsellFullPageView;->setButtonText(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0, p2}, Lcom/amazon/nwstd/upsell/UpsellFullPageView;->setUpsellPageClickListener(Lcom/amazon/nwstd/upsell/UpsellController;)V

    .line 100
    invoke-virtual {p2}, Lcom/amazon/nwstd/upsell/UpsellController;->getFullPageAdCardBackgroundImage()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/nwstd/upsell/UpsellFullPageView;->setCardBackgroundView(Landroid/graphics/drawable/Drawable;)V

    .line 101
    iget-object p1, p0, Lcom/amazon/nwstd/upsell/UpsellFullPageView;->mRootView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 188
    iput-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellFullPageView;->mCoverImageView:Landroid/widget/ImageView;

    .line 189
    iput-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellFullPageView;->mTextViewTitle:Landroid/widget/TextView;

    .line 190
    iput-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellFullPageView;->mTextViewDescription:Landroid/widget/TextView;

    .line 191
    iput-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellFullPageView;->mButton:Landroid/widget/Button;

    return-void
.end method

.method public setButtonText(Ljava/lang/String;)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellFullPageView;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 165
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setCardBackgroundView(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellFullPageView;->mCardBackgroundView:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 177
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 179
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setCoverImage(I)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellFullPageView;->mCoverImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public setCoverImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellFullPageView;->mCoverImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellFullPageView;->mTextViewTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 152
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    :cond_0
    iget-object p1, p0, Lcom/amazon/nwstd/upsell/UpsellFullPageView;->mTextViewDescription:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 155
    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method protected setUpsellPageClickListener(Lcom/amazon/nwstd/upsell/UpsellController;)V
    .locals 0

    .line 109
    invoke-virtual {p1}, Lcom/amazon/nwstd/upsell/UpsellController;->getOnClickListenerFullPage()Landroid/view/View$OnClickListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
