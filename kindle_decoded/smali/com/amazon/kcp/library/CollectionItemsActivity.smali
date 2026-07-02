.class public Lcom/amazon/kcp/library/CollectionItemsActivity;
.super Lcom/amazon/kcp/library/BaseLibraryActivity;
.source "CollectionItemsActivity.java"

# interfaces
.implements Lcom/amazon/kcp/library/fragments/ILibraryViewModeListener;
.implements Lcom/amazon/kcp/library/ui/IKindleToastActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/CollectionItemsActivity$ExitHandler;
    }
.end annotation


# static fields
.field public static final COLLECTION_EXTRA_ID:Ljava/lang/String; = "Collection"

.field public static final COLLECTION_FILTER_EXTRA_ID:Ljava/lang/String; = "CollectionFilter"

.field private static final CONTAINER_ID:I

.field public static final LAUNCH_ADD_EXTRA_ID:Ljava/lang/String; = "LaunchAddToCollection"

.field private static final MSG_EXIT:I = 0x1

.field private static final NULL_COLLECTION_ID:Ljava/lang/String; = "nullCollectionId"

.field private static final TAG:Ljava/lang/String;

.field private static isCollectionDownloadEnabled:Z


# instance fields
.field private currentCollection:Lcom/amazon/kindle/collections/dto/ICollection;

.field private final exitHandler:Landroid/os/Handler;

.field protected fragmentHandler:Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;

.field private libraryFragmentClient:Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;

