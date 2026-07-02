.class Lcom/amazon/kcp/library/DeleteItemsDialog$2;
.super Ljava/lang/Object;
.source "DeleteItemsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/DeleteItemsDialog;->setupWithMessage(Landroid/app/AlertDialog$Builder;Ljava/util/List;)V
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

    .line 108
    iput-object p1, p0, Lcom/amazon/kcp/library/DeleteItemsDialog$2;->this$0:Lcom/amazon/kcp/library/DeleteItemsDialog;

    iput-object p2, p0, Lcom/amazon/kcp/library/DeleteItemsDialog$2;->val$items:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 111
    iget-object v0, p0, Lcom/amazon/kcp/library/DeleteItemsDialog$2;->this$0:Lcom/amazon/kcp/library/DeleteItemsDialog;

    iget-object v1, p0, Lcom/amazon/kcp/library/DeleteItemsDialog$2;->val$items:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/amazon/kcp/library/DeleteItemsDialog;->access$200(Lcom/amazon/kcp/library/DeleteItemsDialog;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v2, "DeleteItemsDialog"

    const-string v3, "ItemDeletedFromCloudAndDevice"

    invoke-virtual {v0, v2, v3, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 113
    iget-object v0, p0, Lcom/amazon/kcp/library/DeleteItemsDialog$2;->this$0:Lcom/amazon/kcp/library/DeleteItemsDialog;

    const-string v1, "DeletePermanently"

    invoke-static {v0, v1}, Lcom/amazon/kcp/library/DeleteItemsDialog;->access$100(Lcom/amazon/kcp/library/DeleteItemsDialog;Ljava/lang/String;)V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/DeleteItemsDialog$2;->this$0:Lcom/amazon/kcp/library/DeleteItemsDialog;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kcp/library/LibraryDialogFragment;->onOkClicked(Landroid/content/DialogInterface;I)V

    return-void
.end method
