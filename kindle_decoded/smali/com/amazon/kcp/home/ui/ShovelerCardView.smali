.class public final Lcom/amazon/kcp/home/ui/ShovelerCardView;
.super Lcom/amazon/kcp/home/ui/HomeCardView;
.source "ShovelerCardView.kt"


# instance fields
.field public footerButton:Landroid/widget/Button;

.field public shoveler:Lcom/amazon/kcp/library/ui/NestedRecyclerView;

.field public subTitleTextView:Landroid/widget/TextView;

.field public titleTextView:Landroid/widget/TextView;


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
.method public final getFooterButton()Landroid/widget/Button;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ShovelerCardView;->footerButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "footerButton"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getShoveler()Lcom/amazon/kcp/library/ui/NestedRecyclerView;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ShovelerCardView;->shoveler:Lcom/amazon/kcp/library/ui/NestedRecyclerView;

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

    .line 17
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ShovelerCardView;->subTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "subTitleTextView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getTitleTextView()Landroid/widget/TextView;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ShovelerCardView;->titleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "titleTextView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 25
    invoke-super {p0}, Lcom/amazon/kcp/home/ui/HomeCardView;->onFinishInflate()V

    .line 27
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->shoveler_card_nested_recycler:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.shoveler_card_nested_recycler)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/amazon/kcp/library/ui/NestedRecyclerView;

    iput-object v0, p0, Lcom/amazon/kcp/home/ui/ShovelerCardView;->shoveler:Lcom/amazon/kcp/library/ui/NestedRecyclerView;

    .line 28
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->home_card_header_title:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.home_card_header_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/home/ui/ShovelerCardView;->titleTextView:Landroid/widget/TextView;

    .line 29
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->home_card_header_desc:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.home_card_header_desc)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/home/ui/ShovelerCardView;->subTitleTextView:Landroid/widget/TextView;

    .line 30
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->home_card_footer_button:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.home_card_footer_button)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/amazon/kcp/home/ui/ShovelerCardView;->footerButton:Landroid/widget/Button;

    .line 32
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ShovelerCardView;->shoveler:Lcom/amazon/kcp/library/ui/NestedRecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/home/ui/HomeCardView;->setupShoveler(Lcom/amazon/kcp/library/ui/NestedRecyclerView;)V

    return-void

    :cond_0
    const-string/jumbo v0, "shoveler"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final setFooterButton(Landroid/widget/Button;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/ShovelerCardView;->footerButton:Landroid/widget/Button;

    return-void
.end method

.method public final setShoveler(Lcom/amazon/kcp/library/ui/NestedRecyclerView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/ShovelerCardView;->shoveler:Lcom/amazon/kcp/library/ui/NestedRecyclerView;

    return-void
.end method

.method public final setSubTitleTextView(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/ShovelerCardView;->subTitleTextView:Landroid/widget/TextView;

    return-void
.end method

.method public final setTitleTextView(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/ShovelerCardView;->titleTextView:Landroid/widget/TextView;

    return-void
.end method
