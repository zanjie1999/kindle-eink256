.class Lcom/amazon/kcp/library/DeleteOwnedSampleDialog$2;
.super Ljava/lang/Object;
.source "DeleteOwnedSampleDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/DeleteOwnedSampleDialog;->setupWithMessage(Landroid/app/AlertDialog$Builder;Ljava/util/ArrayList;)V
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

    .line 87
    iput-object p1, p0, Lcom/amazon/kcp/library/DeleteOwnedSampleDialog$2;->this$0:Lcom/amazon/kcp/library/DeleteOwnedSampleDialog;

    iput-object p2, p0, Lcom/amazon/kcp/library/DeleteOwnedSampleDialog$2;->val$bookIds:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/amazon/kcp/library/DeleteOwnedSampleDialog$2;->this$0:Lcom/amazon/kcp/library/DeleteOwnedSampleDialog;

    iget-object v1, p0, Lcom/amazon/kcp/library/DeleteOwnedSampleDialog$2;->val$bookIds:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/amazon/kcp/library/DeleteOwnedSampleDialog;->access$000(Lcom/amazon/kcp/library/DeleteOwnedSampleDialog;Ljava/util/ArrayList;)V

    .line 91
    iget-object v0, p0, Lcom/amazon/kcp/library/DeleteOwnedSampleDialog$2;->this$0:Lcom/amazon/kcp/library/DeleteOwnedSampleDialog;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kcp/library/LibraryDialogFragment;->onOkClicked(Landroid/content/DialogInterface;I)V

    .line 92
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object p2, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v0, "DeleteOwnedSampleDialog"

    const-string v1, "SampleDeletedFromCloud"

    invoke-virtual {p1, v0, v1, p2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    return-void
.end method
