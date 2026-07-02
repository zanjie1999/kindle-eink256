.class public Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterUpdater;
.super Ljava/lang/Object;
.source "RecyclerAdapterUpdater.kt"

# interfaces
.implements Lcom/amazon/kcp/library/fragments/RecyclerAdapterUpdater;


# instance fields
.field private adapter:Lcom/amazon/kcp/library/FastRecyclerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kcp/library/FastRecyclerAdapter<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;"
        }
    .end annotation
.end field

.field private cache:Lcom/amazon/kcp/library/fragments/CurrentValueCache;

.field private final initialMerge:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final largeLibraryProcessNotifyOps:Lcom/amazon/kcp/library/fragments/LargeLibraryProcessNotifyOps;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/fragments/CurrentValueCache;Lcom/amazon/kcp/library/fragments/LargeLibraryProcessNotifyOps;)V
    .locals 1

    const-string v0, "cache"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "largeLibraryProcessNotifyOps"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterUpdater;->largeLibraryProcessNotifyOps:Lcom/amazon/kcp/library/fragments/LargeLibraryProcessNotifyOps;

    .line 33
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterUpdater;->initialMerge:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterUpdater;->cache:Lcom/amazon/kcp/library/fragments/CurrentValueCache;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/amazon/kcp/library/fragments/CurrentValueCache;Lcom/amazon/kcp/library/fragments/LargeLibraryProcessNotifyOps;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 31
    sget-object p2, Lcom/amazon/kcp/library/fragments/LargeLibraryProcessNotifyOpsImpl;->INSTANCE:Lcom/amazon/kcp/library/fragments/LargeLibraryProcessNotifyOpsImpl;

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterUpdater;-><init>(Lcom/amazon/kcp/library/fragments/CurrentValueCache;Lcom/amazon/kcp/library/fragments/LargeLibraryProcessNotifyOps;)V

    return-void
.end method


# virtual methods
.method public final getCache()Lcom/amazon/kcp/library/fragments/CurrentValueCache;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterUpdater;->cache:Lcom/amazon/kcp/library/fragments/CurrentValueCache;

    return-object v0
.end method

.method public onChangeUpdate(Lcom/amazon/kindle/observablemodel/ModelChangeUpdate;)[I
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterUpdater;->cache:Lcom/amazon/kcp/library/fragments/CurrentValueCache;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/fragments/CurrentValueCache;->mergeChangeUpdate(Lcom/amazon/kindle/observablemodel/ModelChangeUpdate;)[I

    move-result-object p1

    .line 43
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterUpdater;->largeLibraryProcessNotifyOps:Lcom/amazon/kcp/library/fragments/LargeLibraryProcessNotifyOps;

    invoke-interface {v0, p1, p0}, Lcom/amazon/kcp/library/fragments/LargeLibraryProcessNotifyOps;->processNotifyOps([ILcom/amazon/kcp/library/fragments/RecyclerAdapterUpdater;)V

    return-object p1
.end method

.method public onDataSetChanged()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterUpdater;->adapter:Lcom/amazon/kcp/library/FastRecyclerAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    :cond_0
    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onItemChanged(I)V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterUpdater;->adapter:Lcom/amazon/kcp/library/FastRecyclerAdapter;

    const/4 v1, 0x0

    const-string v2, "adapter"

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->numHeaders()I

    move-result v1

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public onItemInserted(I)V
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterUpdater;->adapter:Lcom/amazon/kcp/library/FastRecyclerAdapter;

    const/4 v1, 0x0

    const-string v2, "adapter"

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->numHeaders()I

    move-result v1

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    return-void

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public onItemMoved(II)V
    .locals 4

    .line 74
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterUpdater;->adapter:Lcom/amazon/kcp/library/FastRecyclerAdapter;

    const/4 v1, 0x0

    const-string v2, "adapter"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->numHeaders()I

    move-result v0

    .line 75
    iget-object v3, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterUpdater;->adapter:Lcom/amazon/kcp/library/FastRecyclerAdapter;

    if-eqz v3, :cond_0

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    invoke-virtual {v3, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    return-void

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 74
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public onItemRangeChanged(II)V
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterUpdater;->adapter:Lcom/amazon/kcp/library/FastRecyclerAdapter;

    const/4 v1, 0x0

    const-string v2, "adapter"

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->numHeaders()I

    move-result v1

    add-int/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public onItemRangeInserted(II)V
    .locals 4

    const/4 v0, 0x0

    const-string v1, "adapter"

    if-nez p1, :cond_1

    .line 83
    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterUpdater;->initialMerge:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 84
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterUpdater;->adapter:Lcom/amazon/kcp/library/FastRecyclerAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_1
    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterUpdater;->adapter:Lcom/amazon/kcp/library/FastRecyclerAdapter;

    if-eqz v2, :cond_3

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->numHeaders()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {v2, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    :goto_0
    return-void

    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method

.method public onItemRangeRemoved(II)V
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterUpdater;->adapter:Lcom/amazon/kcp/library/FastRecyclerAdapter;

    const/4 v1, 0x0

    const-string v2, "adapter"

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->numHeaders()I

    move-result v1

    add-int/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    return-void

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public onItemRemoved(I)V
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterUpdater;->adapter:Lcom/amazon/kcp/library/FastRecyclerAdapter;

    const/4 v1, 0x0

    const-string v2, "adapter"

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->numHeaders()I

    move-result v1

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    return-void

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public reset()V
    .locals 1

    .line 51
    new-instance v0, Lcom/amazon/kcp/library/fragments/CurrentValueCache;

    invoke-direct {v0}, Lcom/amazon/kcp/library/fragments/CurrentValueCache;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterUpdater;->cache:Lcom/amazon/kcp/library/fragments/CurrentValueCache;

    return-void
.end method

.method public final setAdapter(Lcom/amazon/kcp/library/FastRecyclerAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/library/FastRecyclerAdapter<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;)V"
        }
    .end annotation

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterUpdater;->adapter:Lcom/amazon/kcp/library/FastRecyclerAdapter;

    return-void
.end method
