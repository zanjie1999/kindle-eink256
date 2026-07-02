.class public final Lcom/amazon/kcp/library/fragments/LargeLibraryItemsFragmentHelper;
.super Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper;
.source "LargeLibraryItemsFragmentHelper.kt"


# instance fields
.field private adapterHelper:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;IZZ)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;IZZ)V"
        }
    .end annotation

    const-string v0, "libraryFragment"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "libraryAdapterFragment"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x60

    const/4 v10, 0x0

    move-object v1, p0

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    .line 24
    invoke-direct/range {v1 .. v10}, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper;-><init>(Landroidx/fragment/app/Fragment;Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;IZZLcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;Lcom/amazon/kindle/content/ILibraryService;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public applyFilter(Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Lcom/amazon/kcp/library/ILibraryDisplayItem;
    .locals 5

    const-string v0, "displayItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "holder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    instance-of v0, p1, Lcom/amazon/kcp/library/IGroupDisplayItem;

    if-eqz v0, :cond_4

    .line 32
    instance-of v0, p2, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;

    if-eqz v0, :cond_4

    .line 33
    check-cast p2, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;

    invoke-virtual {p2}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 35
    move-object v2, p1

    check-cast v2, Lcom/amazon/kcp/library/IGroupDisplayItem;

    long-to-int v1, v0

    invoke-interface {v2, v1}, Lcom/amazon/kcp/library/IGroupDisplayItem;->setFilteredAsinCount(I)V

    .line 42
    :cond_0
    instance-of v0, p1, Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem;

    if-eqz v0, :cond_3

    .line 43
    invoke-virtual {p2}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->getRepresentativeId()Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 45
    move-object v1, p1

    check-cast v1, Lcom/amazon/kcp/library/IGroupDisplayItem;

    invoke-static {v0}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->itemIdToBookId(Lcom/amazon/kindle/observablemodel/ItemID;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/amazon/kcp/library/IGroupDisplayItem;->setCoverBookId(Lcom/amazon/kindle/model/content/IBookID;)V

    .line 47
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem;

    invoke-virtual {p2}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->isGroupRead()Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p2, Lcom/amazon/kindle/krx/content/IBook$ReadState;->READ:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    goto :goto_0

    :cond_2
    sget-object p2, Lcom/amazon/kindle/krx/content/IBook$ReadState;->UNREAD:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    :goto_0
    invoke-virtual {v0, p2}, Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem;->setReadState(Lcom/amazon/kindle/krx/content/IBook$ReadState;)V

    :cond_3
    return-object p1

    .line 54
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper;->applyFilter(Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Lcom/amazon/kcp/library/ILibraryDisplayItem;

    move-result-object p1

    return-object p1
.end method

.method protected onItemClickWithReadingStream(Landroid/view/View;IJLjava/lang/String;)V
    .locals 0

    .line 59
    iget-object p3, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsFragmentHelper;->adapterHelper:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    if-eqz p3, :cond_0

    .line 60
    invoke-virtual {p3}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->numHeaders()I

    move-result p4

    add-int/2addr p2, p4

    invoke-virtual {p3, p2}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->getItem(I)Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p5}, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper;->onItemClickWithReadingStream(Landroid/view/View;Lcom/amazon/kindle/observablemodel/ItemID;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public periodicalArguments()Lcom/amazon/kcp/integrator/PeriodicalArguments;
    .locals 4

    .line 69
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsFragmentHelper;->adapterHelper:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->getModelFilter()Lcom/amazon/kindle/observablemodel/ModelFilter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/observablemodel/ModelFilter;->getLocationSet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 70
    :goto_0
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 71
    :goto_1
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsFragmentHelper;->adapterHelper:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->getModelFilter()Lcom/amazon/kindle/observablemodel/ModelFilter;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/amazon/kindle/observablemodel/ModelFilter;->getReadingProgressSet()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v1

    :goto_2
    const/4 v3, 0x3

    .line 73
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v1, Lcom/amazon/kindle/krx/content/IBook$ReadState;->READ:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    goto :goto_3

    .line 74
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/amazon/kindle/krx/content/IBook$ReadState;->UNREAD:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    .line 77
    :goto_3
    new-instance v2, Lcom/amazon/kcp/integrator/PeriodicalArguments;

    invoke-direct {v2, v0, v1}, Lcom/amazon/kcp/integrator/PeriodicalArguments;-><init>(ZLcom/amazon/kindle/krx/content/IBook$ReadState;)V

    return-object v2
.end method

.method public final setAdapterHelper(Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;)V
    .locals 1

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsFragmentHelper;->adapterHelper:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    return-void
.end method
