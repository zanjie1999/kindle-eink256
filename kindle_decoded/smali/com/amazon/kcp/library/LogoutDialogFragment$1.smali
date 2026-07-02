.class Lcom/amazon/kcp/library/LogoutDialogFragment$1;
.super Ljava/lang/Object;
.source "LogoutDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/LogoutDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/LogoutDialogFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/LogoutDialogFragment;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/amazon/kcp/library/LogoutDialogFragment$1;->this$0:Lcom/amazon/kcp/library/LogoutDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 52
    invoke-static {}, Lcom/amazon/kcp/library/LogoutDialogFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Signing out.."

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/amazon/kcp/library/LogoutDialogFragment$1;->this$0:Lcom/amazon/kcp/library/LogoutDialogFragment;

    invoke-static {p1}, Lcom/amazon/kcp/library/LogoutDialogFragment;->access$100(Lcom/amazon/kcp/library/LogoutDialogFragment;)Lcom/amazon/kcp/library/LogoutDialogFragment$DeregisterHandler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 54
    iget-object p1, p0, Lcom/amazon/kcp/library/LogoutDialogFragment$1;->this$0:Lcom/amazon/kcp/library/LogoutDialogFragment;

    invoke-static {p1}, Lcom/amazon/kcp/library/LogoutDialogFragment;->access$100(Lcom/amazon/kcp/library/LogoutDialogFragment;)Lcom/amazon/kcp/library/LogoutDialogFragment$DeregisterHandler;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/library/LogoutDialogFragment$DeregisterHandler;->postDeregistration()V

    :cond_0
    return-void
.end method
