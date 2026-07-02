.class final Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1$onDisabled$1;
.super Ljava/lang/Object;
.source "LocalFilesAdapter.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $toStatus:Z

.field final synthetic this$0:Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1;Z)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1$onDisabled$1;->this$0:Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1;

    iput-boolean p2, p0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1$onDisabled$1;->$toStatus:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 91
    iget-object p1, p0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1$onDisabled$1;->this$0:Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1;

    iget-object p1, p1, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1;->this$0:Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;

    iget-object p1, p1, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;->this$0:Lcom/amazon/kcp/library/LocalFilesAdapter;

    invoke-static {p1}, Lcom/amazon/kcp/library/LocalFilesAdapter;->access$getScanLocalContentUtils$p(Lcom/amazon/kcp/library/LocalFilesAdapter;)Lcom/amazon/kindle/scan/ScanLocalContentUtils;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1$onDisabled$1;->this$0:Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1;

    iget-object p2, p2, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1;->$filepath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->removeLocalContentPath(Ljava/lang/String;)V

    .line 92
    iget-object p1, p0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1$onDisabled$1;->this$0:Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1;

    iget-object p1, p1, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1;->this$0:Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;

    invoke-static {p1}, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;->access$getThreadPoolManager$p(Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;)Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    new-instance p2, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1$onDisabled$1$1;

    invoke-direct {p2, p0}, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1$onDisabled$1$1;-><init>(Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1$onDisabled$1;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 93
    iget-object p1, p0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1$onDisabled$1;->this$0:Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1;

    iget-object p1, p1, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1;->this$0:Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;

    iget-object p1, p1, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;->this$0:Lcom/amazon/kcp/library/LocalFilesAdapter;

    invoke-static {p1}, Lcom/amazon/kcp/library/LocalFilesAdapter;->access$getRecordDirectoryPermissionMetrics$p(Lcom/amazon/kcp/library/LocalFilesAdapter;)Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics;

    move-result-object p1

    sget-object p2, Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$EntryPoint;->SETTING:Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$EntryPoint;

    iget-object v0, p0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1$onDisabled$1;->this$0:Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1;

    iget-object v0, v0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1;->$filename:Ljava/lang/String;

    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;->ALLOW:Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;

    sget-object v2, Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;->DENY:Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics;->emitDirectoryPermissionMetric(Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$EntryPoint;Ljava/lang/String;Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;)V

    .line 94
    iget-object p1, p0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1$onDisabled$1;->this$0:Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1;

    iget-object p2, p1, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1;->this$0:Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;

    iget-object p1, p1, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1;->$filepath:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1$onDisabled$1;->$toStatus:Z

    invoke-static {p2, p1, v0}, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;->access$toggleCheckbox(Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;Ljava/lang/String;Z)V

    return-void
.end method
