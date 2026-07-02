.class public final Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;
.super Lcom/amazon/kcp/library/FastRecyclerViewHolder;
.source "LargeLibraryRecyclerAdapterHelper.kt"

# interfaces
.implements Lcom/amazon/kindle/observablemodel/LibraryItemDetailListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kcp/library/FastRecyclerViewHolder;",
        "Lcom/amazon/kindle/observablemodel/LibraryItemDetailListener<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final adapter:Lcom/amazon/kcp/library/FastRecyclerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kcp/library/FastRecyclerAdapter<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;"
        }
    .end annotation
.end field

.field private bound:Z

.field private count:J

.field private groupListener:Lcom/amazon/kcp/library/fragments/LargeLibraryGroupListener;

.field private isGroupRead:Z

.field private itemId:Lcom/amazon/kindle/observablemodel/ItemID;

.field private originType:Ljava/lang/String;

.field private representativeId:Lcom/amazon/kindle/observablemodel/ItemID;

.field private triggerRefresh:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/FastRecyclerAdapter;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/library/FastRecyclerAdapter<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 399
    invoke-direct {p0, p2}, Lcom/amazon/kcp/library/FastRecyclerViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->adapter:Lcom/amazon/kcp/library/FastRecyclerAdapter;

    const-wide/16 p1, -0x1

    .line 403
    iput-wide p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->count:J

    .line 408
    sget-object p1, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder$triggerRefresh$1;->INSTANCE:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder$triggerRefresh$1;

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->triggerRefresh:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final getBound()Z
    .locals 1

    .line 410
    iget-boolean v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->bound:Z

    return v0
.end method

.method public final getCount()J
    .locals 2

    .line 403
    iget-wide v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->count:J

    return-wide v0
.end method

.method public final getGroupListener()Lcom/amazon/kcp/library/fragments/LargeLibraryGroupListener;
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->groupListener:Lcom/amazon/kcp/library/fragments/LargeLibraryGroupListener;

    return-object v0
.end method

.method public final getItemId()Lcom/amazon/kindle/observablemodel/ItemID;
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->itemId:Lcom/amazon/kindle/observablemodel/ItemID;

    return-object v0
.end method

.method public final getRepresentativeId()Lcom/amazon/kindle/observablemodel/ItemID;
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->representativeId:Lcom/amazon/kindle/observablemodel/ItemID;

    return-object v0
.end method

.method public final getTriggerRefresh()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 408
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->triggerRefresh:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final isGroupRead()Z
    .locals 1

    .line 404
    iget-boolean v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->isGroupRead:Z

    return v0
.end method

.method public onChangeUpdate(Ljava/lang/Object;)V
    .locals 7

    .line 413
    instance-of v0, p1, Lcom/amazon/kindle/observablemodel/ItemID;

    if-nez v0, :cond_0

    return-void

    .line 414
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/amazon/kindle/observablemodel/ItemID;

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->itemId:Lcom/amazon/kindle/observablemodel/ItemID;

    .line 416
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->adapter:Lcom/amazon/kcp/library/FastRecyclerAdapter;

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "itemView"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v0, "itemView.context"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->adapter:Lcom/amazon/kcp/library/FastRecyclerAdapter;

    invoke-virtual {v2}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->numHeaders()I

    move-result v2

    sub-int v5, v0, v2

    move-object v2, p0

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->bindView(Lcom/amazon/kcp/library/FastRecyclerViewHolder;Landroid/view/View;Landroid/content/Context;ILjava/lang/Object;)V

    return-void
.end method

.method public final setBound(Z)V
    .locals 0

    .line 410
    iput-boolean p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->bound:Z

    return-void
.end method

.method public final setCount(J)V
    .locals 0

    .line 403
    iput-wide p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->count:J

    return-void
.end method

.method public final setGroupListener(Lcom/amazon/kcp/library/fragments/LargeLibraryGroupListener;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->groupListener:Lcom/amazon/kcp/library/fragments/LargeLibraryGroupListener;

    return-void
.end method

.method public final setGroupRead(Z)V
    .locals 0

    .line 404
    iput-boolean p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->isGroupRead:Z

    return-void
.end method

.method public final setItemId(Lcom/amazon/kindle/observablemodel/ItemID;)V
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->itemId:Lcom/amazon/kindle/observablemodel/ItemID;

    return-void
.end method

.method public final setOriginType(Ljava/lang/String;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->originType:Ljava/lang/String;

    return-void
.end method

.method public final setRepresentativeId(Lcom/amazon/kindle/observablemodel/ItemID;)V
    .locals 0

    .line 402
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->representativeId:Lcom/amazon/kindle/observablemodel/ItemID;

    return-void
.end method

.method public final setTriggerRefresh(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 408
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->triggerRefresh:Lkotlin/jvm/functions/Function0;

    return-void
.end method
