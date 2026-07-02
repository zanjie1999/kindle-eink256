.class public final Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment;
.super Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment;
.source "CollectionMultiSelectRecyclerFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment$Companion;
    }
.end annotation


# static fields
.field private static final ADDING_TASK_FRAGMENT_TAG:Ljava/lang/String; = "AddTaskFragment"

.field private static final COLLECTION_ID_KEY:Ljava/lang/String; = "CollectionId"

.field public static final Companion:Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment$Companion;


# instance fields
.field private final editCollectionHelper:Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment;->Companion:Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment;-><init>()V

    .line 39
    new-instance v0, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper;-><init>(Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment;->editCollectionHelper:Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper;

    return-void
.end method

.method private final getAddToCollectionFragment()Lcom/amazon/kcp/library/fragments/AddToCollectionTaskFragment;
    .locals 2

    .line 153
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "AddTaskFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lcom/amazon/kcp/library/fragments/AddToCollectionTaskFragment;

    return-object v0
.end method

.method public static final newInstance(Ljava/lang/String;)Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment;->Companion:Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment$Companion;

    invoke-virtual {v0, p0}, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment$Companion;->newInstance(Ljava/lang/String;)Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment;

    move-result-object p0

    return-object p0
.end method

.method private final reportAddToCollectionActionMetrics(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;)V"
        }
    .end annotation

    .line 157
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Utils.getFactory().kindl\u2026gStreamsEncoder ?: return"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 159
    invoke-static {p1}, Lcom/amazon/kcp/util/MetricsUtils;->getAsinListStringFromLibraryItemList(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "MetricsUtils.getAsinList\u2026temList(checkedBookItems)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "ASINS"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "AddToCollectionsPage"

    const-string v2, "AddToCollection"

    .line 160
    invoke-interface {v0, p1, v2, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final addCollectionItems()V
    .locals 3

    .line 128
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "CollectionId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 129
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment;->editCollectionHelper:Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper;->getCheckedLibraryItems()Ljava/util/List;

    move-result-object v1

    .line 130
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment;->getAddToCollectionFragment()Lcom/amazon/kcp/library/fragments/AddToCollectionTaskFragment;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1, v0}, Lcom/amazon/kcp/library/fragments/AddToCollectionTaskFragment;->addItemsToCollection(Ljava/util/List;Ljava/lang/String;)V

    :cond_1
    if-eqz v1, :cond_2

    .line 133
    invoke-direct {p0, v1}, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment;->reportAddToCollectionActionMetrics(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public final deselectAll()V
    .locals 1

    .line 143
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getRecyclerAdapter()Lcom/amazon/kcp/library/FastRecyclerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->clearCheckedItems()V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment;->editCollectionHelper:Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper;->onDeselectAll()V

    return-void
.end method

.method public getItemCountProvider()Lcom/amazon/kcp/library/fragments/ILibraryItemCountProvider;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic newAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment;->newAdapter()Lcom/amazon/kcp/library/FastRecyclerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public newAdapter()Lcom/amazon/kcp/library/FastRecyclerAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/kcp/library/FastRecyclerAdapter<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;"
        }
    .end annotation

    .line 51
    new-instance v0, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment$newAdapter$1;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string/jumbo v2, "requireActivity()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0, v1}, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment$newAdapter$1;-><init>(Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment;Landroid/app/Activity;)V

    .line 77
    invoke-virtual {v0}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->init()Lcom/amazon/kcp/library/FastRecyclerAdapter;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .line 81
    invoke-super {p0, p1}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->unregisterForContextMenu(Landroid/view/View;)V

    if-eqz p1, :cond_1

    .line 92
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment;->editCollectionHelper:Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper;->getCheckedLibraryItems()Ljava/util/List;

    move-result-object p1

    const-string v0, "checkedItems"

    .line 93
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getRecyclerAdapter()Lcom/amazon/kcp/library/FastRecyclerAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 95
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    const-string v3, "libraryItem"

    .line 96
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->setItemChecked(Ljava/lang/Object;Z)V

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 99
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment;->editCollectionHelper:Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper;->notifyListener()V

    nop

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 105
    invoke-super {p0, p1}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 106
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment;->editCollectionHelper:Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper;->onCreate(Landroid/os/Bundle;)V

    .line 108
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment;->getAddToCollectionFragment()Lcom/amazon/kcp/library/fragments/AddToCollectionTaskFragment;

    move-result-object p1

    if-nez p1, :cond_2

    .line 109
    new-instance p1, Lcom/amazon/kcp/library/fragments/AddToCollectionTaskFragment;

    invoke-direct {p1}, Lcom/amazon/kcp/library/fragments/AddToCollectionTaskFragment;-><init>()V

    .line 110
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string v1, "AddTaskFragment"

    .line 111
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    :cond_1
    if-eqz v0, :cond_2

    .line 112
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_2
    return-void
.end method

.method public onItemClick(ILcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;)V
    .locals 2

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getRecyclerAdapter()Lcom/amazon/kcp/library/FastRecyclerAdapter;

    move-result-object p3

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->getCheckedItems()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-interface {p3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-ne p3, v0, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    xor-int/lit8 v1, p3, 0x1

    .line 118
    invoke-virtual {p0, p2, p1, v1}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->setItemChecked(Ljava/lang/Object;IZ)V

    .line 119
    iget-object p2, p0, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment;->editCollectionHelper:Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper;

    xor-int/2addr p3, v0

    invoke-virtual {p2, p1, p3}, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper;->onItemClicked(IZ)V

    return-void
.end method

.method public bridge synthetic onItemClick(ILjava/lang/Object;Landroid/view/View;)V
    .locals 0

    .line 22
    check-cast p2, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment;->onItemClick(ILcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;)V

    return-void
.end method

.method public onRefresh()V
    .locals 1

    .line 148
    invoke-super {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->onRefresh()V

    .line 149
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment;->editCollectionHelper:Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper;->onRefresh()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string/jumbo v0, "savedInstanceState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-super {p0, p1}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 124
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment;->editCollectionHelper:Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public final selectAll()V
    .locals 1

    .line 138
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getRecyclerAdapter()Lcom/amazon/kcp/library/FastRecyclerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->selectAllItems()V

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment;->editCollectionHelper:Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper;->onSelectAll()V

    return-void
.end method

.method public final setFilterAndSort(Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kindle/krx/library/LibraryView;Ljava/lang/String;Lcom/amazon/kcp/library/ILibraryItemQuery;)V
    .locals 8

    const-string v0, "groupType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sortType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "viewType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "originId"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getHelper()Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->setFilterAndSort(Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kindle/krx/library/LibraryView;Ljava/lang/String;Lcom/amazon/kcp/library/ILibraryItemQuery;)V

    return-void
.end method

.method public final setMultiSelectListener(Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper$IMultiSelectListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment;->editCollectionHelper:Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper;->setMultiSelectListener(Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper$IMultiSelectListener;)V

    return-void
.end method
