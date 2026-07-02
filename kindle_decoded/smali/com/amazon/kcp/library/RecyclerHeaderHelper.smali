.class public final Lcom/amazon/kcp/library/RecyclerHeaderHelper;
.super Ljava/lang/Object;
.source "RecyclerHeaderHelper.kt"


# instance fields
.field private final headers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/RecyclerHeader;",
            ">;"
        }
    .end annotation
.end field

.field private final maxViewType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/amazon/kcp/library/RecyclerHeaderHelper;->maxViewType:I

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/library/RecyclerHeaderHelper;->headers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final addHeader(Landroidx/recyclerview/widget/RecyclerView;Lcom/amazon/kcp/library/RecyclerHeader;)V
    .locals 1

    const-string/jumbo v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "header"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/amazon/kcp/library/RecyclerHeaderHelper;->headers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 100
    instance-of p2, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz p2, :cond_0

    .line 101
    move-object p2, p1

    check-cast p2, Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance v0, Lcom/amazon/kcp/library/RecyclerHeaderHelper$addHeader$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/library/RecyclerHeaderHelper$addHeader$1;-><init>(Lcom/amazon/kcp/library/RecyclerHeaderHelper;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    :cond_0
    return-void
.end method

.method public final bindHeaderView(ILandroid/view/View;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/amazon/kcp/library/RecyclerHeaderHelper;->headers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/library/RecyclerHeader;

    invoke-interface {p1, p2}, Lcom/amazon/kcp/library/RecyclerHeader;->bindHeaderView(Landroid/view/View;)V

    return-void
.end method

.method public final getHeaderItemId(I)J
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/amazon/kcp/library/RecyclerHeaderHelper;->headers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getHeaderViewType(I)I
    .locals 1

    .line 38
    iget v0, p0, Lcom/amazon/kcp/library/RecyclerHeaderHelper;->maxViewType:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public final isPositionHeader(I)Z
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/amazon/kcp/library/RecyclerHeaderHelper;->numHeaders()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isViewTypeHeader(I)Z
    .locals 1

    .line 48
    iget v0, p0, Lcom/amazon/kcp/library/RecyclerHeaderHelper;->maxViewType:I

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final newHeaderView(ILandroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "parent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget v0, p0, Lcom/amazon/kcp/library/RecyclerHeaderHelper;->maxViewType:I

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 62
    iget-object v0, p0, Lcom/amazon/kcp/library/RecyclerHeaderHelper;->headers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/amazon/kcp/library/RecyclerHeaderHelper;->headers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/library/RecyclerHeader;

    invoke-interface {p1, p2, p3}, Lcom/amazon/kcp/library/RecyclerHeader;->newHeaderView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 63
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Header out of bounds"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final numHeaders()I
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/amazon/kcp/library/RecyclerHeaderHelper;->headers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final recycleHeaderView(ILandroid/view/View;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/amazon/kcp/library/RecyclerHeaderHelper;->headers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/library/RecyclerHeader;

    invoke-interface {p1, p2}, Lcom/amazon/kcp/library/RecyclerHeader;->recycleHeaderView(Landroid/view/View;)V

    return-void
.end method

.method public final removeHeader(Landroidx/recyclerview/widget/RecyclerView;Lcom/amazon/kcp/library/RecyclerHeader;)I
    .locals 1

    const-string/jumbo v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "header"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/amazon/kcp/library/RecyclerHeaderHelper;->headers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    if-gez p2, :cond_0

    const/4 p1, -0x1

    return p1

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/RecyclerHeaderHelper;->headers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lcom/amazon/kcp/library/RecyclerHeaderHelper;->headers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 135
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_1

    .line 136
    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {v0}, Landroidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    :cond_1
    return p2
.end method
