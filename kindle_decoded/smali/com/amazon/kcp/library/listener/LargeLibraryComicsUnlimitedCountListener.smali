.class public final Lcom/amazon/kcp/library/listener/LargeLibraryComicsUnlimitedCountListener;
.super Lcom/amazon/kcp/library/listener/LargeLibraryCountUpdateListener;
.source "LargeCountUpdateListener.kt"


# instance fields
.field private final filterSet:Lcom/amazon/kindle/observablemodel/ModelFilter;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;)V
    .locals 7

    const-string v0, "adapterHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "holder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v4, p1

    .line 65
    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/library/listener/LargeLibraryCountUpdateListener;-><init>(Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 68
    new-instance p1, Lcom/amazon/kindle/observablemodel/ModelFilter;

    invoke-direct {p1}, Lcom/amazon/kindle/observablemodel/ModelFilter;-><init>()V

    const/16 p2, 0x9

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/observablemodel/ModelFilter;->modelFilterWithOwnershipSet(Ljava/util/Set;)Lcom/amazon/kindle/observablemodel/ModelFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/listener/LargeLibraryComicsUnlimitedCountListener;->filterSet:Lcom/amazon/kindle/observablemodel/ModelFilter;

    return-void
.end method


# virtual methods
.method public createCountValue(Lcom/amazon/kindle/observablemodel/ModelCountUpdate;)Lcom/amazon/kcp/library/fragments/cache/CountValue;
    .locals 9

    const-string v0, "countUpdate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/amazon/kcp/library/listener/LargeLibraryCountUpdateListener;->getGroupId()Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 77
    :cond_0
    new-instance v8, Lcom/amazon/kcp/library/fragments/cache/CountValue;

    .line 78
    invoke-virtual {p0}, Lcom/amazon/kcp/library/listener/LargeLibraryCountUpdateListener;->getGroupId()Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object v1

    const/4 v2, 0x0

    .line 79
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/listener/LargeLibraryComicsUnlimitedCountListener;->isItemValid(Lcom/amazon/kindle/observablemodel/ModelCountUpdate;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1a

    const/4 v7, 0x0

    move-object v0, v8

    .line 77
    invoke-direct/range {v0 .. v7}, Lcom/amazon/kcp/library/fragments/cache/CountValue;-><init>(Lcom/amazon/kindle/observablemodel/ItemID;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v8
.end method

.method public getFilterSet()Lcom/amazon/kindle/observablemodel/ModelFilter;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/amazon/kcp/library/listener/LargeLibraryComicsUnlimitedCountListener;->filterSet:Lcom/amazon/kindle/observablemodel/ModelFilter;

    return-object v0
.end method

.method public isItemValid(Lcom/amazon/kindle/observablemodel/ModelCountUpdate;)Z
    .locals 4

    const-string v0, "countUpdate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1}, Lcom/amazon/kindle/observablemodel/ModelCountUpdate;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
