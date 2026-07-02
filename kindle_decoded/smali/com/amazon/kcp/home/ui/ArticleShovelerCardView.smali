.class public final Lcom/amazon/kcp/home/ui/ArticleShovelerCardView;
.super Lcom/amazon/kcp/home/ui/HomeCardView;
.source "ArticleShovelerCardView.kt"


# instance fields
.field public colorBarView:Landroid/view/View;

.field public shoveler:Lcom/amazon/kcp/library/ui/NestedRecyclerView;

.field public subTitleTextView:Landroid/widget/TextView;

.field public titleImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1}, Lcom/amazon/kcp/home/ui/HomeCardView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributeSet"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/home/ui/HomeCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final getColorBarView()Landroid/view/View;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ArticleShovelerCardView;->colorBarView:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "colorBarView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getShoveler()Lcom/amazon/kcp/library/ui/NestedRecyclerView;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ArticleShovelerCardView;->shoveler:Lcom/amazon/kcp/library/ui/NestedRecyclerView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "shoveler"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getSubTitleTextView()Landroid/widget/TextView;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ArticleShovelerCardView;->subTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "subTitleTextView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getTitleImageView()Landroid/widget/ImageView;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ArticleShovelerCardView;->titleImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "titleImageView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 25
    invoke-super {p0}, Lcom/amazon/kcp/home/ui/HomeCardView;->onFinishInflate()V

    .line 27
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->article_shoveler_nested_recycler:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.articl\u2026shoveler_nested_recycler)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/amazon/kcp/library/ui/NestedRecyclerView;

    iput-object v0, p0, Lcom/amazon/kcp/home/ui/ArticleShovelerCardView;->shoveler:Lcom/amazon/kcp/library/ui/NestedRecyclerView;

    .line 28
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->article_shoveler_color_bar:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.article_shoveler_color_bar)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kcp/home/ui/ArticleShovelerCardView;->colorBarView:Landroid/view/View;

    .line 29
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->home_card_header_image:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.home_card_header_image)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/amazon/kcp/home/ui/ArticleShovelerCardView;->titleImageView:Landroid/widget/ImageView;

    .line 30
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->home_card_header_desc:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.home_card_header_desc)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/home/ui/ArticleShovelerCardView;->subTitleTextView:Landroid/widget/TextView;

    .line 32
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ArticleShovelerCardView;->shoveler:Lcom/amazon/kcp/library/ui/NestedRecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/home/ui/HomeCardView;->setupShoveler(Lcom/amazon/kcp/library/ui/NestedRecyclerView;)V

    return-void

    :cond_0
    const-string/jumbo v0, "shoveler"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final setColorBarView(Landroid/view/View;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/ArticleShovelerCardView;->colorBarView:Landroid/view/View;

    return-void
.end method

.method public final setShoveler(Lcom/amazon/kcp/library/ui/NestedRecyclerView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/ArticleShovelerCardView;->shoveler:Lcom/amazon/kcp/library/ui/NestedRecyclerView;

    return-void
.end method

.method public final setSubTitleTextView(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/ArticleShovelerCardView;->subTitleTextView:Landroid/widget/TextView;

    return-void
.end method

.method public final setTitleImageView(Landroid/widget/ImageView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/ArticleShovelerCardView;->titleImageView:Landroid/widget/ImageView;

    return-void
.end method
