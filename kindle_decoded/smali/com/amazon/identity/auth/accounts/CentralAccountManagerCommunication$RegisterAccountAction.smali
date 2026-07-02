.class public Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$RegisterAccountAction;
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
    name = "RegisterAccountAction"
.end annotation


# static fields
.field public static final KEY_REG_DATA:Ljava/lang/String; = "regData"

.field public static final KEY_REG_TYPE:Ljava/lang/String; = "regType"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parametersToBundle(Lcom/amazon/identity/auth/device/api/RegistrationType;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)Landroid/os/Bundle;
    .locals 2

    .line 254
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 255
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/api/RegistrationType;->getName()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "regType"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "regData"

    .line 256
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 257
    invoke-virtual {p2, v0}, Lcom/amazon/identity/auth/device/ej;->A(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public performIPCAction(Lcom/amazon/identity/auth/device/ed;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Landroid/os/Bundle;
    .locals 4

    if-eqz p2, :cond_0

    goto :goto_0

    .line 266
    :cond_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :goto_0
    const-string/jumbo v0, "regType"

    .line 268
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 269
    invoke-static {v0}, Lcom/amazon/identity/auth/device/api/RegistrationType;->fromName(Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/RegistrationType;

    move-result-object v0

    const-string/jumbo v1, "regData"

    .line 271
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 273
    invoke-static {p1}, Lcom/amazon/identity/auth/device/h;->b(Landroid/content/Context;)Lcom/amazon/identity/auth/device/h;

    move-result-object p1

    .line 276
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RegisterAccount:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 277
    invoke-static {v0}, Lcom/amazon/identity/auth/device/mn;->b(Lcom/amazon/identity/auth/device/api/RegistrationType;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/amazon/identity/auth/device/ej;->d(Landroid/os/Bundle;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ej;

    move-result-object p2

    const-string v2, "Count"

    .line 278
    invoke-virtual {p2, v2}, Lcom/amazon/identity/auth/device/ej;->bA(Ljava/lang/String;)V

    .line 279
    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->UNRECOGNIZED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const-string v3, "com.amazon.dcp.sso.ErrorCode"

    .line 280
    invoke-static {p3, p2, v3, v2}, Lcom/amazon/identity/auth/device/mn;->a(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;)Lcom/amazon/identity/auth/device/api/Callback;

    move-result-object p3

    .line 286
    invoke-static {v1}, Lcom/amazon/identity/auth/device/ht;->H(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 285
    invoke-virtual {p1, v0, v1, p3, p2}, Lcom/amazon/identity/auth/device/h;->a(Lcom/amazon/identity/auth/device/api/RegistrationType;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V

    const/4 p1, 0x0

    return-object p1
.end method
