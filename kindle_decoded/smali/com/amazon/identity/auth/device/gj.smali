.class public final Lcom/amazon/identity/auth/device/gj;
.super Ljava/lang/Object;
.source "DCP"


# direct methods
.method public static W(Landroid/content/Context;)V
    .locals 3

    const-string v0, "com.amazon.dcp.sso.action.cache.update.required"

    .line 1043
    invoke-static {v0}, Lcom/amazon/identity/auth/device/iw;->dx(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2038
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "key_process_id"

    .line 1045
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 24
    invoke-static {p0}, Lcom/amazon/identity/auth/device/aa;->f(Landroid/content/Context;)Lcom/amazon/identity/auth/device/z;

    move-result-object p0

    const/4 v1, 0x0

    const-string v2, "com.amazon.dcp.sso.permission.account.changed"

    .line 25
    invoke-interface {p0, v1, v0, v2}, Lcom/amazon/identity/auth/device/z;->a(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    const-string v0, "LocalDBUpdateBroadcast_sent"

    .line 28
    invoke-static {v0, p0}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
