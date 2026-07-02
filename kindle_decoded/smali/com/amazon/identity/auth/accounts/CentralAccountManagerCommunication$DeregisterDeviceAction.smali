.class public Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$DeregisterDeviceAction;
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
    name = "DeregisterDeviceAction"
.end annotation


# static fields
.field public static final KEY_DEREG_DATA:Ljava/lang/String; = "deregData"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public performIPCAction(Lcom/amazon/identity/auth/device/ed;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Landroid/os/Bundle;
    .locals 3

    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    .line 357
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    const-string v1, "deregData"

    .line 359
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 361
    invoke-static {p1}, Lcom/amazon/identity/auth/device/h;->b(Landroid/content/Context;)Lcom/amazon/identity/auth/device/h;

    move-result-object p1

    const-string v1, "DeregisterDevice"

    .line 362
    invoke-static {p2, v1}, Lcom/amazon/identity/auth/device/ej;->d(Landroid/os/Bundle;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ej;

    move-result-object p2

    .line 363
    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->UNRECOGNIZED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const-string v2, "com.amazon.dcp.sso.ErrorCode"

    .line 364
    invoke-static {p3, p2, v2, v1}, Lcom/amazon/identity/auth/device/mn;->a(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;)Lcom/amazon/identity/auth/device/api/Callback;

    move-result-object p3

    .line 369
    invoke-virtual {p1, p3, p2, v0}, Lcom/amazon/identity/auth/device/h;->a(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;Landroid/os/Bundle;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    const/4 p1, 0x0

    return-object p1
.end method
