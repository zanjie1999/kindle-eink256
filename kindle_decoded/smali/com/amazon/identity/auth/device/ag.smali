.class public Lcom/amazon/identity/auth/device/ag;
.super Lcom/amazon/identity/auth/device/cu;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/identity/auth/device/cu<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/accounts/AccountManagerFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/cu;-><init>(Landroid/accounts/AccountManagerFuture;)V

    return-void
.end method


# virtual methods
.method public synthetic b(Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;
        }
    .end annotation

    .line 10
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/ag;->i(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method protected i(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;
        }
    .end annotation

    .line 20
    invoke-static {p1}, Lcom/amazon/identity/auth/device/m;->e(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 22
    :cond_0
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;

    invoke-direct {v0, p1}, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;-><init>(Landroid/os/Bundle;)V

    throw v0
.end method
