.class Lcom/amazon/kcp/search/views/GridRecyclerView$ItemOffsetDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "GridRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/views/GridRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemOffsetDecoration"
.end annotation


# instance fields
.field private horizSpacing:I

.field final synthetic this$0:Lcom/amazon/kcp/search/views/GridRecyclerView;

.field private vertSpacing:I


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/views/GridRecyclerView;II)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/amazon/kcp/search/views/GridRecyclerView$ItemOffsetDecoration;->this$0:Lcom/amazon/kcp/search/views/GridRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/amazon/kcp/search/views/GridRecyclerView$ItemOffsetDecoration;->horizSpacing:I

    .line 24
    iput p1, p0, Lcom/amazon/kcp/search/views/GridRecyclerView$ItemOffsetDecoration;->vertSpacing:I

    .line 27
    iput p2, p0, Lcom/amazon/kcp/search/views/GridRecyclerView$ItemOffsetDecoration;->horizSpacing:I

    .line 28
    iput p3, p0, Lcom/amazon/kcp/search/views/GridRecyclerView$ItemOffsetDecoration;->vertSpacing:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    .line 33
    iget-object p4, p0, Lcom/amazon/kcp/search/views/GridRecyclerView$ItemOffsetDecoration;->this$0:Lcom/amazon/kcp/search/views/GridRecyclerView;

    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p4

    check-cast p4, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p4}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p4

    .line 34
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 35
    rem-int p3, p2, p4

    .line 36
    div-int/2addr p2, p4

    .line 46
    iget v0, p0, Lcom/amazon/kcp/search/views/GridRecyclerView$ItemOffsetDecoration;->horizSpacing:I

    int-to-float v0, v0

    int-to-float v1, p4

    div-float/2addr v0, v1

    int-to-float v1, p3

    mul-float v1, v1, v0

    .line 47
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p4, p3

    add-int/lit8 p4, p4, -0x1

    int-to-float p3, p4

    mul-float v0, v0, p3

    .line 53
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p3

    iput p3, p1, Landroid/graphics/Rect;->right:I

    if-lez p2, :cond_0

    .line 55
    iget p2, p0, Lcom/amazon/kcp/search/views/GridRecyclerView$ItemOffsetDecoration;->vertSpacing:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    :cond_0
    return-void
.end method
