.class final Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu$setUpAccessibilityButtons$1;
.super Ljava/lang/Object;
.source "SearchSortFilterMenu.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->setUpAccessibilityButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $closeMenuIcon:Landroid/widget/ImageView;

.field final synthetic $headerHeight:I

.field final synthetic this$0:Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;Landroid/widget/ImageView;I)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu$setUpAccessibilityButtons$1;->this$0:Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;

    iput-object p2, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu$setUpAccessibilityButtons$1;->$closeMenuIcon:Landroid/widget/ImageView;

    iput p3, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu$setUpAccessibilityButtons$1;->$headerHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 143
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu$setUpAccessibilityButtons$1;->this$0:Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;

    invoke-static {v0}, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->access$isShowBottomSheet$p(Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu$setUpAccessibilityButtons$1;->this$0:Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;

    invoke-static {v0}, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->access$getUiContainer$p(Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu$setUpAccessibilityButtons$1;->this$0:Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;

    invoke-static {v0}, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->access$getUiContainer$p(Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->refine_menu_header_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "uiContainer.findViewById\u2026ne_menu_header_container)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    .line 147
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    .line 149
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu$setUpAccessibilityButtons$1;->this$0:Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;

    invoke-static {v1}, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->access$getMenuHeaderView$p(Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu$setUpAccessibilityButtons$1;->$closeMenuIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu$setUpAccessibilityButtons$1;->$headerHeight:I

    invoke-direct {v2, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
