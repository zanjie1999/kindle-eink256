.class public final Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "LocalFilesAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/LocalFilesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LocalFileViewHolder"
.end annotation


# instance fields
.field private final checkboxView:Landroid/widget/CheckBox;

.field private final rootView:Landroid/view/View;

.field final synthetic this$0:Lcom/amazon/kcp/library/LocalFilesAdapter;

.field private final threadPoolManager:Lcom/amazon/foundation/internal/IThreadPoolManager;

.field private final titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/LocalFilesAdapter;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "rootView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iput-object p1, p0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;->this$0:Lcom/amazon/kcp/library/LocalFilesAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;->rootView:Landroid/view/View;

    .line 64
    sget p1, Lcom/amazon/kcp/more/R$id;->title:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string/jumbo p2, "rootView.findViewById(R.id.title)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;->titleView:Landroid/widget/TextView;

    .line 65
    iget-object p1, p0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;->rootView:Landroid/view/View;

    sget p2, Lcom/amazon/kcp/more/R$id;->checkbox:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string/jumbo p2, "rootView.findViewById(R.id.checkbox)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;->checkboxView:Landroid/widget/CheckBox;

    .line 66
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;->threadPoolManager:Lcom/amazon/foundation/internal/IThreadPoolManager;

    return-void
.end method

.method public static final synthetic access$getCheckboxView$p(Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;)Landroid/widget/CheckBox;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;->checkboxView:Landroid/widget/CheckBox;

    return-object p0
.end method

.method public static final synthetic access$getThreadPoolManager$p(Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;)Lcom/amazon/foundation/internal/IThreadPoolManager;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;->threadPoolManager:Lcom/amazon/foundation/internal/IThreadPoolManager;

    return-object p0
.end method

.method public static final synthetic access$requestPermission(Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;->requestPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$toggleCheckbox(Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;Ljava/lang/String;Z)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;->toggleCheckbox(Ljava/lang/String;Z)V

    return-void
.end method

.method private final requestPermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 122
    new-instance v0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$requestPermission$onSuccess$1;

    invoke-direct {v0, p0, p2}, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$requestPermission$onSuccess$1;-><init>(Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;Ljava/lang/String;)V

    .line 126
    new-instance v1, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$requestPermission$onFailure$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$requestPermission$onFailure$1;-><init>(Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;Ljava/lang/String;)V

    .line 131
    iget-object p1, p0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;->this$0:Lcom/amazon/kcp/library/LocalFilesAdapter;

    invoke-static {p1}, Lcom/amazon/kcp/library/LocalFilesAdapter;->access$getActivity$p(Lcom/amazon/kcp/library/LocalFilesAdapter;)Lcom/amazon/kcp/library/LocalFilesActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/redding/ReddingActivity;->getPermissionsManager()Lcom/amazon/android/system/PermissionsManager;

    move-result-object p1

    invoke-virtual {p1, v0, v1, p2}, Lcom/amazon/android/system/PermissionsManager;->requestExternalDirectoryPermissions(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method private final toggleCheckbox(Ljava/lang/String;Z)V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;->this$0:Lcom/amazon/kcp/library/LocalFilesAdapter;

    invoke-static {v0}, Lcom/amazon/kcp/library/LocalFilesAdapter;->access$getSideloadedContentUtils$p(Lcom/amazon/kcp/library/LocalFilesAdapter;)Lcom/amazon/kindle/content/SideloadedContentUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;->this$0:Lcom/amazon/kcp/library/LocalFilesAdapter;

    invoke-static {v1}, Lcom/amazon/kcp/library/LocalFilesAdapter;->access$getActivity$p(Lcom/amazon/kcp/library/LocalFilesAdapter;)Lcom/amazon/kcp/library/LocalFilesActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/amazon/kindle/content/SideloadedContentUtils;->setSideloadedDirectoryEnabled(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 142
    iget-object p1, p0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;->checkboxView:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->toggle()V

    return-void
.end method


# virtual methods
.method public final getTitleView$MoreModule_release()Landroid/widget/TextView;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;->titleView:Landroid/widget/TextView;

    return-object v0
.end method

.method public final prepareCheckboxView$MoreModule_release(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "filename"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filepath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lcom/amazon/kcp/debug/ScopedStorageUtilsManager;->getInstance()Lcom/amazon/kcp/debug/ScopedStorageUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;->this$0:Lcom/amazon/kcp/library/LocalFilesAdapter;

    invoke-static {v1}, Lcom/amazon/kcp/library/LocalFilesAdapter;->access$getActivity$p(Lcom/amazon/kcp/library/LocalFilesAdapter;)Lcom/amazon/kcp/library/LocalFilesActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/amazon/kcp/debug/ScopedStorageUtils;->isDirectoryPermissionGranted(Lcom/amazon/kcp/redding/ReddingActivity;Ljava/lang/String;)Z

    move-result v0

    .line 76
    iget-object v1, p0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;->checkboxView:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;->this$0:Lcom/amazon/kcp/library/LocalFilesAdapter;

    invoke-static {v0}, Lcom/amazon/kcp/library/LocalFilesAdapter;->access$getSideloadedContentUtils$p(Lcom/amazon/kcp/library/LocalFilesAdapter;)Lcom/amazon/kindle/content/SideloadedContentUtils;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;->this$0:Lcom/amazon/kcp/library/LocalFilesAdapter;

    invoke-static {v2}, Lcom/amazon/kcp/library/LocalFilesAdapter;->access$getActivity$p(Lcom/amazon/kcp/library/LocalFilesAdapter;)Lcom/amazon/kcp/library/LocalFilesActivity;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Lcom/amazon/kindle/content/SideloadedContentUtils;->isSideloadedDirectoryEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 78
    iget-object v0, p0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;->rootView:Landroid/view/View;

    new-instance v1, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1;-><init>(Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object p1, p0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;->checkboxView:Landroid/widget/CheckBox;

    new-instance p2, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$2;

    invoke-direct {p2, p0}, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$2;-><init>(Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;)V

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method
