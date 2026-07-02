.class public final Lcom/amazon/kindle/displaymask/ui/DualScreenPageFlipLayoutManager$smoothScrollToPosition$linearSmoothScroller$1;
.super Landroidx/recyclerview/widget/CenterLockSmoothScroller;
.source "DualScreenPageFlipLayoutManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/displaymask/ui/DualScreenPageFlipLayoutManager;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic this$0:Lcom/amazon/kindle/displaymask/ui/DualScreenPageFlipLayoutManager;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/displaymask/ui/DualScreenPageFlipLayoutManager;Landroidx/recyclerview/widget/RecyclerView;Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Landroid/content/Context;",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ")V"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/amazon/kindle/displaymask/ui/DualScreenPageFlipLayoutManager$smoothScrollToPosition$linearSmoothScroller$1;->this$0:Lcom/amazon/kindle/displaymask/ui/DualScreenPageFlipLayoutManager;

    iput-object p2, p0, Lcom/amazon/kindle/displaymask/ui/DualScreenPageFlipLayoutManager$smoothScrollToPosition$linearSmoothScroller$1;->$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, p3, p4}, Landroidx/recyclerview/widget/CenterLockSmoothScroller;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method


# virtual methods
.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/kindle/displaymask/ui/DualScreenPageFlipLayoutManager$smoothScrollToPosition$linearSmoothScroller$1;->this$0:Lcom/amazon/kindle/displaymask/ui/DualScreenPageFlipLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method
