.class public Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$AuthenticateAccountAction;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/framework/IPCCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthenticateAccountAction"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public performIPCAction(Lcom/amazon/identity/auth/device/ed;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Landroid/os/Bundle;
    .locals 1

    .line 301
    invoke-static {p1}, Lcom/amazon/identity/auth/device/h;->b(Landroid/content/Context;)Lcom/amazon/identity/auth/device/h;

    move-result-object p1

    const-string v0, "AuthenticateAccount:"

    .line 302
    invoke-static {p2, v0}, Lcom/amazon/identity/auth/device/ej;->d(Landroid/os/Bundle;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ej;

    move-result-object v0

    .line 303
    invoke-static {v0, p3}, Lcom/amazon/identity/auth/device/mn;->a(Lcom/amazon/identity/auth/device/ej;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/Callback;

    move-result-object p3

    .line 304
    invoke-virtual {p1, p2, p3, v0}, Lcom/amazon/identity/auth/device/h;->a(Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V

    const/4 p1, 0x0

    return-object p1
.end method
