.class final Lcom/amazon/kindle/ffs/view/settings/RedirectToSettingsFragment$onCreateDialog$2;
.super Ljava/lang/Object;
.source "RedirectToSettingsFragment.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/ffs/view/settings/RedirectToSettingsFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/ffs/view/settings/RedirectToSettingsFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/ffs/view/settings/RedirectToSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/ffs/view/settings/RedirectToSettingsFragment$onCreateDialog$2;->this$0:Lcom/amazon/kindle/ffs/view/settings/RedirectToSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 42
    iget-object p1, p0, Lcom/amazon/kindle/ffs/view/settings/RedirectToSettingsFragment$onCreateDialog$2;->this$0:Lcom/amazon/kindle/ffs/view/settings/RedirectToSettingsFragment;

    invoke-static {p1}, Lcom/amazon/kindle/ffs/view/settings/RedirectToSettingsFragment;->access$getMetrics$p(Lcom/amazon/kindle/ffs/view/settings/RedirectToSettingsFragment;)Lcom/amazon/kindle/ffs/metrics/MetricsManager;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    const-string v0, "FFS_SETTINGS_RATIONALE_CLOSED"

    invoke-virtual {p1, v0, p2}, Lcom/amazon/kindle/ffs/metrics/MetricsManager;->reportSettingsMetric(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
