.class public abstract Lcom/amazon/kcp/library/FastRecyclerAdapter;
.super Lcom/amazon/kcp/library/AbstractRecyclerAdapter;
.source "FastRecyclerAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/FastRecyclerAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazon/kcp/library/AbstractRecyclerAdapter<",
        "TT;",
        "Lcom/amazon/kcp/library/FastRecyclerViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final VIEW_TYPE_STANDARD:I = -0x1


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final headerHelper:Lcom/amazon/kcp/library/RecyclerHeaderHelper;

.field private final multiSelectHelper:Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kcp/library/RecyclerMultiSelectHelper<",
            "TT;>;"
        }
    .end annotation
.end field

.field private onItemClickListener:Lcom/amazon/kcp/library/FastRecyclerItemClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kcp/library/FastRecyclerItemClickListener<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private onItemLongClickListener:Lcom/amazon/kcp/library/FastRecyclerItemLongClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kcp/library/FastRecyclerItemLongClickListener<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/library/FastRecyclerAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/library/FastRecyclerAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/ActionMode$Callback;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Lcom/amazon/kcp/library/AbstractRecyclerAdapter;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/library/FastRecyclerAdapter;->activity:Landroid/app/Activity;

    .line 34
    new-instance p1, Lcom/amazon/kcp/library/RecyclerHeaderHelper;

    const/4 v0, -0x2

    invoke-direct {p1, v0}, Lcom/amazon/kcp/library/RecyclerHeaderHelper;-><init>(I)V

    iput-object p1, p0, Lcom/amazon/kcp/library/FastRecyclerAdapter;->headerHelper:Lcom/amazon/kcp/library/RecyclerHeaderHelper;

    .line 35
    new-instance p1, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;

    iget-object v0, p0, Lcom/amazon/kcp/library/FastRecyclerAdapter;->activity:Landroid/app/Activity;

    invoke-direct {p1, v0, p2}, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;-><init>(Landroid/app/Activity;Landroid/view/ActionMode$Callback;)V

    iput-object p1, p0, Lcom/amazon/kcp/library/FastRecyclerAdapter;->multiSelectHelper:Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/Activity;Landroid/view/ActionMode$Callback;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 25
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/library/FastRecyclerAdapter;-><init>(Landroid/app/Activity;Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method public static final synthetic access$getAdjustedPosition(Lcom/amazon/kcp/library/FastRecyclerAdapter;I)I
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->getAdjustedPosition(I)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getMultiSelectHelper$p(Lcom/amazon/kcp/library/FastRecyclerAdapter;)Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/amazon/kcp/library/FastRecyclerAdapter;->multiSelectHelper:Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;

    return-object p0
.end method

.method public static final synthetic access$getOnItemClickListener$p(Lcom/amazon/kcp/library/FastRecyclerAdapter;)Lcom/amazon/kcp/library/FastRecyclerItemClickListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/amazon/kcp/library/FastRecyclerAdapter;->onItemClickListener:Lcom/amazon/kcp/library/FastRecyclerItemClickListener;

    return-object p0
.end method

.method public static final synthetic access$getOnItemLongClickListener$p(Lcom/amazon/kcp/library/FastRecyclerAdapter;)Lcom/amazon/kcp/library/FastRecyclerItemLongClickListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/amazon/kcp/library/FastRecyclerAdapter;->onItemLongClickListener:Lcom/amazon/kcp/library/FastRecyclerItemLongClickListener;

    return-object p0
.end method

.method private final getAdjustedPosition(I)I
    .locals 1

    .line 193
    invoke-virtual {p0}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->numHeaders()I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public final addHeader(Lcom/amazon/kcp/library/RecyclerHeader;)V
    .locals 2

    const-string v0, "header"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/amazon/kcp/library/FastRecyclerAdapter;->headerHelper:Lcom/amazon/kcp/library/RecyclerHeaderHelper;

    iget-object v1, p0, Lcom/amazon/kcp/library/FastRecyclerAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1, p1}, Lcom/amazon/kcp/library/RecyclerHeaderHelper;->addHeader(Landroidx/recyclerview/widget/RecyclerView;Lcom/amazon/kcp/library/RecyclerHeader;)V

    .line 214
    invoke-virtual {p0}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->numHeaders()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    return-void

    :cond_0
    const-string/jumbo p1, "recyclerView"

    .line 213
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public abstract bindView(Lcom/amazon/kcp/library/FastRecyclerViewHolder;Landroid/view/View;Landroid/content/Context;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/library/FastRecyclerViewHolder;",
            "Landroid/view/View;",
            "Landroid/content/Context;",
            "ITT;)V"
        }
    .end annotation
