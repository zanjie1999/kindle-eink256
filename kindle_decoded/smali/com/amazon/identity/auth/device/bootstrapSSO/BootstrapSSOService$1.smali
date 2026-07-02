.class Lcom/amazon/identity/auth/device/bootstrapSSO/BootstrapSSOService$1;
.super Lcom/amazon/identity/auth/device/bootstrapSSO/IBootstrapSSOService$Stub;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/bootstrapSSO/BootstrapSSOService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic hb:Lcom/amazon/identity/auth/device/bootstrapSSO/BootstrapSSOService;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/bootstrapSSO/BootstrapSSOService;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/amazon/identity/auth/device/bootstrapSSO/BootstrapSSOService$1;->hb:Lcom/amazon/identity/auth/device/bootstrapSSO/BootstrapSSOService;

    invoke-direct {p0}, Lcom/amazon/identity/auth/device/bootstrapSSO/IBootstrapSSOService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public bootstrapForPackage(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/amazon/identity/auth/device/bootstrapSSO/BootstrapSSOService$1;->hb:Lcom/amazon/identity/auth/device/bootstrapSSO/BootstrapSSOService;

    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "appPackageName"

    .line 35
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 36
    iget-object v1, p0, Lcom/amazon/identity/auth/device/bootstrapSSO/BootstrapSSOService$1;->hb:Lcom/amazon/identity/auth/device/bootstrapSSO/BootstrapSSOService;

    new-instance v2, Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    invoke-direct {v2, v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/amazon/identity/auth/device/bg;

    invoke-direct {v3, v0}, Lcom/amazon/identity/auth/device/bg;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0, v2, p1, v3}, Lcom/amazon/identity/auth/device/bootstrapSSO/BootstrapSSOService;->a(Landroid/content/Context;Lcom/amazon/identity/auth/device/api/MAPAccountManager;Ljava/lang/String;Lcom/amazon/identity/auth/device/bg;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method
