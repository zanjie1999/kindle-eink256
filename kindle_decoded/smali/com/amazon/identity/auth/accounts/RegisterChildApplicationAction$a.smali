.class Lcom/amazon/identity/auth/accounts/RegisterChildApplicationAction$a;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/accounts/RegisterChildApplicationAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final cy:Lcom/amazon/identity/auth/device/api/Callback;


# direct methods
.method public constructor <init>(Lcom/amazon/identity/auth/device/api/Callback;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/amazon/identity/auth/accounts/RegisterChildApplicationAction$a;->cy:Lcom/amazon/identity/auth/device/api/Callback;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 2

    .line 65
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "asBinder is not supported in SubAuthenticatorCallbackAdapter"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onError(ILjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/RegisterChildApplicationAction$a;->cy:Lcom/amazon/identity/auth/device/api/Callback;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const/4 v5, 0x0

    move-object v2, p2

    move v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/amazon/identity/auth/device/m;->a(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/RegisterChildApplicationAction$a;->cy:Lcom/amazon/identity/auth/device/api/Callback;

    invoke-static {v0, p1}, Lcom/amazon/identity/auth/device/m;->a(Lcom/amazon/identity/auth/device/api/Callback;Landroid/os/Bundle;)V

    return-void
.end method
