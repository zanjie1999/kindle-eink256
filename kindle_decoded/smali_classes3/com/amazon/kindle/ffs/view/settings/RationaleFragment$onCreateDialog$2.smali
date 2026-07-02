.class final Lcom/amazon/kindle/ffs/view/settings/RationaleFragment$onCreateDialog$2;
.super Ljava/lang/Object;
.source "RationaleFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/ffs/view/settings/RationaleFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $dialog:Landroid/app/AlertDialog;

.field final synthetic this$0:Lcom/amazon/kindle/ffs/view/settings/RationaleFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/ffs/view/settings/RationaleFragment;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/ffs/view/settings/RationaleFragment$onCreateDialog$2;->this$0:Lcom/amazon/kindle/ffs/view/settings/RationaleFragment;

    iput-object p2, p0, Lcom/amazon/kindle/ffs/view/settings/RationaleFragment$onCreateDialog$2;->$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 44
    iget-object p1, p0, Lcom/amazon/kindle/ffs/view/settings/RationaleFragment$onCreateDialog$2;->this$0:Lcom/amazon/kindle/ffs/view/settings/RationaleFragment;

    invoke-static {p1}, Lcom/amazon/kindle/ffs/view/settings/RationaleFragment;->access$getMetrics$p(Lcom/amazon/kindle/ffs/view/settings/RationaleFragment;)Lcom/amazon/kindle/ffs/metrics/MetricsManager;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "FFS_RATIONALE_CLOSED"

    invoke-virtual {p1, v1, v0}, Lcom/amazon/kindle/ffs/metrics/MetricsManager;->reportSettingsMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/ffs/view/settings/RationaleFragment$onCreateDialog$2;->$dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->cancel()V

    return-void
.end method
