.class public final Lcom/amazon/kcp/library/fragments/LargeLibraryCollectionsRecyclerAdapterHelper;
.super Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;
.source "LargeLibraryCollectionsRecyclerAdapterHelper.kt"


# instance fields
.field private final uncollectedId:Lcom/amazon/kindle/observablemodel/ItemID;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;Ljava/lang/String;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;Lcom/amazon/kcp/library/ILibraryFilter;Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;Lcom/amazon/kindle/observablemodel/ModelSorting;)V
    .locals 1

    const-string/jumbo v0, "repository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "libraryFilter"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "modelContent"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "modelFilter"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "modelSorting"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct/range {p0 .. p7}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;-><init>(Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;Ljava/lang/String;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;Lcom/amazon/kcp/library/ILibraryFilter;Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;Lcom/amazon/kindle/observablemodel/ModelSorting;)V

    const-string p1, "Uncollected"

    .line 21
    invoke-static {p1}, Lcom/amazon/kindle/observablemodel/ItemID;->collectionItemWithIdentifier(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCollectionsRecyclerAdapterHelper;->uncollectedId:Lcom/amazon/kindle/observablemodel/ItemID;

    return-void
.end method

.method private final isUncollectedPosition(I)Z
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->getAdapterUpdater()Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterUpdater;->getCache()Lcom/amazon/kcp/library/fragments/CurrentValueCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/CurrentValueCache;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public bindView(Lcom/amazon/kcp/library/FastRecyclerViewHolder;ILcom/amazon/kindle/observablemodel/ItemID;)Z
    .locals 1

    const-string/jumbo v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0, p2}, Lcom/amazon/kcp/library/fragments/LargeLibraryCollectionsRecyclerAdapterHelper;->isUncollectedPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    check-cast p1, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;

    iget-object p2, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCollectionsRecyclerAdapterHelper;->uncollectedId:Lcom/amazon/kindle/observablemodel/ItemID;

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->setItemId(Lcom/amazon/kindle/observablemodel/ItemID;)V

    const/4 p1, 0x0

    goto :goto_0

    .line 39
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->bindView(Lcom/amazon/kcp/library/FastRecyclerViewHolder;ILcom/amazon/kindle/observablemodel/ItemID;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public getItem(I)Lcom/amazon/kindle/observablemodel/ItemID;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->numHeaders()I

    move-result v0

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryCollectionsRecyclerAdapterHelper;->isUncollectedPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCollectionsRecyclerAdapterHelper;->uncollectedId:Lcom/amazon/kindle/observablemodel/ItemID;

    const-string/jumbo v0, "uncollectedId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 31
    :cond_0
    invoke-super {p0, p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->getItem(I)Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public itemCount()I
    .locals 1

    .line 25
    invoke-super {p0}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->itemCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
