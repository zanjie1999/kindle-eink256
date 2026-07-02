.class Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper$a$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper$a;->onSuccess(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic eA:Landroid/os/Bundle;

.field final synthetic hg:Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper$a;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper$a;Landroid/os/Bundle;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper$a$1;->hg:Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper$a;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper$a$1;->eA:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper$a$1;->hg:Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper$a;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper$a;->a(Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper$a;)Lcom/amazon/identity/auth/device/api/Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper$a$1;->eA:Landroid/os/Bundle;

    invoke-interface {v0, v1}, Lcom/amazon/identity/auth/device/api/Callback;->onSuccess(Landroid/os/Bundle;)V

    return-void
.end method
