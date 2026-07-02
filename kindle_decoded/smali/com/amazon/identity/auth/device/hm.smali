.class public final Lcom/amazon/identity/auth/device/hm;
.super Ljava/lang/Object;
.source "DCP"


# direct methods
.method public static a(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 44
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "error_code_key"

    .line 46
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "error_message_key"

    .line 47
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 50
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    return-object v0
.end method

.method public static a(Lcom/amazon/identity/auth/device/bl;ILjava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 29
    invoke-static {p1, p2, v0}, Lcom/amazon/identity/auth/device/hm;->a(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/bl;->onError(Landroid/os/Bundle;)V

    return-void
.end method

.method public static a(Lcom/amazon/identity/auth/device/bl;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x5

    .line 38
    invoke-static {v0, p1, p2}, Lcom/amazon/identity/auth/device/hm;->a(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/bl;->onError(Landroid/os/Bundle;)V

    return-void
.end method

.method public static b(Lcom/amazon/identity/auth/device/bl;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "Cannot sign a null corpus."

    .line 20
    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 21
    invoke-static {p0, p1, v0}, Lcom/amazon/identity/auth/device/hm;->a(Lcom/amazon/identity/auth/device/bl;ILjava/lang/String;)V

    return-void
.end method
