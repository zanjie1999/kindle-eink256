.class Lcom/amazon/identity/auth/device/h$10;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/h;->a(Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic L:Lcom/amazon/identity/auth/device/h;

.field final synthetic N:Lcom/amazon/identity/auth/device/ej;

.field final synthetic X:Landroid/os/Bundle;

.field final synthetic k:Lcom/amazon/identity/auth/device/api/Callback;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/h;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;Lcom/amazon/identity/auth/device/api/Callback;)V
    .locals 0

    .line 844
    iput-object p1, p0, Lcom/amazon/identity/auth/device/h$10;->L:Lcom/amazon/identity/auth/device/h;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/h$10;->X:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/h$10;->N:Lcom/amazon/identity/auth/device/ej;

    iput-object p4, p0, Lcom/amazon/identity/auth/device/h$10;->k:Lcom/amazon/identity/auth/device/api/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 851
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/h$10;->L:Lcom/amazon/identity/auth/device/h;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/h;->c(Lcom/amazon/identity/auth/device/h;)Lcom/amazon/identity/auth/device/n;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/identity/auth/device/h$10;->X:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/h$10;->N:Lcom/amazon/identity/auth/device/ej;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/identity/auth/device/n;->a(Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)Landroid/os/Bundle;

    move-result-object v0

    .line 852
    iget-object v1, p0, Lcom/amazon/identity/auth/device/h$10;->k:Lcom/amazon/identity/auth/device/api/Callback;

    invoke-interface {v1, v0}, Lcom/amazon/identity/auth/device/api/Callback;->onSuccess(Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 856
    iget-object v1, p0, Lcom/amazon/identity/auth/device/h$10;->k:Lcom/amazon/identity/auth/device/api/Callback;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/amazon/identity/auth/device/api/Callback;->onError(Landroid/os/Bundle;)V

    return-void
.end method