.field private toastAnchorView:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lcom/amazon/kcp/library/CollectionItemsActivity;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/CollectionItemsActivity;->TAG:Ljava/lang/String;

    .line 68
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->library_content_container:I

    sput v0, Lcom/amazon/kcp/library/CollectionItemsActivity;->CONTAINER_ID:I

    const/4 v0, 0x1

    .line 78
    sput-boolean v0, Lcom/amazon/kcp/library/CollectionItemsActivity;->isCollectionDownloadEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/amazon/kcp/library/BaseLibraryActivity;-><init>()V

    .line 79
    new-instance v0, Lcom/amazon/kcp/library/CollectionItemsActivity$ExitHandler;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/CollectionItemsActivity$ExitHandler;-><init>(Lcom/amazon/kcp/library/CollectionItemsActivity;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/CollectionItemsActivity;->exitHandler:Landroid/os/Handler;

    .line 85
    new-instance v0, Lcom/amazon/kcp/library/CollectionItemsActivity$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/CollectionItemsActivity$1;-><init>(Lcom/amazon/kcp/library/CollectionItemsActivity;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/CollectionItemsActivity;->libraryFragmentClient:Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/library/CollectionItemsActivity;)Lcom/amazon/kindle/collections/dto/ICollection;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/amazon/kcp/library/CollectionItemsActivity;->currentCollection:Lcom/amazon/kindle/collections/dto/ICollection;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/library/CollectionItemsActivity;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/amazon/kcp/library/CollectionItemsActivity;->exit()V

    return-void
.end method

.method private exit()V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/amazon/kcp/library/CollectionItemsActivity;->exitHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private initialize()V
    .locals 2

    .line 159
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/library/CollectionItemsActivity$2;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/CollectionItemsActivity$2;-><init>(Lcom/amazon/kcp/library/CollectionItemsActivity;)V

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IThreadPoolManager;->submitSingleThreadTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private registerItemCountChanged(Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;)V
    .locals 1

    .line 178
    new-instance v0, Lcom/amazon/kcp/library/CollectionItemsActivity$3;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/CollectionItemsActivity$3;-><init>(Lcom/amazon/kcp/library/CollectionItemsActivity;)V

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->registerItemCountChangedListener(Lcom/amazon/kcp/library/fragments/ILibraryItemCountProvider$ILibraryItemChangedListener;)V

    return-void
.end method

.method private reportCollectionDetailsMetrics(Z)V
    .locals 3

    .line 262
    iget-object v0, p0, Lcom/amazon/kcp/library/CollectionItemsActivity;->currentCollection:Lcom/amazon/kindle/collections/dto/ICollection;

    if-nez v0, :cond_0

    return-void

    .line 265
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 266
    invoke-static {}, Lcom/amazon/kcp/application/DeviceInformationProviderFactory;->getProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getOsVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    invoke-static {}, Lcom/amazon/kcp/util/MetricsUtils;->getScreenOrientationForMetrics()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Orientation"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 269
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object v1

    .line 270
    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->getInstance()Lcom/amazon/kindle/collections/ICollectionsManager;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/amazon/kindle/collections/ICollectionsManager;->getCollectionItemCounts(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/library/CollectionItemsActivity;->currentCollection:Lcom/amazon/kindle/collections/dto/ICollection;

    invoke-interface {v2}, Lcom/amazon/kindle/collections/dto/ICollection;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 271
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "NumItems"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 275
    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v1

    const-string v2, "CollectionDetails"

    if-eqz p1, :cond_2

    .line 277
    invoke-interface {v1, v2, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->showContext(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 279
    :cond_2
    invoke-interface {v1, v2, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->hideContext(Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public activityIdentifier()Ljava/lang/String;
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/amazon/kcp/redding/ReddingActivity;->activityIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public anchorView()Landroid/view/View;
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/amazon/kcp/library/CollectionItemsActivity;->toastAnchorView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected createCollectionItemsFragmentHandler(Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;Lcom/amazon/kindle/collections/dto/ICollection;Lcom/amazon/kindle/krx/collections/CollectionFilter;)Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;
    .locals 8

    .line 171
    new-instance v7, Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;

    iget-object v4, p0, Lcom/amazon/kcp/library/CollectionItemsActivity;->libraryFragmentClient:Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;Lcom/amazon/kcp/library/fragments/ILibraryViewModeListener;Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;Lcom/amazon/kindle/collections/dto/ICollection;Lcom/amazon/kindle/krx/collections/CollectionFilter;)V

    .line 173
    invoke-direct {p0, v7}, Lcom/amazon/kcp/library/CollectionItemsActivity;->registerItemCountChanged(Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;)V

    return-object v7
.end method

.method public isUncollectedCollection()Z
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/amazon/kcp/library/CollectionItemsActivity;->currentCollection:Lcom/amazon/kindle/collections/dto/ICollection;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/collections/dto/ICollection;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/collections/dto/CollectionDTO;->isUncollected(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 114
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 116
    sget v0, Lcom/amazon/kindle/librarymodule/R$layout;->library_home_screen:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 118
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p0, Lcom/amazon/kcp/library/BaseLibraryActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 119
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 121
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->library_toast_anchor:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/amazon/kcp/library/CollectionItemsActivity;->toastAnchorView:Landroid/view/ViewGroup;

    .line 122
    sget-object v0, Lcom/amazon/kcp/library/ui/LibraryToast;->INSTANCE:Lcom/amazon/kcp/library/ui/LibraryToast;

    invoke-virtual {v0, p0, p1}, Lcom/amazon/kcp/library/ui/LibraryToast;->onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 124
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Collection"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/collections/dto/ICollection;

    if-eqz v0, :cond_3

    .line 125
    invoke-interface {v0}, Lcom/amazon/kindle/collections/dto/ICollection;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 133
    :cond_0
    sget-object v1, Lcom/amazon/kindle/krx/collections/CollectionFilter;->ALL:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    .line 134
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "CollectionFilter"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 135
    invoke-static {v2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 136
    invoke-static {v2}, Lcom/amazon/kindle/krx/collections/CollectionFilter;->valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/collections/CollectionFilter;

    move-result-object v1

    .line 138
    :cond_1
    iput-object v0, p0, Lcom/amazon/kcp/library/CollectionItemsActivity;->currentCollection:Lcom/amazon/kindle/collections/dto/ICollection;

    .line 139
    invoke-static {}, Lcom/amazon/kcp/library/fragments/LibraryViewOptionsModelFetcher;->getLibraryViewOptionsModel()Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/amazon/kcp/library/CollectionItemsActivity;->createCollectionItemsFragmentHandler(Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;Lcom/amazon/kindle/collections/dto/ICollection;Lcom/amazon/kindle/krx/collections/CollectionFilter;)Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/CollectionItemsActivity;->fragmentHandler:Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;

    .line 140
    new-instance v0, Lcom/amazon/kcp/library/LibraryActionBarHelper;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/LibraryActionBarHelper;-><init>(Landroid/app/Activity;)V

    .line 141
    invoke-virtual {v0}, Lcom/amazon/kcp/library/LibraryActionBarHelper;->setDisplayHomeAsUpEnabled()V

    .line 142
    iget-object v1, p0, Lcom/amazon/kcp/library/CollectionItemsActivity;->fragmentHandler:Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;->getTitleString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/LibraryActionBarHelper;->setActionBarTitle(Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/library/LibraryView;->COLLECTION_ITEMS:Lcom/amazon/kindle/krx/library/LibraryView;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/ILibraryController;->setCurrentLibraryView(Lcom/amazon/kindle/krx/library/LibraryView;)V

    .line 144
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/amazon/kcp/library/CollectionItemsActivity;->fragmentHandler:Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;

    sget v2, Lcom/amazon/kcp/library/CollectionItemsActivity;->CONTAINER_ID:I

    invoke-virtual {v1, v2, v0}, Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;->show(ILandroidx/fragment/app/FragmentTransaction;)V

    .line 147
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    if-nez p1, :cond_2

    .line 149
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "LaunchAddToCollection"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 150
    iget-object p1, p0, Lcom/amazon/kcp/library/CollectionItemsActivity;->fragmentHandler:Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;->onAddToCollectionClicked()V

    .line 153
    :cond_2
    invoke-direct {p0}, Lcom/amazon/kcp/library/CollectionItemsActivity;->initialize()V

    const/4 p1, 0x1

    .line 155
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/CollectionItemsActivity;->reportCollectionDetailsMetrics(Z)V

    return-void

    .line 127
    :cond_3
    :goto_0
    sget-object p1, Lcom/amazon/kcp/library/CollectionItemsActivity;->TAG:Ljava/lang/String;

    const-string v0, "Error retrieving current collection while creating activity. Finishing."

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string v0, "CollectionDetails"

    const-string/jumbo v1, "nullCollectionId"

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 210
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$menu;->collection_items_activity_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 211
    invoke-virtual {p0}, Lcom/amazon/kcp/library/CollectionItemsActivity;->isUncollectedCollection()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 212
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->edit_button:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 213
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->add_to_collection:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 214
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->download_collection:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 217
    :cond_0
    sget-boolean v0, Lcom/amazon/kcp/library/CollectionItemsActivity;->isCollectionDownloadEnabled:Z

    if-nez v0, :cond_1

    .line 218
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->download_collection:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .locals 1

    .line 256
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 258
    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/CollectionItemsActivity;->reportCollectionDetailsMetrics(Z)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 232
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1

    .line 237
    :cond_0
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 239
    iget-object v0, p0, Lcom/amazon/kcp/library/CollectionItemsActivity;->fragmentHandler:Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/amazon/kcp/library/CollectionItemsActivity;->fragmentHandler:Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;

    invoke-virtual {v0, p2}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 227
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 250
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 251
    iget-object v0, p0, Lcom/amazon/kcp/library/CollectionItemsActivity;->fragmentHandler:Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 244
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 245
    iget-object v0, p0, Lcom/amazon/kcp/library/CollectionItemsActivity;->fragmentHandler:Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewModeChanged(Lcom/amazon/kindle/krx/library/LibraryViewType;)V
    .locals 3

    .line 199
    iget-object v0, p0, Lcom/amazon/kcp/library/CollectionItemsActivity;->fragmentHandler:Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getUserSelectedViewType()Lcom/amazon/kindle/krx/library/LibraryViewType;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 201
    iget-object v1, p0, Lcom/amazon/kcp/library/CollectionItemsActivity;->fragmentHandler:Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;

    sget v2, Lcom/amazon/kcp/library/CollectionItemsActivity;->CONTAINER_ID:I

    invoke-virtual {v1, v2, v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->hide(ILandroidx/fragment/app/FragmentTransaction;)V

    .line 202
    iget-object v1, p0, Lcom/amazon/kcp/library/CollectionItemsActivity;->fragmentHandler:Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;

    invoke-virtual {v1, p1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->setUserSelectedViewType(Lcom/amazon/kindle/krx/library/LibraryViewType;)V

    .line 203
    iget-object p1, p0, Lcom/amazon/kcp/library/CollectionItemsActivity;->fragmentHandler:Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;

    sget v1, Lcom/amazon/kcp/library/CollectionItemsActivity;->CONTAINER_ID:I

    invoke-virtual {p1, v1, v0}, Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;->show(ILandroidx/fragment/app/FragmentTransaction;)V

    .line 204
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method
