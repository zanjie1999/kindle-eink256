.class public abstract Lcom/amazon/kcp/library/FastReorderableRecyclerAdapter;
.super Lcom/amazon/kcp/library/FastRecyclerAdapter;
.source "FastReorderableRecyclerAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazon/kcp/library/FastRecyclerAdapter<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 14
    invoke-direct {p0, p1, v0, v1, v0}, Lcom/amazon/kcp/library/FastRecyclerAdapter;-><init>(Landroid/app/Activity;Landroid/view/ActionMode$Callback;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    const-string/jumbo v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-super {p0, p1}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 18
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v1, Lcom/amazon/kcp/library/ReorderableItemTouchHelperCallback;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/ReorderableItemTouchHelperCallback;-><init>(Lcom/amazon/kcp/library/FastReorderableRecyclerAdapter;)V

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onItemFinishedMoving(I)V
    .locals 0

    return-void
.end method

.method public final onItemMove(II)V
    .locals 1

    .line 31
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/AbstractRecyclerAdapter;->removeItemAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 32
    invoke-virtual {p0, v0, p2}, Lcom/amazon/kcp/library/AbstractRecyclerAdapter;->addItemAt(Ljava/lang/Object;I)V

    .line 33
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    return-void
.end method
