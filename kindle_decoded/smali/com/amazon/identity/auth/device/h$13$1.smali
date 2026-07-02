.class Lcom/amazon/identity/auth/device/h$13$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/h$13;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ai:Lcom/amazon/identity/auth/device/h$13;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/h$13;)V
    .locals 0

    .line 1407
    iput-object p1, p0, Lcom/amazon/identity/auth/device/h$13$1;->ai:Lcom/amazon/identity/auth/device/h$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1412
    iget-object v0, p0, Lcom/amazon/identity/auth/device/h$13$1;->ai:Lcom/amazon/identity/auth/device/h$13;

    iget-object v1, v0, Lcom/amazon/identity/auth/device/h$13;->ad:Ljava/lang/String;

    iget-object v0, v0, Lcom/amazon/identity/auth/device/h$13;->L:Lcom/amazon/identity/auth/device/h;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/h;->e(Lcom/amazon/identity/auth/device/h;)Lcom/amazon/identity/auth/device/z;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/ar;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/z;)V

    .line 1416
    iget-object v0, p0, Lcom/amazon/identity/auth/device/h$13$1;->ai:Lcom/amazon/identity/auth/device/h$13;

    iget-object v0, v0, Lcom/amazon/identity/auth/device/h$13;->ae:Landroid/os/Bundle;

    const-string v1, "com.amazon.dcp.sso.property.devicename"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1417
    iget-object v1, p0, Lcom/amazon/identity/auth/device/h$13$1;->ai:Lcom/amazon/identity/auth/device/h$13;

    iget-object v1, v1, Lcom/amazon/identity/auth/device/h$13;->L:Lcom/amazon/identity/auth/device/h;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/h;->a(Lcom/amazon/identity/auth/device/h;)Lcom/amazon/identity/auth/device/ed;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/identity/auth/device/h$13$1;->ai:Lcom/amazon/identity/auth/device/h$13;

    iget-object v2, v2, Lcom/amazon/identity/auth/device/h$13;->ad:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/ax;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 1419
    iget-object v0, p0, Lcom/amazon/identity/auth/device/h$13$1;->ai:Lcom/amazon/identity/auth/device/h$13;

    iget-object v0, v0, Lcom/amazon/identity/auth/device/h$13;->ae:Landroid/os/Bundle;

    const-string v1, "isAnonymous"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1421
    iget-object v1, p0, Lcom/amazon/identity/auth/device/h$13$1;->ai:Lcom/amazon/identity/auth/device/h$13;

    iget-object v1, v1, Lcom/amazon/identity/auth/device/h$13;->L:Lcom/amazon/identity/auth/device/h;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/h;->f(Lcom/amazon/identity/auth/device/h;)Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/identity/auth/device/h$13$1;->ai:Lcom/amazon/identity/auth/device/h$13;

    iget-object v2, v2, Lcom/amazon/identity/auth/device/h$13;->ad:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->A(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 1423
    iget-object v0, p0, Lcom/amazon/identity/auth/device/h$13$1;->ai:Lcom/amazon/identity/auth/device/h$13;

    iget-object v0, v0, Lcom/amazon/identity/auth/device/h$13;->ae:Landroid/os/Bundle;

    const-string v1, "com.amazon.dcp.sso.property.deviceemail"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1424
    iget-object v1, p0, Lcom/amazon/identity/auth/device/h$13$1;->ai:Lcom/amazon/identity/auth/device/h$13;

    iget-object v1, v1, Lcom/amazon/identity/auth/device/h$13;->ae:Landroid/os/Bundle;

    const-string v2, "com.amazon.dcp.sso.token.devicedevicetype"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1427
    iget-object v2, p0, Lcom/amazon/identity/auth/device/h$13$1;->ai:Lcom/amazon/identity/auth/device/h$13;

    iget-object v3, v2, Lcom/amazon/identity/auth/device/h$13;->L:Lcom/amazon/identity/auth/device/h;

    iget-object v2, v2, Lcom/amazon/identity/auth/device/h$13;->ad:Ljava/lang/String;

    invoke-static {v3, v0, v2, v1}, Lcom/amazon/identity/auth/device/h;->a(Lcom/amazon/identity/auth/device/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
