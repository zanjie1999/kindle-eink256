.class Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$3;
.super Lcom/amazon/identity/auth/device/cu;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/identity/auth/device/cu<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic bb:Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;Landroid/accounts/AccountManagerFuture;)V
    .locals 0

    .line 968
    iput-object p1, p0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$3;->bb:Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;

    invoke-direct {p0, p2}, Lcom/amazon/identity/auth/device/cu;-><init>(Landroid/accounts/AccountManagerFuture;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Boolean;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 973
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 978
    invoke-static {}, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->u()Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 975
    :cond_0
    new-instance p1, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;

    invoke-static {}, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->t()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;-><init>(Landroid/os/Bundle;)V

    throw p1
.end method

.method public synthetic b(Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;
        }
    .end annotation

    .line 968
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$3;->a(Ljava/lang/Boolean;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method
