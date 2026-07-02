.class public final Lcom/amazon/kcp/library/LocalFilesAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "LocalFilesAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final activity:Lcom/amazon/kcp/library/LocalFilesActivity;

.field private final libraryService:Lcom/amazon/kindle/content/ILibraryService;

.field private final recordDirectoryPermissionMetrics:Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics;

.field private final rowsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/LocalFilesActivity$RowItem;",
            ">;"
        }
    .end annotation
.end field

.field private final scanLocalContentUtils:Lcom/amazon/kindle/scan/ScanLocalContentUtils;

.field private final sideloadedContentUtils:Lcom/amazon/kindle/content/SideloadedContentUtils;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/LocalFilesActivity;Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/scan/ScanLocalContentUtils;Lcom/amazon/kindle/content/SideloadedContentUtils;Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/library/LocalFilesActivity;",
            "Lcom/amazon/kindle/content/ILibraryService;",
            "Lcom/amazon/kindle/scan/ScanLocalContentUtils;",
            "Lcom/amazon/kindle/content/SideloadedContentUtils;",
            "Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics;",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/LocalFilesActivity$RowItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "libraryService"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "scanLocalContentUtils"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sideloadedContentUtils"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "recordDirectoryPermissionMetrics"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "rowsList"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/library/LocalFilesAdapter;->activity:Lcom/amazon/kcp/library/LocalFilesActivity;

    iput-object p2, p0, Lcom/amazon/kcp/library/LocalFilesAdapter;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    iput-object p3, p0, Lcom/amazon/kcp/library/LocalFilesAdapter;->scanLocalContentUtils:Lcom/amazon/kindle/scan/ScanLocalContentUtils;

    iput-object p4, p0, Lcom/amazon/kcp/library/LocalFilesAdapter;->sideloadedContentUtils:Lcom/amazon/kindle/content/SideloadedContentUtils;

    iput-object p5, p0, Lcom/amazon/kcp/library/LocalFilesAdapter;->recordDirectoryPermissionMetrics:Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics;

    iput-object p6, p0, Lcom/amazon/kcp/library/LocalFilesAdapter;->rowsList:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getActivity$p(Lcom/amazon/kcp/library/LocalFilesAdapter;)Lcom/amazon/kcp/library/LocalFilesActivity;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/amazon/kcp/library/LocalFilesAdapter;->activity:Lcom/amazon/kcp/library/LocalFilesActivity;

    return-object p0
.end method

.method public static final synthetic access$getLibraryService$p(Lcom/amazon/kcp/library/LocalFilesAdapter;)Lcom/amazon/kindle/content/ILibraryService;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/amazon/kcp/library/LocalFilesAdapter;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    return-object p0
.end method

.method public static final synthetic access$getRecordDirectoryPermissionMetrics$p(Lcom/amazon/kcp/library/LocalFilesAdapter;)Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/amazon/kcp/library/LocalFilesAdapter;->recordDirectoryPermissionMetrics:Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics;

    return-object p0
.end method

.method public static final synthetic access$getScanLocalContentUtils$p(Lcom/amazon/kcp/library/LocalFilesAdapter;)Lcom/amazon/kindle/scan/ScanLocalContentUtils;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/amazon/kcp/library/LocalFilesAdapter;->scanLocalContentUtils:Lcom/amazon/kindle/scan/ScanLocalContentUtils;

    return-object p0
.end method

.method public static final synthetic access$getSideloadedContentUtils$p(Lcom/amazon/kcp/library/LocalFilesAdapter;)Lcom/amazon/kindle/content/SideloadedContentUtils;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/amazon/kcp/library/LocalFilesAdapter;->sideloadedContentUtils:Lcom/amazon/kindle/content/SideloadedContentUtils;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/amazon/kcp/library/LocalFilesAdapter;->rowsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getRowsList$MoreModule_release()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/LocalFilesActivity$RowItem;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/amazon/kcp/library/LocalFilesAdapter;->rowsList:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 39
    check-cast p1, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/library/LocalFilesAdapter;->onBindViewHolder(Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/amazon/kcp/library/LocalFilesAdapter;->rowsList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kcp/library/LocalFilesActivity$RowItem;

    .line 55
    invoke-virtual {p1}, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;->getTitleView$MoreModule_release()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazon/kcp/library/LocalFilesActivity$RowItem;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {p2}, Lcom/amazon/kcp/library/LocalFilesActivity$RowItem;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazon/kcp/library/LocalFilesActivity$RowItem;->getFilepath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;->prepareCheckboxView$MoreModule_release(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/library/LocalFilesAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;
    .locals 2

    const-string/jumbo p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object p2, p0, Lcom/amazon/kcp/library/LocalFilesAdapter;->activity:Lcom/amazon/kcp/library/LocalFilesActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/amazon/kcp/more/R$layout;->local_file_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 50
    new-instance p2, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;-><init>(Lcom/amazon/kcp/library/LocalFilesAdapter;Landroid/view/View;)V

    return-object p2
.end method
