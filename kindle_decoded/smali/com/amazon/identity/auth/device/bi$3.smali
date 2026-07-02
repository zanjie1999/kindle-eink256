.class Lcom/amazon/identity/auth/device/bi$3;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/bi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic gY:Lcom/amazon/identity/auth/device/bi;

.field final synthetic gZ:Lcom/amazon/identity/auth/device/bootstrapSSO/IBootstrapSSOService;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/bi;Lcom/amazon/identity/auth/device/bootstrapSSO/IBootstrapSSOService;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/amazon/identity/auth/device/bi$3;->gY:Lcom/amazon/identity/auth/device/bi;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/bi$3;->gZ:Lcom/amazon/identity/auth/device/bootstrapSSO/IBootstrapSSOService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 197
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "appPackageName"

    .line 198
    iget-object v2, p0, Lcom/amazon/identity/auth/device/bi$3;->gY:Lcom/amazon/identity/auth/device/bi;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/bi;->c(Lcom/amazon/identity/auth/device/bi;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Lcom/amazon/identity/auth/device/bi$3;->gZ:Lcom/amazon/identity/auth/device/bootstrapSSO/IBootstrapSSOService;

    invoke-interface {v1, v0}, Lcom/amazon/identity/auth/device/bootstrapSSO/IBootstrapSSOService;->bootstrapForPackage(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 201
    iget-object v1, p0, Lcom/amazon/identity/auth/device/bi$3;->gY:Lcom/amazon/identity/auth/device/bi;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/bi;->d(Lcom/amazon/identity/auth/device/bi;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 202
    iget-object v1, p0, Lcom/amazon/identity/auth/device/bi$3;->gY:Lcom/amazon/identity/auth/device/bi;

    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/bi;->a(Lcom/amazon/identity/auth/device/bi;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 206
    invoke-static {}, Lcom/amazon/identity/auth/device/bi;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unexpected error from service"

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 207
    iget-object v1, p0, Lcom/amazon/identity/auth/device/bi$3;->gY:Lcom/amazon/identity/auth/device/bi;

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;->SERVICE_ERROR:Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected error from service: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/bi;->a(Lcom/amazon/identity/auth/device/bi;Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;Ljava/lang/String;)V

    return-void
.end method
