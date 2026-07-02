.class public final Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment$pinchToZoomListener$1;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "AbstractRecyclerFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private detectorOffset:D

.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment$pinchToZoomListener$1;->this$0:Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 9

    if-eqz p1, :cond_7

    .line 63
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    float-to-double v0, v0

    .line 64
    iget-wide v2, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment$pinchToZoomListener$1;->detectorOffset:D

    add-double/2addr v2, v0

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    cmpl-double v6, v2, v4

    if-lez v6, :cond_0

    .line 66
    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment$pinchToZoomListener$1;->this$0:Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;

    invoke-virtual {v2}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getCurrentColumnCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0

    :cond_0
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpg-double v6, v2, v4

    if-gez v6, :cond_6

    .line 67
    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment$pinchToZoomListener$1;->this$0:Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;

    invoke-virtual {v2}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getCurrentColumnCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment$pinchToZoomListener$1;->this$0:Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;

    invoke-virtual {v3}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getDefaultColumnCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 73
    :goto_0
    iget-object v3, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment$pinchToZoomListener$1;->this$0:Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;

    invoke-virtual {v3}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getCurrentColumnCount()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result p1

    return p1

    :cond_1
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v3, v0

    .line 75
    iput-wide v3, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment$pinchToZoomListener$1;->detectorOffset:D

    .line 77
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment$pinchToZoomListener$1;->this$0:Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;

    invoke-static {v0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->access$getRecyclerView$p(Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    goto :goto_2

    :cond_3
    const/4 v0, -0x1

    .line 78
    :goto_2
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment$pinchToZoomListener$1;->this$0:Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;

    invoke-static {v1, v2}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->access$setGridDimens(Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;I)V

    .line 79
    iget-object v3, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment$pinchToZoomListener$1;->this$0:Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;

    invoke-virtual {v3}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getAppWidth()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move v5, v2

    invoke-static/range {v3 .. v8}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->updateGridColumnsAndSpacing$default(Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;IIIILjava/lang/Object;)V

    .line 81
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment$pinchToZoomListener$1;->this$0:Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;

    invoke-static {v1}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->access$getRecyclerView$p(Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment$pinchToZoomListener$1;->this$0:Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;

    invoke-virtual {v3}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_4
    if-le v0, v2, :cond_5

    .line 84
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment$pinchToZoomListener$1;->this$0:Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;

    invoke-static {v1}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->access$getRecyclerView$p(Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 86
    :cond_5
    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result p1

    return p1

    .line 69
    :cond_6
    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result p1

    return p1

    .line 63
    :cond_7
    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result p1

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    const-wide/16 v0, 0x0

    .line 58
    iput-wide v0, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment$pinchToZoomListener$1;->detectorOffset:D

    .line 59
    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result p1

    return p1
.end method
