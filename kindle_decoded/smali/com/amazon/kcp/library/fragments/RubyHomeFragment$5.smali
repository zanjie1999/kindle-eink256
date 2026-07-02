.class Lcom/amazon/kcp/library/fragments/RubyHomeFragment$5;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "RubyHomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->setRecyclerView(Lcom/amazon/kcp/library/ui/NestedRecyclerView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/RubyHomeFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/RubyHomeFragment;)V
    .locals 0

    .line 453
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$5;->this$0:Lcom/amazon/kcp/library/fragments/RubyHomeFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 5

    .line 457
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 459
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$5;->this$0:Lcom/amazon/kcp/library/fragments/RubyHomeFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 461
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->getAvailableWindowDimensions(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 462
    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$5;->this$0:Lcom/amazon/kcp/library/fragments/RubyHomeFragment;

    invoke-static {v2}, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->access$600(Lcom/amazon/kcp/library/fragments/RubyHomeFragment;)F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-double v1, v1

    .line 463
    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-double v3, v0

    mul-double v3, v3, v1

    double-to-int v0, v3

    .line 464
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 465
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 467
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$5;->this$0:Lcom/amazon/kcp/library/fragments/RubyHomeFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$dimen;->home_card_spacing_between_cards:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 470
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-ne p2, p3, :cond_0

    .line 471
    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    iget-object p3, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$5;->this$0:Lcom/amazon/kcp/library/fragments/RubyHomeFragment;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/amazon/kindle/librarymodule/R$dimen;->home_feed_margin_bottom:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    add-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-void
.end method
