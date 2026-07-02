.class Lcom/amazon/identity/auth/device/AuthPortalUIActivity$5;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->a(Lcom/amazon/identity/auth/device/cm;ZLcom/amazon/identity/auth/device/api/Callback;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic O:Landroid/os/Bundle;

.field final synthetic eC:Lcom/amazon/identity/auth/device/cm;

.field final synthetic eD:Z

.field final synthetic ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

.field final synthetic k:Lcom/amazon/identity/auth/device/api/Callback;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;ZLandroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/cm;)V
    .locals 0

    .line 2704
    iput-object p1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$5;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    iput-boolean p2, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$5;->eD:Z

    iput-object p3, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$5;->O:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$5;->k:Lcom/amazon/identity/auth/device/api/Callback;

    iput-object p5, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$5;->eC:Lcom/amazon/identity/auth/device/cm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/os/Bundle;)V
    .locals 2

    .line 2727
    invoke-static {}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->access$1200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Exchange token with authorization code failed"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 2728
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$5;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->H(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;

    move-result-object v0

    .line 2729
    iget-object v1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$5;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-static {v1, p1, v0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->b(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;)V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 3

    .line 2708
    invoke-static {}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->access$1200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Exchange token with authorization code succeed"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "value_key"

    .line 2709
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2710
    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$5;->eD:Z

    if-eqz v0, :cond_0

    .line 2713
    invoke-static {}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->access$1200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Continue to perform device registration through FIRS"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 2714
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$5;->O:Landroid/os/Bundle;

    const-string v1, "com.amazon.dcp.sso.AddAccount.options.AccessToken"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2715
    iget-object p1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$5;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->I(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/identity/auth/device/api/RegistrationType;->FROM_ACCESS_TOKEN:Lcom/amazon/identity/auth/device/api/RegistrationType;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$5;->O:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$5;->k:Lcom/amazon/identity/auth/device/api/Callback;

    invoke-virtual {p1, v0, v1, v2}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->registerAccount(Lcom/amazon/identity/auth/device/api/RegistrationType;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    return-void

    .line 2720
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$5;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$5;->eC:Lcom/amazon/identity/auth/device/cm;

    invoke-static {v0, v1, p1}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->a(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;Lcom/amazon/identity/auth/device/cm;Ljava/lang/String;)V

    return-void
.end method
