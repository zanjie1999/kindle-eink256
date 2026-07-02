.class Lcom/amazon/kcp/library/DeleteItemsDialog$1;
.super Ljava/lang/Object;
.source "DeleteItemsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/DeleteItemsDialog;->setupWithChoices(Landroid/app/AlertDialog$Builder;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/DeleteItemsDialog;

.field final synthetic val$items:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/DeleteItemsDialog;Ljava/util/List;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/amazon/kcp/library/DeleteItemsDialog$1;->this$0:Lcom/amazon/kcp/library/DeleteItemsDialog;

    iput-object p2, p0, Lcom/amazon/kcp/library/DeleteItemsDialog$1;->val$items:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 83
    iget-object v0, p0, Lcom/amazon/kcp/library/DeleteItemsDialog$1;->this$0:Lcom/amazon/kcp/library/DeleteItemsDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    .line 84
    invoke-static {}, Lcom/amazon/kcp/library/DeleteItemsDialog;->access$000()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dialog onClick - position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v1, "DeleteItemsDialog"

    if-nez v0, :cond_0

    .line 87
    invoke-static {}, Lcom/amazon/kcp/library/DeleteItemsDialog;->access$000()Ljava/lang/String;

    .line 88
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/kcp/library/DeleteItemsDialog$1;->val$items:Ljava/util/List;

    invoke-interface {v0, v2}, Lcom/amazon/kcp/library/ILibraryController;->deleteItems(Ljava/util/List;)V

    .line 89
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v2, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v3, "ItemDeletedFromDevice"

    invoke-virtual {v0, v1, v3, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 90
    iget-object v0, p0, Lcom/amazon/kcp/library/DeleteItemsDialog$1;->this$0:Lcom/amazon/kcp/library/DeleteItemsDialog;

    const-string v1, "RemoveItems"

    invoke-static {v0, v1}, Lcom/amazon/kcp/library/DeleteItemsDialog;->access$100(Lcom/amazon/kcp/library/DeleteItemsDialog;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 93
    invoke-static {}, Lcom/amazon/kcp/library/DeleteItemsDialog;->access$000()Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/amazon/kcp/library/DeleteItemsDialog$1;->this$0:Lcom/amazon/kcp/library/DeleteItemsDialog;

    iget-object v2, p0, Lcom/amazon/kcp/library/DeleteItemsDialog$1;->val$items:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/amazon/kcp/library/DeleteItemsDialog;->access$200(Lcom/amazon/kcp/library/DeleteItemsDialog;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v2, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v3, "ItemDeletedFromCloudAndDevice"

    invoke-virtual {v0, v1, v3, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 96
    iget-object v0, p0, Lcom/amazon/kcp/library/DeleteItemsDialog$1;->this$0:Lcom/amazon/kcp/library/DeleteItemsDialog;

    const-string v1, "DeletePermanently"

    invoke-static {v0, v1}, Lcom/amazon/kcp/library/DeleteItemsDialog;->access$100(Lcom/amazon/kcp/library/DeleteItemsDialog;Ljava/lang/String;)V

    .line 99
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/library/DeleteItemsDialog$1;->this$0:Lcom/amazon/kcp/library/DeleteItemsDialog;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kcp/library/LibraryDialogFragment;->onOkClicked(Landroid/content/DialogInterface;I)V

    return-void
.end method
