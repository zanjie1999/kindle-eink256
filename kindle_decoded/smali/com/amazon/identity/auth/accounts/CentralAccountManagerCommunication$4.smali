.class Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$4;
.super Lcom/amazon/identity/auth/device/ct;
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
        "Lcom/amazon/identity/auth/device/ct<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic bb:Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;Lcom/amazon/identity/auth/device/api/Callback;)V
    .locals 0

    .line 993
    iput-object p1, p0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$4;->bb:Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;

    invoke-direct {p0, p2}, Lcom/amazon/identity/auth/device/ct;-><init>(Lcom/amazon/identity/auth/device/api/Callback;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/amazon/identity/auth/device/api/Callback;Ljava/lang/Boolean;)V
    .locals 0

    if-eqz p2, :cond_1

    .line 997
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 1004
    :cond_0
    invoke-static {}, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->u()Landroid/os/Bundle;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazon/identity/auth/device/api/Callback;->onSuccess(Landroid/os/Bundle;)V

    return-void

    .line 1000
    :cond_1
    :goto_0
    invoke-static {}, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->t()Landroid/os/Bundle;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazon/identity/auth/device/api/Callback;->onError(Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/amazon/identity/auth/device/api/Callback;Ljava/lang/Object;)V
    .locals 0

    .line 993
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$4;->a(Lcom/amazon/identity/auth/device/api/Callback;Ljava/lang/Boolean;)V

    return-void
.end method
