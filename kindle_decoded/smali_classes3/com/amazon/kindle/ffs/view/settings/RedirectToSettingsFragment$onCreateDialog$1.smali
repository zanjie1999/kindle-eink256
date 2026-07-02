.class final Lcom/amazon/kindle/ffs/view/settings/RedirectToSettingsFragment$onCreateDialog$1;
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

    iput-object p1, p0, Lcom/amazon/kindle/ffs/view/settings/RedirectToSettingsFragment$onCreateDialog$1;->this$0:Lcom/amazon/kindle/ffs/view/settings/RedirectToSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 35
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 36
    iget-object p2, p0, Lcom/amazon/kindle/ffs/view/settings/RedirectToSettingsFragment$onCreateDialog$1;->this$0:Lcom/amazon/kindle/ffs/view/settings/RedirectToSettingsFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    const-string v1, "package"

    invoke-static {v1, p2, v0}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v1, "Uri.fromParts(\"package\",\u2026ntext?.packageName, null)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 38
    iget-object p2, p0, Lcom/amazon/kindle/ffs/view/settings/RedirectToSettingsFragment$onCreateDialog$1;->this$0:Lcom/amazon/kindle/ffs/view/settings/RedirectToSettingsFragment;

    invoke-virtual {p2, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 39
    iget-object p1, p0, Lcom/amazon/kindle/ffs/view/settings/RedirectToSettingsFragment$onCreateDialog$1;->this$0:Lcom/amazon/kindle/ffs/view/settings/RedirectToSettingsFragment;

    invoke-static {p1}, Lcom/amazon/kindle/ffs/view/settings/RedirectToSettingsFragment;->access$getMetrics$p(Lcom/amazon/kindle/ffs/view/settings/RedirectToSettingsFragment;)Lcom/amazon/kindle/ffs/metrics/MetricsManager;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p2, "FFS_GO_TO_DEVICE_SETTINGS"

    invoke-virtual {p1, p2, v0}, Lcom/amazon/kindle/ffs/metrics/MetricsManager;->reportSettingsMetric(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
