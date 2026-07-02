.class Lcom/amazon/identity/auth/device/h$3$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/h$3;->a(Lcom/amazon/identity/auth/device/api/Callback;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic P:Lcom/amazon/identity/auth/device/api/Callback;

.field final synthetic Q:Lcom/amazon/identity/auth/device/h$3;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/h$3;Lcom/amazon/identity/auth/device/api/Callback;)V
    .locals 0

    .line 2229
    iput-object p1, p0, Lcom/amazon/identity/auth/device/h$3$1;->Q:Lcom/amazon/identity/auth/device/h$3;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/h$3$1;->P:Lcom/amazon/identity/auth/device/api/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/os/Bundle;)V
    .locals 1

    .line 2245
    iget-object v0, p0, Lcom/amazon/identity/auth/device/h$3$1;->P:Lcom/amazon/identity/auth/device/api/Callback;

    invoke-interface {v0, p1}, Lcom/amazon/identity/auth/device/api/Callback;->onError(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 4

    .line 2234
    iget-object v0, p0, Lcom/amazon/identity/auth/device/h$3$1;->Q:Lcom/amazon/identity/auth/device/h$3;

    iget-object v0, v0, Lcom/amazon/identity/auth/device/h$3;->L:Lcom/amazon/identity/auth/device/h;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/h;->b(Lcom/amazon/identity/auth/device/h;)Lcom/amazon/identity/auth/device/gc;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/identity/auth/device/h$3$1;->Q:Lcom/amazon/identity/auth/device/h$3;

    iget-object v1, v1, Lcom/amazon/identity/auth/device/h$3;->O:Landroid/os/Bundle;

    const-string v2, "Device Serial Number"

    .line 2236
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dcp.third.party.device.state"

    const-string/jumbo v3, "serial.number"

    .line 2234
    invoke-virtual {v0, v2, v3, v1}, Lcom/amazon/identity/auth/device/gc;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2237
    invoke-static {}, Lcom/amazon/identity/auth/device/ch;->bO()Lcom/amazon/identity/auth/device/ch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ch;->O()V

    .line 2238
    iget-object v0, p0, Lcom/amazon/identity/auth/device/h$3$1;->P:Lcom/amazon/identity/auth/device/api/Callback;

    invoke-interface {v0, p1}, Lcom/amazon/identity/auth/device/api/Callback;->onSuccess(Landroid/os/Bundle;)V

    return-void
.end method
