.class public final Lcom/amazon/identity/auth/device/ee;
.super Ljava/lang/Object;
.source "DCP"


# direct methods
.method public static N(Landroid/content/Context;)V
    .locals 1

    .line 31
    invoke-static {}, Lcom/amazon/identity/auth/device/bc;->bl()Lcom/amazon/identity/auth/device/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/bc;->clearCache()V

    .line 32
    invoke-static {p0}, Lcom/amazon/identity/auth/device/ab;->generateNewInstance(Landroid/content/Context;)V

    .line 33
    invoke-static {p0}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->E(Landroid/content/Context;)Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->O()V

    const/4 v0, 0x0

    .line 34
    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/cc;->a(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 35
    invoke-static {p0}, Lcom/amazon/identity/auth/device/cg;->generateNewInstance(Landroid/content/Context;)V

    .line 36
    invoke-static {p0}, Lcom/amazon/identity/auth/device/cj;->generateNewInstance(Landroid/content/Context;)V

    .line 37
    invoke-static {p0}, Lcom/amazon/identity/auth/device/dl;->generateNewInstance(Landroid/content/Context;)V

    .line 38
    invoke-static {}, Lcom/amazon/identity/auth/device/ch;->bO()Lcom/amazon/identity/auth/device/ch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ch;->O()V

    .line 39
    invoke-static {p0}, Lcom/amazon/identity/auth/device/ar;->generateNewInstance(Landroid/content/Context;)V

    .line 40
    invoke-static {p0}, Lcom/amazon/identity/auth/device/h;->generateNewInstance(Landroid/content/Context;)V

    .line 41
    invoke-static {p0}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/identity/auth/device/az;->c(Lcom/amazon/identity/auth/device/ed;)V

    .line 42
    invoke-static {p0}, Lcom/amazon/identity/auth/device/hg;->generateNewInstance(Landroid/content/Context;)V

    .line 43
    invoke-static {p0}, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;->generateNewInstance(Landroid/content/Context;)V

    .line 44
    invoke-static {p0}, Lcom/amazon/identity/auth/device/api/DeviceDataStore;->generateNewInstance(Landroid/content/Context;)V

    return-void
.end method
