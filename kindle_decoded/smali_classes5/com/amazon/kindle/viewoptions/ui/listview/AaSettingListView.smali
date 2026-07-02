.class public final Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListView;
.super Lcom/amazon/kindle/viewoptions/ui/AaSettingsView;
.source "AaSettingListView.kt"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private adapter:Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLandroidx/recyclerview/widget/RecyclerView$ItemDecoration;Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager$ViewHolderType;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;",
            "Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager$ViewHolderType;",
            "Ljava/util/List<",
            "*>;I)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "viewHolderType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingsView;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 22
    invoke-virtual {v0, p6}, Landroid/view/ViewGroup;->setId(I)V

    const/4 p6, 0x0

    if-nez p2, :cond_0

    .line 26
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 28
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p3, :cond_1

    .line 32
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 35
    :cond_1
    iget-object p3, p0, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p1, p2, p6}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 36
    new-instance p1, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter;

    invoke-direct {p1, p5, p4}, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter;-><init>(Ljava/util/List;Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager$ViewHolderType;)V

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListView;->adapter:Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter;

    .line 37
    iget-object p2, p0, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 38
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p6}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 39
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final getAdapter()Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListView;->adapter:Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 80
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 81
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListView;->adapter:Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter;

    invoke-virtual {p1}, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter;->viewLayoutCompleted()V

    return-void
.end method

.method public final scrollToPosition(I)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public final setAdapter(Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListView;->adapter:Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter;

    return-void
.end method

.method public final setHasFixedSize(Z)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    return-void
.end method

.method public final setItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V
    .locals 1

    const-string v0, "decoration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method public final setSelectedPosition(I)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListView;->adapter:Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter;->setSelectedPosition(I)V

    return-void
.end method

.method public final updateData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListView;->adapter:Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter;->updateDataSet(Ljava/util/List;)V

    return-void
.end method
