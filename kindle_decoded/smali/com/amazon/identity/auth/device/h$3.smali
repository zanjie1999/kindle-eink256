.class Lcom/amazon/identity/auth/device/h$3;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/h;->c(Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic L:Lcom/amazon/identity/auth/device/h;

.field final synthetic N:Lcom/amazon/identity/auth/device/ej;

.field final synthetic O:Landroid/os/Bundle;

.field final synthetic k:Lcom/amazon/identity/auth/device/api/Callback;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/h;Lcom/amazon/identity/auth/device/api/Callback;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)V
    .locals 0

    .line 2214
    iput-object p1, p0, Lcom/amazon/identity/auth/device/h$3;->L:Lcom/amazon/identity/auth/device/h;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/h$3;->k:Lcom/amazon/identity/auth/device/api/Callback;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/h$3;->O:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/amazon/identity/auth/device/h$3;->N:Lcom/amazon/identity/auth/device/ej;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazon/identity/auth/device/api/Callback;)Landroid/os/Bundle;
    .locals 4

    .line 2219
    iget-object v0, p0, Lcom/amazon/identity/auth/device/h$3;->L:Lcom/amazon/identity/auth/device/h;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/h;->getAccounts()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2221
    invoke-static {}, Lcom/amazon/identity/auth/device/h;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Registered account found on device. bootstrap API works only on unregistered devices"

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 2224
    iget-object p1, p0, Lcom/amazon/identity/auth/device/h$3;->k:Lcom/amazon/identity/auth/device/api/Callback;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/h$3;->L:Lcom/amazon/identity/auth/device/h;

    .line 2225
    invoke-static {v0}, Lcom/amazon/identity/auth/device/h;->f(Lcom/amazon/identity/auth/device/h;)Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->n()Ljava/lang/String;

    move-result-object v0

    .line 2224
    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/m;->a(Lcom/amazon/identity/auth/device/api/Callback;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 2228
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/h$3;->L:Lcom/amazon/identity/auth/device/h;

    sget-object v1, Lcom/amazon/identity/auth/device/api/RegistrationType;->FROM_ADP_TOKEN:Lcom/amazon/identity/auth/device/api/RegistrationType;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/h$3;->O:Landroid/os/Bundle;

    new-instance v3, Lcom/amazon/identity/auth/device/h$3$1;

    invoke-direct {v3, p0, p1}, Lcom/amazon/identity/auth/device/h$3$1;-><init>(Lcom/amazon/identity/auth/device/h$3;Lcom/amazon/identity/auth/device/api/Callback;)V

    iget-object p1, p0, Lcom/amazon/identity/auth/device/h$3;->N:Lcom/amazon/identity/auth/device/ej;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/amazon/identity/auth/device/h;->a(Lcom/amazon/identity/auth/device/h;Lcom/amazon/identity/auth/device/api/RegistrationType;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method
