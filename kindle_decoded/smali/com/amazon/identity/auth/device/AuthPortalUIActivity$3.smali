.class Lcom/amazon/identity/auth/device/AuthPortalUIActivity$3;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/AuthPortalUIActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic eB:Ljava/lang/String;

.field final synthetic eC:Lcom/amazon/identity/auth/device/cm;

.field final synthetic ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;Ljava/lang/String;Lcom/amazon/identity/auth/device/cm;)V
    .locals 0

    .line 2665
    iput-object p1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$3;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$3;->eB:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$3;->eC:Lcom/amazon/identity/auth/device/cm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/os/Bundle;)V
    .locals 2

    .line 2677
    invoke-static {}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->access$1200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Token upgrade for ConfirmCredential failed."

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 2678
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$3;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->H(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;

    move-result-object v0

    .line 2679
    iget-object v1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$3;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-static {v1, p1, v0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->b(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;)V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 2

    .line 2669
    invoke-static {}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->access$1200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Token upgrade for ConfirmCredential succeeded."

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 2670
    iget-object p1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$3;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->D(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$3;->eB:Ljava/lang/String;

    const-string v1, "com.amazon.dcp.sso.token.oauth.amazon.access_token"

    invoke-virtual {p1, v0, v1}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2671
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$3;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$3;->eC:Lcom/amazon/identity/auth/device/cm;

    invoke-static {v0, v1, p1}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->a(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;Lcom/amazon/identity/auth/device/cm;Ljava/lang/String;)V

    return-void
.end method
