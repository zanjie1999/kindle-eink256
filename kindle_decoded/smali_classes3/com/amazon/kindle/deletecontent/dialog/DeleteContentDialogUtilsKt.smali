.class public final Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogUtilsKt;
.super Ljava/lang/Object;
.source "DeleteContentDialogUtils.kt"


# direct methods
.method public static final showErrorDialog(Landroid/content/Context;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 13
    sget v0, Lcom/amazon/kindle/deletecontentmodule/R$string;->delete_from_library_server_error_header:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 14
    sget v1, Lcom/amazon/kindle/deletecontentmodule/R$string;->delete_from_library_server_error_message:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-static {v0, v1, p0}, Lcom/amazon/kcp/redding/AlertActivity;->createAlertIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "AlertActivity.createAler\u2026\n                context)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
