.class public Lcom/amazon/kindle/nln/PageThumbnailViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PageThumbnailViewHolder.java"


# instance fields
.field private bookmark:Landroid/widget/ImageView;

.field private displayingFakePage:Z

.field private hasBookmark:Z

.field private hasNote:Z

.field private isSelected:Z

.field private lastPageHeight:I

.field private lastPageWidth:I

.field private markView:Landroid/widget/ImageView;

.field private note:Landroid/widget/ImageView;

.field private pageContainer:Landroid/view/ViewGroup;

.field private pageLabelView:Landroid/widget/TextView;

.field private thumbnailPage:Lcom/amazon/kindle/nln/IThumbnailPage;

.field private thumbnailView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 1

    .line 40
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->displayingFakePage:Z

    .line 43
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 45
    sget v0, Lcom/amazon/kindle/krl/R$id;->page_container:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->pageContainer:Landroid/view/ViewGroup;

    .line 46
    sget v0, Lcom/amazon/kindle/krl/R$id;->page_label:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->pageLabelView:Landroid/widget/TextView;

    .line 47
    sget v0, Lcom/amazon/kindle/krl/R$id;->bookmark_badge:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->bookmark:Landroid/widget/ImageView;

    .line 48
    sget v0, Lcom/amazon/kindle/krl/R$id;->mark_badge:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->markView:Landroid/widget/ImageView;

    .line 49
    sget v0, Lcom/amazon/kindle/krl/R$id;->note_badge:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->note:Landroid/widget/ImageView;

    .line 51
    invoke-interface {p2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/utils/RTLUtils;->shouldDisplayBookmarkAsRTL(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z

    move-result p1

    .line 53
    iget-object p2, p0, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->pageContainer:Landroid/view/ViewGroup;

    if-eqz p2, :cond_0

    .line 54
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 57
    :cond_0
    iget-object p2, p0, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->bookmark:Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    .line 58
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setLayoutDirection(I)V

    :cond_1
    return-void
.end method

.method private setLabelContainerBackground()V
    .locals 3

    .line 176
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 178
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleDocColorMode;->hasDarkBackground()Z

    move-result v1

    if-nez v1, :cond_2

    .line 180
    iget-object v1, p0, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->bookmark:Landroid/widget/ImageView;

    sget v2, Lcom/amazon/kindle/krl/R$drawable;->ic_bookmark_pfv:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 181
    iget-object v1, p0, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->note:Landroid/widget/ImageView;

    sget v2, Lcom/amazon/kindle/krl/R$drawable;->ic_note_pfv:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 182
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/amazon/kindle/krl/R$id;->page_label_container:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 184
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getBackgroundColor()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 186
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$color;->text_secondary_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 187
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/amazon/kindle/krl/R$id;->page_label_divider:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 189
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 191
    :cond_1
    iget-object v1, p0, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->pageLabelView:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    return-void
.end method

.method private setPageView(Landroid/view/View;Z)V
    .locals 2

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;

    if-eq v0, p0, :cond_0

    .line 102
    invoke-direct {v0}, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->setTemporaryPage()V

    goto :goto_0

    :cond_0
    return-void

    .line 108
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 110
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 115
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->thumbnailView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 116
    iget-object v1, p0, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->pageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 117
    iget-object v0, p0, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->thumbnailView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 122
    :cond_3
    iput-object p1, p0, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->thumbnailView:Landroid/view/View;

    .line 123
    iget-object v0, p0, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->pageContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 124
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 126
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->lastPageHeight:I

    .line 127
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p1, p0, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->lastPageWidth:I

    .line 128
    iput-boolean p2, p0, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->displayingFakePage:Z

    return-void
.end method

.method private setTemporaryPage()V
    .locals 4

    .line 135
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->pageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 136
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget v2, p0, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->lastPageWidth:I

    iget v3, p0, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->lastPageHeight:I

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    .line 137
    invoke-direct {p0, v0, v1}, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->setPageView(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public animateDecoratorsIn(JJ)V
    .locals 3

    .line 274
    iget-object v0, p0, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->pageLabelView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 275
    iget-object v0, p0, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->pageLabelView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 276
    iget-object v0, p0, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->bookmark:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 277
    iget-object v0, p0, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->bookmark:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 278
    iget-object v0, p0, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->note:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 279
    iget-object v0, p0, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->note:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 280
    iget-object v0, p0, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->markView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 281
    iget-object v0, p0, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->markView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public bindData(Landroid/view/View;Lcom/amazon/kindle/nln/IThumbnailPage;ILjava/lang/String;ZZLandroid/graphics/drawable/Drawable;ZZ)V
    .locals 0

    .line 66
    iput-object p2, p0, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->thumbnailPage:Lcom/amazon/kindle/nln/IThumbnailPage;

    .line 67
    iput-boolean p5, p0, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->hasBookmark:Z

    .line 68
    iput-boolean p6, p0, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->hasNote:Z

    .line 69
    iput-boolean p8, p0, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->isSelected:Z

    .line 70
    invoke-direct {p0, p1, p9}, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->setPageView(Landroid/view/View;Z)V

    .line 71
    invoke-virtual {p0, p3}, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->setBackgroundRes(I)V

    .line 72
    invoke-virtual {p0, p4, p5, p6}, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->setLabels(Ljava/lang/String;ZZ)V

    .line 73
    invoke-virtual {p0, p8}, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->setContentDescription(Z)V

    .line 74
    invoke-static {}, Lcom/amazon/kcp/debug/DarkModeUtils;->isPhaseTwoEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->setLabelContainerBackground()V

    .line 78
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->markView:Landroid/widget/ImageView;

    invoke-virtual {p1, p7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    iget-object p1, p0, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->markView:Landroid/widget/ImageView;

    if-eqz p7, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 81
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 82
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public getThumbnailPage()Lcom/amazon/kindle/nln/IThumbnailPage;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->thumbnailPage:Lcom/amazon/kindle/nln/IThumbnailPage;

    return-object v0
.end method

.method public getThumbnailView()Landroid/view/View;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->thumbnailView:Landroid/view/View;

    return-object v0
.end method

.method public setBackgroundRes(I)V
    .locals 1

    .line 168
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public setContentDescription(Z)V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->pageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->pageContainer:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    sget p1, Lcom/amazon/kindle/krl/R$string;->speak_nln_focused_page:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget p1, Lcom/amazon/kindle/krl/R$string;->speak_nln_page:I

    .line 160
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 159
    :goto_0
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLabels(Ljava/lang/String;ZZ)V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->pageLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object p1, p0, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->bookmark:Landroid/widget/ImageView;

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    iget-object p1, p0, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->note:Landroid/widget/ImageView;

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public unbindData()Landroid/view/View;
    .locals 3

    .line 232
    iget-object v0, p0, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->pageContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->thumbnailView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 233
    iget-object v0, p0, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->thumbnailView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 237
    :cond_0
    iput-object v1, p0, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->thumbnailView:Landroid/view/View;

    .line 238
    iput-object v1, p0, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->thumbnailPage:Lcom/amazon/kindle/nln/IThumbnailPage;

    .line 240
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 241
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-object v0
.end method
