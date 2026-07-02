.class Lcom/amazon/kindle/socialsharing/ui/activity/WirelessDialogFragment$2;
.super Ljava/lang/Object;
.source "WirelessDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/socialsharing/ui/activity/WirelessDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/socialsharing/ui/activity/WirelessDialogFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/socialsharing/ui/activity/WirelessDialogFragment;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/ui/activity/WirelessDialogFragment$2;->this$0:Lcom/amazon/kindle/socialsharing/ui/activity/WirelessDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 58
    invoke-static {}, Lcom/amazon/kindle/socialsharing/ui/activity/WirelessDialogFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Starting settings intent"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    iget-object p2, p0, Lcom/amazon/kindle/socialsharing/ui/activity/WirelessDialogFragment$2;->this$0:Lcom/amazon/kindle/socialsharing/ui/activity/WirelessDialogFragment;

    invoke-virtual {p2, p1}, Landroid/app/DialogFragment;->startActivity(Landroid/content/Intent;)V

    .line 61
    iget-object p1, p0, Lcom/amazon/kindle/socialsharing/ui/activity/WirelessDialogFragment$2;->this$0:Lcom/amazon/kindle/socialsharing/ui/activity/WirelessDialogFragment;

    invoke-virtual {p1}, Landroid/app/DialogFragment;->dismiss()V

    return-void
.end method
