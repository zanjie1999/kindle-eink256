.class public final Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$dataChangeObserver$1;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "LargeLibraryItemsRecyclerFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 110
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$dataChangeObserver$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 112
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    .line 113
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$dataChangeObserver$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->refreshAZScrubber()V

    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 0

    .line 117
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeChanged(II)V

    .line 118
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$dataChangeObserver$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->refreshAZScrubber()V

    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 0

    .line 122
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeChanged(IILjava/lang/Object;)V

    .line 123
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$dataChangeObserver$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->refreshAZScrubber()V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0

    .line 127
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeInserted(II)V

    .line 128
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$dataChangeObserver$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->refreshAZScrubber()V

    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 0

    .line 132
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeMoved(III)V

    .line 133
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$dataChangeObserver$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->refreshAZScrubber()V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0

    .line 137
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeRemoved(II)V

    .line 138
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$dataChangeObserver$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->refreshAZScrubber()V

    return-void
.end method
