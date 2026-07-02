.class Lcom/amazon/kindle/socialsharing/ui/activity/GenericAlertDialogFragment$1;
.super Ljava/lang/Object;
.source "GenericAlertDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/socialsharing/ui/activity/GenericAlertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/socialsharing/ui/activity/GenericAlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/socialsharing/ui/activity/GenericAlertDialogFragment;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/ui/activity/GenericAlertDialogFragment$1;->this$0:Lcom/amazon/kindle/socialsharing/ui/activity/GenericAlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 49
    invoke-static {}, Lcom/amazon/kindle/socialsharing/ui/activity/GenericAlertDialogFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "User dismissed dialog"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object p1, p0, Lcom/amazon/kindle/socialsharing/ui/activity/GenericAlertDialogFragment$1;->this$0:Lcom/amazon/kindle/socialsharing/ui/activity/GenericAlertDialogFragment;

    invoke-virtual {p1}, Landroid/app/DialogFragment;->dismiss()V

    return-void
.end method
