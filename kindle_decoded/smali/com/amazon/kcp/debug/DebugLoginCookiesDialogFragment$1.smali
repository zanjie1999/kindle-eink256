.class Lcom/amazon/kcp/debug/DebugLoginCookiesDialogFragment$1;
.super Ljava/lang/Object;
.source "DebugLoginCookiesDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/DebugLoginCookiesDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/debug/DebugLoginCookiesDialogFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/DebugLoginCookiesDialogFragment;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugLoginCookiesDialogFragment$1;->this$0:Lcom/amazon/kcp/debug/DebugLoginCookiesDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 28
    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugLoginCookiesDialogFragment$1;->this$0:Lcom/amazon/kcp/debug/DebugLoginCookiesDialogFragment;

    invoke-static {p1}, Lcom/amazon/kcp/debug/DebugLoginCookiesDialogFragment;->access$000(Lcom/amazon/kcp/debug/DebugLoginCookiesDialogFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 29
    iget-object p2, p0, Lcom/amazon/kcp/debug/DebugLoginCookiesDialogFragment$1;->this$0:Lcom/amazon/kcp/debug/DebugLoginCookiesDialogFragment;

    invoke-static {p2}, Lcom/amazon/kcp/debug/DebugLoginCookiesDialogFragment;->access$100(Lcom/amazon/kcp/debug/DebugLoginCookiesDialogFragment;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 30
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugLoginCookiesDialogFragment$1;->this$0:Lcom/amazon/kcp/debug/DebugLoginCookiesDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string p2, "Cookie set!"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
