.class Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper$a;
.super Lcom/amazon/identity/auth/device/callback/IRemoteCallback$Stub;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final g:Lcom/amazon/identity/auth/device/api/Callback;


# direct methods
.method public constructor <init>(Lcom/amazon/identity/auth/device/api/Callback;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/callback/IRemoteCallback$Stub;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper$a;->g:Lcom/amazon/identity/auth/device/api/Callback;

    return-void
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper$a;)Lcom/amazon/identity/auth/device/api/Callback;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper$a;->g:Lcom/amazon/identity/auth/device/api/Callback;

    return-object p0
.end method


# virtual methods
.method public onError(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper$a;->g:Lcom/amazon/identity/auth/device/api/Callback;

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper$a$2;

    invoke-direct {v0, p0, p1}, Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper$a$2;-><init>(Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper$a;Landroid/os/Bundle;)V

    invoke-static {v0}, Lcom/amazon/identity/auth/device/jf;->e(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper$a;->g:Lcom/amazon/identity/auth/device/api/Callback;

    if-eqz v0, :cond_0

    .line 31
    new-instance v0, Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper$a$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper$a$1;-><init>(Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper$a;Landroid/os/Bundle;)V

    invoke-static {v0}, Lcom/amazon/identity/auth/device/jf;->e(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
