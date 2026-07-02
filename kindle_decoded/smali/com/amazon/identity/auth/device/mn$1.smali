.class final Lcom/amazon/identity/auth/device/mn$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/mn;->a(Lcom/amazon/identity/auth/device/ms;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic gC:Lcom/amazon/identity/auth/device/ms;

.field final synthetic k:Lcom/amazon/identity/auth/device/api/Callback;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/ms;Lcom/amazon/identity/auth/device/api/Callback;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/amazon/identity/auth/device/mn$1;->gC:Lcom/amazon/identity/auth/device/ms;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/mn$1;->k:Lcom/amazon/identity/auth/device/api/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/os/Bundle;)V
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/amazon/identity/auth/device/mn$1;->gC:Lcom/amazon/identity/auth/device/ms;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ms;->stop()V

    .line 219
    iget-object v0, p0, Lcom/amazon/identity/auth/device/mn$1;->k:Lcom/amazon/identity/auth/device/api/Callback;

    if-eqz v0, :cond_0

    .line 221
    invoke-interface {v0, p1}, Lcom/amazon/identity/auth/device/api/Callback;->onError(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/amazon/identity/auth/device/mn$1;->gC:Lcom/amazon/identity/auth/device/ms;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ms;->stop()V

    .line 209
    iget-object v0, p0, Lcom/amazon/identity/auth/device/mn$1;->k:Lcom/amazon/identity/auth/device/api/Callback;

    if-eqz v0, :cond_0

    .line 211
    invoke-interface {v0, p1}, Lcom/amazon/identity/auth/device/api/Callback;->onSuccess(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
