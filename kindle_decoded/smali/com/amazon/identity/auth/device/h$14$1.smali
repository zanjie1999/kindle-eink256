.class Lcom/amazon/identity/auth/device/h$14$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/h$14;->a(Lcom/amazon/identity/auth/device/api/Callback;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic P:Lcom/amazon/identity/auth/device/api/Callback;

.field final synthetic ak:Lcom/amazon/identity/auth/device/h$14;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/h$14;Lcom/amazon/identity/auth/device/api/Callback;)V
    .locals 0

    .line 1806
    iput-object p1, p0, Lcom/amazon/identity/auth/device/h$14$1;->ak:Lcom/amazon/identity/auth/device/h$14;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/h$14$1;->P:Lcom/amazon/identity/auth/device/api/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/os/Bundle;)V
    .locals 3

    .line 1817
    iget-object v0, p0, Lcom/amazon/identity/auth/device/h$14$1;->ak:Lcom/amazon/identity/auth/device/h$14;

    iget-object v1, v0, Lcom/amazon/identity/auth/device/h$14;->L:Lcom/amazon/identity/auth/device/h;

    iget-object v2, v0, Lcom/amazon/identity/auth/device/h$14;->H:Ljava/lang/String;

    iget-object v0, v0, Lcom/amazon/identity/auth/device/h$14;->aj:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/h;->a(Lcom/amazon/identity/auth/device/h;Ljava/lang/String;Ljava/lang/String;)V

    .line 1818
    iget-object v0, p0, Lcom/amazon/identity/auth/device/h$14$1;->P:Lcom/amazon/identity/auth/device/api/Callback;

    invoke-interface {v0, p1}, Lcom/amazon/identity/auth/device/api/Callback;->onError(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 3

    .line 1810
    iget-object v0, p0, Lcom/amazon/identity/auth/device/h$14$1;->ak:Lcom/amazon/identity/auth/device/h$14;

    iget-object v1, v0, Lcom/amazon/identity/auth/device/h$14;->L:Lcom/amazon/identity/auth/device/h;

    iget-object v2, v0, Lcom/amazon/identity/auth/device/h$14;->H:Ljava/lang/String;

    iget-object v0, v0, Lcom/amazon/identity/auth/device/h$14;->aj:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/h;->a(Lcom/amazon/identity/auth/device/h;Ljava/lang/String;Ljava/lang/String;)V

    .line 1811
    iget-object v0, p0, Lcom/amazon/identity/auth/device/h$14$1;->P:Lcom/amazon/identity/auth/device/api/Callback;

    invoke-interface {v0, p1}, Lcom/amazon/identity/auth/device/api/Callback;->onSuccess(Landroid/os/Bundle;)V

    return-void
.end method
