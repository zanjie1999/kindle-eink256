.class public final Lcom/amazon/kcp/library/LocalFilesActivity;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "LocalFilesActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/LocalFilesActivity$RowItem;
    }
.end annotation


# instance fields
.field private final libraryService:Lcom/amazon/kindle/content/ILibraryService;

.field private localFilesAdapter:Lcom/amazon/kcp/library/LocalFilesAdapter;

.field private final recordDirectoryPermissionMetrics:Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics;

.field private final scanLocalContentUtils:Lcom/amazon/kindle/scan/ScanLocalContentUtils;

.field private final sideloadedContentUtils:Lcom/amazon/kindle/content/SideloadedContentUtils;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    .line 27
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/LocalFilesActivity;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    .line 28
    invoke-static {}, Lcom/amazon/kindle/scan/ScanLocalContentUtilsManager;->getInstance()Lcom/amazon/kindle/scan/ScanLocalContentUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/LocalFilesActivity;->scanLocalContentUtils:Lcom/amazon/kindle/scan/ScanLocalContentUtils;

    .line 29
    invoke-static {}, Lcom/amazon/kindle/content/SideloadedContentUtilsManager;->getInstance()Lcom/amazon/kindle/content/SideloadedContentUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/LocalFilesActivity;->sideloadedContentUtils:Lcom/amazon/kindle/content/SideloadedContentUtils;

    .line 30
    invoke-static {}, Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetricsManager;->getInstance()Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/LocalFilesActivity;->recordDirectoryPermissionMetrics:Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics;

    return-void
.end method

