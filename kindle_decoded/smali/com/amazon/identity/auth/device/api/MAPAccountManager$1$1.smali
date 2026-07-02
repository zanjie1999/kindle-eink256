.class Lcom/amazon/identity/auth/device/api/MAPAccountManager$1$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/api/MAPAccountManager$1;->onSuccess(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic eA:Landroid/os/Bundle;

.field final synthetic gg:Ljava/lang/String;

.field final synthetic gh:Lcom/amazon/identity/auth/device/api/MAPAccountManager$1;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/api/MAPAccountManager$1;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 2457
    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$1$1;->gh:Lcom/amazon/identity/auth/device/api/MAPAccountManager$1;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$1$1;->eA:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$1$1;->gg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/os/Bundle;)V
    .locals 3

    .line 2472
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$1$1;->gh:Lcom/amazon/identity/auth/device/api/MAPAccountManager$1;

    iget-object v0, v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$1;->N:Lcom/amazon/identity/auth/device/ej;

    const-string v1, "DeregisterAfterEnsuringAccountStateFail"

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/ej;->bA(Ljava/lang/String;)V

    .line 2473
    invoke-static {}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Going to degister the account, since the account doesn\'t have assert attributes"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 2475
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$1$1;->gh:Lcom/amazon/identity/auth/device/api/MAPAccountManager$1;

    iget-object v0, v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$1;->gf:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$1$1;->gg:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->deregisterAccount(Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/identity/auth/device/api/MAPFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2479
    :catch_0
    invoke-static {}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Exception happened when try to degister account because of missing assert attributes"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 2482
    :goto_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$1$1;->gh:Lcom/amazon/identity/auth/device/api/MAPAccountManager$1;

    iget-object v0, v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$1;->W:Lcom/amazon/identity/auth/device/bl;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/bl;->onError(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 1

    .line 2463
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$1$1;->eA:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 2464
    iget-object p1, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$1$1;->gh:Lcom/amazon/identity/auth/device/api/MAPAccountManager$1;

    iget-object p1, p1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$1;->W:Lcom/amazon/identity/auth/device/bl;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$1$1;->eA:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/bl;->onSuccess(Landroid/os/Bundle;)V

    return-void
.end method
