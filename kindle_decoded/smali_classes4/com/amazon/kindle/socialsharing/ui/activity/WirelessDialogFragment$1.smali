.class Lcom/amazon/kindle/socialsharing/ui/activity/WirelessDialogFragment$1;
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

    .line 46
    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/ui/activity/WirelessDialogFragment$1;->this$0:Lcom/amazon/kindle/socialsharing/ui/activity/WirelessDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 50
    invoke-static {}, Lcom/amazon/kindle/socialsharing/ui/activity/WirelessDialogFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "User dismissed dialog"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object p1, p0, Lcom/amazon/kindle/socialsharing/ui/activity/WirelessDialogFragment$1;->this$0:Lcom/amazon/kindle/socialsharing/ui/activity/WirelessDialogFragment;

    invoke-virtual {p1}, Landroid/app/DialogFragment;->dismiss()V

    return-void
.end method
