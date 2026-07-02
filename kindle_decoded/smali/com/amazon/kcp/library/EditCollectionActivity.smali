.class public Lcom/amazon/kcp/library/EditCollectionActivity;
.super Lcom/amazon/kcp/library/BaseLibraryActivity;
.source "EditCollectionActivity.java"


# static fields
.field public static final COLLECTION_ID_EXTRA_KEY:Ljava/lang/String; = "CollectionId"

.field public static final DETAILS_FRAGMENT_TAG:Ljava/lang/String; = "DetailsFragment"

.field public static final GRID_FRAGMENT_TAG:Ljava/lang/String; = "GridFragment"

.field public static final LIST_FRAGMENT_TAG:Ljava/lang/String; = "ListFragment"

.field private static final NUMBER_REARRANGES_COUNT_METRIC:Ljava/lang/String; = "NumberOfItemsMoved"

.field private static final TAG:Ljava/lang/String;

.field public static final VIEW_TYPE_KEY:Ljava/lang/String; = "ViewType"


# instance fields
.field private numberOfItemsMoved:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/amazon/kcp/library/EditCollectionActivity;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/EditCollectionActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/amazon/kcp/library/BaseLibraryActivity;-><init>()V

    return-void
.end method

.method private collectionItemsRecyclerFragment(Ljava/lang/String;Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;)Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;
    .locals 1

    .line 109
    sget-object v0, Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment;->Companion:Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment$Companion;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment$Companion;->newInstance(Ljava/lang/String;Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;)Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment;

    move-result-object p1

    return-object p1
.end method

.method private showDetailsFragment(Ljava/lang/String;)V
    .locals 3

    .line 82
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "DetailsFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 84
    sget-object v0, Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;->DETAILS:Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/library/EditCollectionActivity;->collectionItemsRecyclerFragment(Ljava/lang/String;Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;)Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;

    move-result-object p1

    .line 85
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 86
    sget v2, Lcom/amazon/kindle/librarymodule/R$id;->collection_edit_root:I

    invoke-virtual {v0, v2, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 87
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method

.method private showGridFragment(Ljava/lang/String;)V
    .locals 3

    .line 72
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "GridFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 74
    sget-object v0, Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;->GRID:Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/library/EditCollectionActivity;->collectionItemsRecyclerFragment(Ljava/lang/String;Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;)Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;

    move-result-object p1

    .line 75
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 76
    sget v2, Lcom/amazon/kindle/librarymodule/R$id;->collection_edit_root:I

    invoke-virtual {v0, v2, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 77
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method

.method private showListFragment(Ljava/lang/String;)V
    .locals 3

    .line 92
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "ListFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 94
    sget-object v0, Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;->LIST:Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/library/EditCollectionActivity;->collectionItemsRecyclerFragment(Ljava/lang/String;Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;)Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;

    move-result-object p1

    .line 95
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 96
    sget v2, Lcom/amazon/kindle/librarymodule/R$id;->collection_edit_root:I

    invoke-virtual {v0, v2, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 97
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 34
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    sget v0, Lcom/amazon/kindle/librarymodule/R$layout;->ruby_collection_edit_screen:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 38
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "CollectionId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ViewType"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/library/LibraryViewType;

    .line 40
    sget-object v2, Lcom/amazon/kcp/library/EditCollectionActivity$2;->$SwitchMap$com$amazon$kindle$krx$library$LibraryViewType:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 54
    sget-object v0, Lcom/amazon/kcp/library/EditCollectionActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid view type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 50
    :cond_0
    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/EditCollectionActivity;->showListFragment(Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_1
    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/EditCollectionActivity;->showDetailsFragment(Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_2
    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/EditCollectionActivity;->showGridFragment(Ljava/lang/String;)V

    .line 59
    :goto_0
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->contextual_done_button:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/library/EditCollectionActivity$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/EditCollectionActivity$1;-><init>(Lcom/amazon/kcp/library/EditCollectionActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p1, :cond_3

    const-string v0, "NumberOfItemsMoved"

    .line 67
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/library/EditCollectionActivity;->numberOfItemsMoved:I

    :cond_3
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .line 118
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 120
    iget v1, p0, Lcom/amazon/kcp/library/EditCollectionActivity;->numberOfItemsMoved:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "NumberOfItemsMoved"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-string v2, "EditCollectionActivity"

    const-string v3, "EditCollectionFinished"

    invoke-virtual {v1, v2, v3, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 123
    :cond_0
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onDestroy()V

    return-void
.end method

.method public onItemMoved()V
    .locals 1

    .line 113
    iget v0, p0, Lcom/amazon/kcp/library/EditCollectionActivity;->numberOfItemsMoved:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/kcp/library/EditCollectionActivity;->numberOfItemsMoved:I

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 128
    iget v0, p0, Lcom/amazon/kcp/library/EditCollectionActivity;->numberOfItemsMoved:I

    const-string v1, "NumberOfItemsMoved"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 129
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
