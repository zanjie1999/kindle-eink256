.class Lcom/amazon/kcp/library/DeleteOwnedSampleDialog$1;
.super Ljava/lang/Object;
.source "DeleteOwnedSampleDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/DeleteOwnedSampleDialog;->setupWithChoices(Landroid/app/AlertDialog$Builder;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/DeleteOwnedSampleDialog;

.field final synthetic val$bookIds:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/DeleteOwnedSampleDialog;Ljava/util/ArrayList;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/amazon/kcp/library/DeleteOwnedSampleDialog$1;->this$0:Lcom/amazon/kcp/library/DeleteOwnedSampleDialog;

    iput-object p2, p0, Lcom/amazon/kcp/library/DeleteOwnedSampleDialog$1;->val$bookIds:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 65
    iget-object v0, p0, Lcom/amazon/kcp/library/DeleteOwnedSampleDialog$1;->this$0:Lcom/amazon/kcp/library/DeleteOwnedSampleDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    const-string v1, "DeleteOwnedSampleDialog"

    if-nez v0, :cond_0

    .line 68
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/kcp/library/DeleteOwnedSampleDialog$1;->val$bookIds:Ljava/util/ArrayList;

    invoke-interface {v0, v2}, Lcom/amazon/kcp/library/ILibraryController;->deleteBooks(Ljava/util/Collection;)V

    .line 69
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v2, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v3, "SampleDeletedFromDevice"

    invoke-virtual {v0, v1, v3, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 73
    iget-object v0, p0, Lcom/amazon/kcp/library/DeleteOwnedSampleDialog$1;->this$0:Lcom/amazon/kcp/library/DeleteOwnedSampleDialog;

    iget-object v2, p0, Lcom/amazon/kcp/library/DeleteOwnedSampleDialog$1;->val$bookIds:Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lcom/amazon/kcp/library/DeleteOwnedSampleDialog;->access$000(Lcom/amazon/kcp/library/DeleteOwnedSampleDialog;Ljava/util/ArrayList;)V

    .line 74
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v2, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v3, "SampleDeletedFromCloudAndDevice"

    invoke-virtual {v0, v1, v3, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 76
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/library/DeleteOwnedSampleDialog$1;->this$0:Lcom/amazon/kcp/library/DeleteOwnedSampleDialog;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kcp/library/LibraryDialogFragment;->onOkClicked(Landroid/content/DialogInterface;I)V

    return-void
.end method
