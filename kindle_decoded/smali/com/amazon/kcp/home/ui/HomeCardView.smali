.class public Lcom/amazon/kcp/home/ui/HomeCardView;
.super Landroidx/cardview/widget/CardView;
.source "HomeCardView.kt"


# instance fields
.field private lastVisibleShovelerItemPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributeSet"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1, p2}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final getLastVisibleShovelerItemPosition$LibraryModule_release()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/amazon/kcp/home/ui/HomeCardView;->lastVisibleShovelerItemPosition:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 27
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const/4 v0, 0x0

    .line 29
    invoke-virtual {p0, v0}, Landroidx/cardview/widget/CardView;->setCardElevation(F)V

    .line 30
    invoke-virtual {p0, v0}, Landroidx/cardview/widget/CardView;->setRadius(F)V

    .line 31
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$attr;->home_card_background_drawable:I

    invoke-static {p0, v1}, Lcom/amazon/kcp/home/util/ViewUtils;->resolveAttribute(Landroid/view/View;I)Landroid/util/TypedValue;

    move-result-object v1

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setLastVisibleShovelerItemPosition$LibraryModule_release(I)V
    .locals 0

    .line 24
    iput p1, p0, Lcom/amazon/kcp/home/ui/HomeCardView;->lastVisibleShovelerItemPosition:I

    return-void
.end method

.method public final setupShoveler(Lcom/amazon/kcp/library/ui/NestedRecyclerView;)V
    .locals 3

    const-string/jumbo v0, "shoveler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 41
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 42
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 43
    new-instance v0, Lcom/amazon/kcp/home/ui/HomeCardView$setupShoveler$1$1;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/home/ui/HomeCardView$setupShoveler$1$1;-><init>(Lcom/amazon/kcp/library/ui/NestedRecyclerView;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 56
    new-instance v0, Lcom/amazon/kcp/home/ui/HomeCardView$setupShoveler$$inlined$apply$lambda$1;

    invoke-direct {v0, p1, p0}, Lcom/amazon/kcp/home/ui/HomeCardView$setupShoveler$$inlined$apply$lambda$1;-><init>(Lcom/amazon/kcp/library/ui/NestedRecyclerView;Lcom/amazon/kcp/home/ui/HomeCardView;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method