.end method

.method public final clearCheckedItems()V
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/amazon/kcp/library/FastRecyclerAdapter;->multiSelectHelper:Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;->clear()V

    return-void
.end method

.method protected final createView(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 2

    const-string/jumbo v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/amazon/kcp/library/FastRecyclerAdapter;->headerHelper:Lcom/amazon/kcp/library/RecyclerHeaderHelper;

    invoke-virtual {v0, p2}, Lcom/amazon/kcp/library/RecyclerHeaderHelper;->isViewTypeHeader(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/amazon/kcp/library/FastRecyclerAdapter;->headerHelper:Lcom/amazon/kcp/library/RecyclerHeaderHelper;

    iget-object v1, p0, Lcom/amazon/kcp/library/FastRecyclerAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p2, v1, p1}, Lcom/amazon/kcp/library/RecyclerHeaderHelper;->newHeaderView(ILandroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/FastRecyclerAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {p0, v0, p1, p2}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->newView(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected final getActivity()Landroid/app/Activity;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/kcp/library/FastRecyclerAdapter;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public final getCheckedItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 246
    iget-object v1, p0, Lcom/amazon/kcp/library/FastRecyclerAdapter;->multiSelectHelper:Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;->getCheckedItems()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 196
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->getAdjustedPosition(I)I

    move-result p1

    .line 197
    invoke-super {p0, p1}, Lcom/amazon/kcp/library/AbstractRecyclerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 2

    .line 158
    invoke-super {p0}, Lcom/amazon/kcp/library/AbstractRecyclerAdapter;->getItemCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->numHeaders()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 315
    iget-object v0, p0, Lcom/amazon/kcp/library/FastRecyclerAdapter;->headerHelper:Lcom/amazon/kcp/library/RecyclerHeaderHelper;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/RecyclerHeaderHelper;->isPositionHeader(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/amazon/kcp/library/FastRecyclerAdapter;->headerHelper:Lcom/amazon/kcp/library/RecyclerHeaderHelper;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/RecyclerHeaderHelper;->getHeaderItemId(I)J

    move-result-wide v0

    goto :goto_0

    .line 317
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/AbstractRecyclerAdapter;->itemId(Ljava/lang/Object;)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/amazon/kcp/library/FastRecyclerAdapter;->headerHelper:Lcom/amazon/kcp/library/RecyclerHeaderHelper;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/RecyclerHeaderHelper;->isPositionHeader(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/amazon/kcp/library/FastRecyclerAdapter;->headerHelper:Lcom/amazon/kcp/library/RecyclerHeaderHelper;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/RecyclerHeaderHelper;->getHeaderViewType(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public init()Lcom/amazon/kcp/library/FastRecyclerAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/kcp/library/FastRecyclerAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/amazon/kcp/library/FastRecyclerAdapter;->multiSelectHelper:Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;

    invoke-virtual {v0, p0}, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;->init(Lcom/amazon/kcp/library/AbstractRecyclerAdapter;)V

    const/4 v0, 0x1

    .line 81
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-object p0
.end method

.method public final isInAdapterRange$LibraryModule_release(I)Z
    .locals 1

    .line 141
    invoke-virtual {p0}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->getItemCount()I

    move-result v0

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    if-le v0, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public final isItemIdChecked(J)Z
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/amazon/kcp/library/FastRecyclerAdapter;->multiSelectHelper:Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;->isItemIdChecked(J)Z

    move-result p1

    return p1
.end method

.method public abstract newView(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroid/view/View;
.end method

.method public final numHeaders()I
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/amazon/kcp/library/FastRecyclerAdapter;->headerHelper:Lcom/amazon/kcp/library/RecyclerHeaderHelper;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/RecyclerHeaderHelper;->numHeaders()I

    move-result v0

    return v0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string/jumbo v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 174
    iput-object p1, p0, Lcom/amazon/kcp/library/FastRecyclerAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 25
    check-cast p1, Lcom/amazon/kcp/library/FastRecyclerViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->onBindViewHolder(Lcom/amazon/kcp/library/FastRecyclerViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/amazon/kcp/library/FastRecyclerViewHolder;I)V
    .locals 9

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/amazon/kcp/library/FastRecyclerAdapter;->headerHelper:Lcom/amazon/kcp/library/RecyclerHeaderHelper;

    invoke-virtual {v0, p2}, Lcom/amazon/kcp/library/RecyclerHeaderHelper;->isPositionHeader(I)Z

    move-result v0

    const-string v1, "holder.itemView"

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/amazon/kcp/library/FastRecyclerAdapter;->headerHelper:Lcom/amazon/kcp/library/RecyclerHeaderHelper;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p2, p1}, Lcom/amazon/kcp/library/RecyclerHeaderHelper;->bindHeaderView(ILandroid/view/View;)V

    goto :goto_0

    .line 107
    :cond_0
    const-class v0, Lcom/amazon/kcp/LargeLibraryPerformanceTracker;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/LargeLibraryPerformanceTracker;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/amazon/kcp/LargeLibraryPerformanceTracker;->onItemViewBound()V

    .line 109
    :cond_1
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->CHANGE_TO_LIST_VIEW_MODE:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    const-string v2, "KindlePerformanceConstan\u2026.CHANGE_TO_LIST_VIEW_MODE"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 112
    invoke-virtual {p0, p2}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 113
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-direct {p0, p2}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->getAdjustedPosition(I)I

    move-result v7

    .line 117
    iget-object v6, p0, Lcom/amazon/kcp/library/FastRecyclerAdapter;->activity:Landroid/app/Activity;

    move-object v3, p0

    move-object v4, p1

    move-object v5, v2

    move-object v8, v0

    invoke-virtual/range {v3 .. v8}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->bindView(Lcom/amazon/kcp/library/FastRecyclerViewHolder;Landroid/view/View;Landroid/content/Context;ILjava/lang/Object;)V

    .line 118
    iget-object p2, p0, Lcom/amazon/kcp/library/FastRecyclerAdapter;->multiSelectHelper:Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;

    invoke-virtual {p2, v2, v0}, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;->onBindViewHolder(Landroid/view/View;Ljava/lang/Object;)V

    .line 119
    new-instance p2, Lcom/amazon/kcp/library/FastRecyclerAdapter$onBindViewHolder$1;

    invoke-direct {p2, p0, p1, v2, v0}, Lcom/amazon/kcp/library/FastRecyclerAdapter$onBindViewHolder$1;-><init>(Lcom/amazon/kcp/library/FastRecyclerAdapter;Lcom/amazon/kcp/library/FastRecyclerViewHolder;Landroid/view/View;Ljava/lang/Object;)V

    invoke-virtual {v2, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    new-instance p2, Lcom/amazon/kcp/library/FastRecyclerAdapter$onBindViewHolder$2;

    invoke-direct {p2, p0, p1, v2, v0}, Lcom/amazon/kcp/library/FastRecyclerAdapter$onBindViewHolder$2;-><init>(Lcom/amazon/kcp/library/FastRecyclerAdapter;Lcom/amazon/kcp/library/FastRecyclerViewHolder;Landroid/view/View;Ljava/lang/Object;)V

    invoke-virtual {v2, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/amazon/kcp/library/FastRecyclerViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/amazon/kcp/library/FastRecyclerViewHolder;
    .locals 1

    const-string/jumbo v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    new-instance v0, Lcom/amazon/kcp/library/FastRecyclerViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->createView(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/amazon/kcp/library/FastRecyclerViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public final onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/amazon/kcp/library/FastRecyclerAdapter;->multiSelectHelper:Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/amazon/kcp/library/FastRecyclerAdapter;->multiSelectHelper:Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 25
    check-cast p1, Lcom/amazon/kcp/library/FastRecyclerViewHolder;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->onViewRecycled(Lcom/amazon/kcp/library/FastRecyclerViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/amazon/kcp/library/FastRecyclerViewHolder;)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 146
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    if-gez v0, :cond_0

    return-void

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/library/FastRecyclerAdapter;->headerHelper:Lcom/amazon/kcp/library/RecyclerHeaderHelper;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/library/RecyclerHeaderHelper;->isPositionHeader(I)Z

    move-result v1

    const-string v2, "holder.itemView"

    if-eqz v1, :cond_1

    .line 151
    iget-object v1, p0, Lcom/amazon/kcp/library/FastRecyclerAdapter;->headerHelper:Lcom/amazon/kcp/library/RecyclerHeaderHelper;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0, p1}, Lcom/amazon/kcp/library/RecyclerHeaderHelper;->recycleHeaderView(ILandroid/view/View;)V

    goto :goto_0

    .line 153
    :cond_1
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1, v0}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->recycleView(Lcom/amazon/kcp/library/FastRecyclerViewHolder;Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method public abstract recycleView(Lcom/amazon/kcp/library/FastRecyclerViewHolder;Landroid/view/View;I)V
.end method

.method public final removeHeader(Lcom/amazon/kcp/library/RecyclerHeader;)V
    .locals 2

    const-string v0, "header"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/amazon/kcp/library/FastRecyclerAdapter;->headerHelper:Lcom/amazon/kcp/library/RecyclerHeaderHelper;

    iget-object v1, p0, Lcom/amazon/kcp/library/FastRecyclerAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1, p1}, Lcom/amazon/kcp/library/RecyclerHeaderHelper;->removeHeader(Landroidx/recyclerview/widget/RecyclerView;Lcom/amazon/kcp/library/RecyclerHeader;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 227
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    :cond_0
    return-void

    :cond_1
    const-string/jumbo p1, "recyclerView"

    .line 225
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final selectAllItems()V
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/amazon/kcp/library/FastRecyclerAdapter;->multiSelectHelper:Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;->selectAll()V

    return-void
.end method

.method public final setItemChecked(Ljava/lang/Object;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lcom/amazon/kcp/library/FastRecyclerAdapter;->multiSelectHelper:Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;->setItemChecked(Ljava/lang/Object;Z)V

    return-void
.end method

.method public final setOnItemClickListener(Lcom/amazon/kcp/library/FastRecyclerItemClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/library/FastRecyclerItemClickListener<",
            "-TT;>;)V"
        }
    .end annotation

    const-string/jumbo v0, "onItemClickListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    iput-object p1, p0, Lcom/amazon/kcp/library/FastRecyclerAdapter;->onItemClickListener:Lcom/amazon/kcp/library/FastRecyclerItemClickListener;

    return-void
.end method

.method public final setOnItemLongClickListener(Lcom/amazon/kcp/library/FastRecyclerItemLongClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/library/FastRecyclerItemLongClickListener<",
            "-TT;>;)V"
        }
    .end annotation

    const-string/jumbo v0, "onItemLongClickListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    iput-object p1, p0, Lcom/amazon/kcp/library/FastRecyclerAdapter;->onItemLongClickListener:Lcom/amazon/kcp/library/FastRecyclerItemLongClickListener;

    return-void
.end method

.method public final swapList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 305
    invoke-virtual {p0}, Lcom/amazon/kcp/library/AbstractRecyclerAdapter;->getList()Ljava/util/List;

    move-result-object v0

    .line 306
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    .line 309
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/AbstractRecyclerAdapter;->setList(Ljava/util/List;)V

    .line 310
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-object v0
.end method