.method public static final synthetic access$addSideloadedDirectory(Lcom/amazon/kcp/library/LocalFilesActivity;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/LocalFilesActivity;->addSideloadedDirectory(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getLocalFilesAdapter$p(Lcom/amazon/kcp/library/LocalFilesActivity;)Lcom/amazon/kcp/library/LocalFilesAdapter;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/amazon/kcp/library/LocalFilesActivity;->localFilesAdapter:Lcom/amazon/kcp/library/LocalFilesAdapter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "localFilesAdapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getSideloadedContentUtils$p(Lcom/amazon/kcp/library/LocalFilesActivity;)Lcom/amazon/kindle/content/SideloadedContentUtils;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/amazon/kcp/library/LocalFilesActivity;->sideloadedContentUtils:Lcom/amazon/kindle/content/SideloadedContentUtils;

    return-object p0
.end method

.method public static final synthetic access$setLocalFilesAdapter$p(Lcom/amazon/kcp/library/LocalFilesActivity;Lcom/amazon/kcp/library/LocalFilesAdapter;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/amazon/kcp/library/LocalFilesActivity;->localFilesAdapter:Lcom/amazon/kcp/library/LocalFilesAdapter;

    return-void
.end method

.method private final addSideloadedDirectory(Ljava/lang/String;)V
    .locals 4

    .line 83
    iget-object v0, p0, Lcom/amazon/kcp/library/LocalFilesActivity;->sideloadedContentUtils:Lcom/amazon/kindle/content/SideloadedContentUtils;

    invoke-virtual {v0, p0, p1}, Lcom/amazon/kindle/content/SideloadedContentUtils;->addSideloadedDirectory(Landroid/content/Context;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/amazon/kcp/library/LocalFilesActivity;->sideloadedContentUtils:Lcom/amazon/kindle/content/SideloadedContentUtils;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/SideloadedContentUtils;->getSideloadedPaths()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->size()I

    move-result v0

    .line 85
    new-instance v1, Lcom/amazon/kcp/library/LocalFilesActivity$RowItem;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "File(selectedDir).name"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p1, v2}, Lcom/amazon/kcp/library/LocalFilesActivity$RowItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object p1, p0, Lcom/amazon/kcp/library/LocalFilesActivity;->localFilesAdapter:Lcom/amazon/kcp/library/LocalFilesAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kcp/library/LocalFilesAdapter;->getRowsList$MoreModule_release()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void

    :cond_0
    const-string p1, "localFilesAdapter"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method private final populateRows()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/LocalFilesActivity$RowItem;",
            ">;"
        }
    .end annotation

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    iget-object v1, p0, Lcom/amazon/kcp/library/LocalFilesActivity;->sideloadedContentUtils:Lcom/amazon/kindle/content/SideloadedContentUtils;

    invoke-virtual {v1}, Lcom/amazon/kindle/content/SideloadedContentUtils;->getSideloadedPaths()Ljava/util/TreeSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 96
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    new-instance v4, Lcom/amazon/kcp/library/LocalFilesActivity$RowItem;

    const-string/jumbo v5, "sideloadPath"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "file.name"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v2, v3}, Lcom/amazon/kcp/library/LocalFilesActivity$RowItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private final setUpAddFolderButton(Lcom/amazon/kcp/library/LocalFilesActivity;)V
    .locals 2

    .line 59
    sget v0, Lcom/amazon/kcp/more/R$id;->folder_btn:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 60
    new-instance v1, Lcom/amazon/kcp/library/LocalFilesActivity$setUpAddFolderButton$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/library/LocalFilesActivity$setUpAddFolderButton$1;-><init>(Lcom/amazon/kcp/library/LocalFilesActivity;Lcom/amazon/kcp/library/LocalFilesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .line 50
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getPermissionsManager()Lcom/amazon/android/system/PermissionsManager;

    move-result-object v0

    iget-object v4, p0, Lcom/amazon/kcp/library/LocalFilesActivity;->scanLocalContentUtils:Lcom/amazon/kindle/scan/ScanLocalContentUtils;

    iget-object v5, p0, Lcom/amazon/kcp/library/LocalFilesActivity;->recordDirectoryPermissionMetrics:Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics;

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/android/system/PermissionsManager;->onActivityResult(IILandroid/content/Intent;Lcom/amazon/kindle/scan/ScanLocalContentUtils;Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 39
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    sget p1, Lcom/amazon/kcp/more/R$layout;->local_files_screen:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 41
    sget p1, Lcom/amazon/kcp/more/R$id;->local_files_list:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "filesRecyclerView"

    .line 42
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 43
    new-instance v0, Lcom/amazon/kcp/library/LocalFilesAdapter;

    iget-object v3, p0, Lcom/amazon/kcp/library/LocalFilesActivity;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    const-string v1, "libraryService"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/amazon/kcp/library/LocalFilesActivity;->scanLocalContentUtils:Lcom/amazon/kindle/scan/ScanLocalContentUtils;

    iget-object v5, p0, Lcom/amazon/kcp/library/LocalFilesActivity;->sideloadedContentUtils:Lcom/amazon/kindle/content/SideloadedContentUtils;

    .line 44
    iget-object v6, p0, Lcom/amazon/kcp/library/LocalFilesActivity;->recordDirectoryPermissionMetrics:Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics;

    invoke-direct {p0}, Lcom/amazon/kcp/library/LocalFilesActivity;->populateRows()Ljava/util/List;

    move-result-object v7

    move-object v1, v0

    move-object v2, p0

    .line 43
    invoke-direct/range {v1 .. v7}, Lcom/amazon/kcp/library/LocalFilesAdapter;-><init>(Lcom/amazon/kcp/library/LocalFilesActivity;Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/scan/ScanLocalContentUtils;Lcom/amazon/kindle/content/SideloadedContentUtils;Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics;Ljava/util/List;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/LocalFilesActivity;->localFilesAdapter:Lcom/amazon/kcp/library/LocalFilesAdapter;

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 46
    invoke-direct {p0, p0}, Lcom/amazon/kcp/library/LocalFilesActivity;->setUpAddFolderButton(Lcom/amazon/kcp/library/LocalFilesActivity;)V

    return-void

    :cond_0
    const-string p1, "localFilesAdapter"

    .line 45
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
