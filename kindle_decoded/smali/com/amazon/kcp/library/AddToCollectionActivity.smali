.class public Lcom/amazon/kcp/library/AddToCollectionActivity;
.super Lcom/amazon/kcp/library/BaseLibraryActivity;
.source "AddToCollectionActivity.java"

# interfaces
.implements Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper$IMultiSelectListener;
.implements Lcom/amazon/kcp/library/ui/MultiSelectSpinner$IMultiSelectSpinnerListener;


# static fields
.field public static final COLLECTION_FILTER_EXTRA_KEY:Ljava/lang/String; = "CollectionFilter"

.field public static final COLLECTION_ID_EXTRA_KEY:Ljava/lang/String; = "CollectionId"

.field public static final GRID_FRAGMENT_TAG:Ljava/lang/String; = "GridFragment"


# instance fields
.field protected collectionFilter:Lcom/amazon/kindle/krx/collections/CollectionFilter;

.field protected collectionId:Ljava/lang/String;

.field private initialAddButtonVisibility:Z

.field protected query:Ljava/lang/String;

.field private searchFieldWatcher:Landroid/text/TextWatcher;

.field protected searchText:Landroid/widget/EditText;

.field private selectionSpinner:Lcom/amazon/kcp/library/ui/MultiSelectSpinner;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/amazon/kcp/library/BaseLibraryActivity;-><init>()V

    const-string v0, ""

    .line 39
    iput-object v0, p0, Lcom/amazon/kcp/library/AddToCollectionActivity;->query:Ljava/lang/String;

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/amazon/kcp/library/AddToCollectionActivity;->initialAddButtonVisibility:Z

    .line 42
    new-instance v0, Lcom/amazon/kcp/library/AddToCollectionActivity$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/AddToCollectionActivity$1;-><init>(Lcom/amazon/kcp/library/AddToCollectionActivity;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/AddToCollectionActivity;->searchFieldWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method private setupToolbar()V
    .locals 3

    .line 114
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 115
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 116
    new-instance v0, Lcom/amazon/kcp/library/LibraryActionBarHelper;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/LibraryActionBarHelper;-><init>(Landroid/app/Activity;)V

    .line 117
    invoke-virtual {v0}, Lcom/amazon/kcp/library/LibraryActionBarHelper;->setDisplayHomeAsUpEnabled()V

    .line 118
    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->getInstance()Lcom/amazon/kindle/collections/ICollectionsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/library/AddToCollectionActivity;->collectionId:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/amazon/kindle/collections/ICollectionsManager;->getCollectionById(Ljava/lang/String;)Lcom/amazon/kindle/collections/dto/ICollection;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 120
    invoke-interface {v1}, Lcom/amazon/kindle/collections/dto/ICollection;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/LibraryActionBarHelper;->setActionBarTitle(Ljava/lang/String;)V

    .line 123
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 125
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 126
    sget v1, Lcom/amazon/kindle/librarymodule/R$layout;->add_to_collection_action_bar:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setCustomView(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public deselectAll()V
    .locals 1

    .line 195
    invoke-virtual {p0}, Lcom/amazon/kcp/library/AddToCollectionActivity;->getGridFragment()Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment;->deselectAll()V

    return-void
.end method

.method protected getGridFragment()Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment;
    .locals 4

    .line 158
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "GridFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment;

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/amazon/kcp/library/AddToCollectionActivity;->collectionId:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment;->newInstance(Ljava/lang/String;)Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment;

    move-result-object v0

    .line 161
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    .line 162
    sget v3, Lcom/amazon/kindle/librarymodule/R$id;->add_to_collection_root:I

    invoke-virtual {v2, v3, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 163
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-object v0
.end method

.method protected initLayoutAndViews()V
    .locals 1

    .line 104
    sget v0, Lcom/amazon/kindle/librarymodule/R$layout;->ruby_add_to_collection_screen:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 105
    invoke-direct {p0}, Lcom/amazon/kcp/library/AddToCollectionActivity;->setupToolbar()V

    .line 106
    invoke-virtual {p0}, Lcom/amazon/kcp/library/AddToCollectionActivity;->initializeListener()V

    .line 108
    invoke-virtual {p0}, Lcom/amazon/kcp/library/AddToCollectionActivity;->getGridFragment()Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment;

    move-result-object v0

    .line 109
    invoke-virtual {v0, p0}, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment;->setMultiSelectListener(Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper$IMultiSelectListener;)V

    .line 110
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/AddToCollectionActivity;->setFilterAndSort(Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment;)V

    return-void
.end method

.method protected initializeListener()V
    .locals 1

    .line 131
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->search_text:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/amazon/kcp/library/AddToCollectionActivity;->searchText:Landroid/widget/EditText;

    .line 132
    invoke-virtual {p0}, Lcom/amazon/kcp/library/AddToCollectionActivity;->setupSearchViewListener()V

    .line 133
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->selection_spinner:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/ui/MultiSelectSpinner;

    iput-object v0, p0, Lcom/amazon/kcp/library/AddToCollectionActivity;->selectionSpinner:Lcom/amazon/kcp/library/ui/MultiSelectSpinner;

    .line 134
    invoke-virtual {v0, p0}, Lcom/amazon/kcp/library/ui/MultiSelectSpinner;->setListener(Lcom/amazon/kcp/library/ui/MultiSelectSpinner$IMultiSelectSpinnerListener;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 65
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "CollectionId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/AddToCollectionActivity;->collectionId:Ljava/lang/String;

    .line 69
    sget-object p1, Lcom/amazon/kindle/krx/collections/CollectionFilter;->ALL:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    iput-object p1, p0, Lcom/amazon/kcp/library/AddToCollectionActivity;->collectionFilter:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    .line 70
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "CollectionFilter"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    invoke-static {p1}, Lcom/amazon/kindle/krx/collections/CollectionFilter;->valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/collections/CollectionFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/AddToCollectionActivity;->collectionFilter:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/library/AddToCollectionActivity;->initLayoutAndViews()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 80
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$menu;->add_to_collection_activity_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 81
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->add_to_collection_confirm:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 82
    iget-boolean v1, p0, Lcom/amazon/kcp/library/AddToCollectionActivity;->initialAddButtonVisibility:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 83
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/library/AddToCollectionActivity$2;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/AddToCollectionActivity$2;-><init>(Lcom/amazon/kcp/library/AddToCollectionActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 95
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 96
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 100
    :cond_0
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onSearchTextChanged()V
    .locals 1

    .line 145
    invoke-virtual {p0}, Lcom/amazon/kcp/library/AddToCollectionActivity;->getGridFragment()Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/AddToCollectionActivity;->setFilterAndSort(Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment;)V

    return-void
.end method

.method public onSelectionChanged(Ljava/util/Set;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 170
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 171
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    .line 172
    :goto_1
    iget-object v1, p0, Lcom/amazon/kcp/library/AddToCollectionActivity;->selectionSpinner:Lcom/amazon/kcp/library/ui/MultiSelectSpinner;

    invoke-virtual {v1, p1, p2}, Lcom/amazon/kcp/library/ui/MultiSelectSpinner;->setNumSelected(II)V

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 174
    :cond_2
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/AddToCollectionActivity;->setAddViewVisibility(Z)V

    return-void
.end method

.method public selectAll()V
    .locals 1

    .line 190
    invoke-virtual {p0}, Lcom/amazon/kcp/library/AddToCollectionActivity;->getGridFragment()Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment;->selectAll()V

    return-void
.end method

.method protected setAddViewVisibility(Z)V
    .locals 2

    .line 178
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getOptionsMenu()Landroid/view/Menu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->add_to_collection_confirm:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 184
    :cond_0
    iput-boolean p1, p0, Lcom/amazon/kcp/library/AddToCollectionActivity;->initialAddButtonVisibility:Z

    :goto_0
    return-void
.end method

.method protected setFilterAndSort(Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment;)V
    .locals 7

    .line 149
    sget-object v1, Lcom/amazon/kindle/krx/library/LibraryGroupType;->NOT_APPLICABLE:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    new-instance v2, Lcom/amazon/kcp/library/AddToCollectionSearchFilter;

    iget-object v0, p0, Lcom/amazon/kcp/library/AddToCollectionActivity;->collectionId:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/kcp/library/AddToCollectionActivity;->query:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lcom/amazon/kcp/library/AddToCollectionSearchFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_TITLE:Lcom/amazon/kcp/library/LibrarySortType;

    sget-object v4, Lcom/amazon/kindle/krx/library/LibraryView;->ALL_ITEMS:Lcom/amazon/kindle/krx/library/LibraryView;

    const-string v5, "All"

    const/4 v6, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment;->setFilterAndSort(Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kindle/krx/library/LibraryView;Ljava/lang/String;Lcom/amazon/kcp/library/ILibraryItemQuery;)V

    return-void
.end method

.method protected setupSearchViewListener()V
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/amazon/kcp/library/AddToCollectionActivity;->searchText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 139
    iget-object v1, p0, Lcom/amazon/kcp/library/AddToCollectionActivity;->searchFieldWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 140
    iget-object v0, p0, Lcom/amazon/kcp/library/AddToCollectionActivity;->searchText:Landroid/widget/EditText;

    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->ok:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    :cond_0
    return-void
.end method
