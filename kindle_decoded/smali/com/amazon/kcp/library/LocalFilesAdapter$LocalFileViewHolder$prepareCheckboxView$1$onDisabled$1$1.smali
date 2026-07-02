.class final Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1$onDisabled$1$1;
.super Ljava/lang/Object;
.source "LocalFilesAdapter.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1$onDisabled$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1$onDisabled$1;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1$onDisabled$1;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1$onDisabled$1$1;->this$0:Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1$onDisabled$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 92
    iget-object v0, p0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1$onDisabled$1$1;->this$0:Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1$onDisabled$1;

    iget-object v0, v0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1$onDisabled$1;->this$0:Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1;

    iget-object v0, v0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1;->this$0:Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;

    iget-object v0, v0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;->this$0:Lcom/amazon/kcp/library/LocalFilesAdapter;

    invoke-static {v0}, Lcom/amazon/kcp/library/LocalFilesAdapter;->access$getSideloadedContentUtils$p(Lcom/amazon/kcp/library/LocalFilesAdapter;)Lcom/amazon/kindle/content/SideloadedContentUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1$onDisabled$1$1;->this$0:Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1$onDisabled$1;

    iget-object v1, v1, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1$onDisabled$1;->this$0:Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1;

    iget-object v1, v1, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1;->this$0:Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;

    iget-object v1, v1, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;->this$0:Lcom/amazon/kcp/library/LocalFilesAdapter;

    invoke-static {v1}, Lcom/amazon/kcp/library/LocalFilesAdapter;->access$getLibraryService$p(Lcom/amazon/kcp/library/LocalFilesAdapter;)Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1$onDisabled$1$1;->this$0:Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1$onDisabled$1;

    iget-object v2, v2, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1$onDisabled$1;->this$0:Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1;

    iget-object v2, v2, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1;->this$0:Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;

    iget-object v2, v2, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;->this$0:Lcom/amazon/kcp/library/LocalFilesAdapter;

    invoke-static {v2}, Lcom/amazon/kcp/library/LocalFilesAdapter;->access$getScanLocalContentUtils$p(Lcom/amazon/kcp/library/LocalFilesAdapter;)Lcom/amazon/kindle/scan/ScanLocalContentUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1$onDisabled$1$1;->this$0:Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1$onDisabled$1;

    iget-object v3, v3, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1$onDisabled$1;->this$0:Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1;

    iget-object v3, v3, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1;->$filepath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kindle/content/SideloadedContentUtils;->removeLocalContent(Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/scan/ScanLocalContentUtils;Ljava/lang/String;)V

    return-void
.end method
