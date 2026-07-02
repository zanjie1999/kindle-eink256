.class Lcom/amazon/identity/auth/device/i$4;
.super Lcom/amazon/identity/auth/device/i$b;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/i;->a(Lcom/amazon/identity/auth/device/i$a;Lcom/amazon/identity/auth/device/j;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/kl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aA:Lcom/amazon/identity/auth/device/j;

.field final synthetic aB:Ljava/lang/String;

.field final synthetic aC:Ljava/lang/String;

.field final synthetic aD:Ljava/lang/String;

.field final synthetic ax:Lcom/amazon/identity/auth/device/i;

.field final synthetic ay:Lcom/amazon/identity/auth/device/i$a;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/i;Lcom/amazon/identity/auth/device/i$a;Lcom/amazon/identity/auth/device/api/MAPAccountManager;Lcom/amazon/identity/auth/device/j;Ljava/lang/String;Lcom/amazon/identity/auth/device/i$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2515
    iput-object p1, p0, Lcom/amazon/identity/auth/device/i$4;->ax:Lcom/amazon/identity/auth/device/i;

    iput-object p4, p0, Lcom/amazon/identity/auth/device/i$4;->aA:Lcom/amazon/identity/auth/device/j;

    iput-object p5, p0, Lcom/amazon/identity/auth/device/i$4;->aB:Ljava/lang/String;

    iput-object p6, p0, Lcom/amazon/identity/auth/device/i$4;->ay:Lcom/amazon/identity/auth/device/i$a;

    iput-object p7, p0, Lcom/amazon/identity/auth/device/i$4;->aC:Ljava/lang/String;

    iput-object p8, p0, Lcom/amazon/identity/auth/device/i$4;->aD:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/amazon/identity/auth/device/i$b;-><init>(Lcom/amazon/identity/auth/device/i$a;Lcom/amazon/identity/auth/device/api/MAPAccountManager;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;)V
    .locals 3

    .line 2623
    sget-object v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeDeviceNotRegisteredPanda:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypePrimaryAccountDeregisteredWhenRegisterSecondary:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    if-eq p1, v0, :cond_0

    return-void

    .line 2629
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/i$b;->at:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    if-nez v0, :cond_1

    .line 2631
    invoke-static {}, Lcom/amazon/identity/auth/device/i;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MAPAccountManager not initialized. Not able to deregister the device due to error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2632
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2631
    invoke-static {v0, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2636
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/i$4;->i()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2638
    iget-object v0, p0, Lcom/amazon/identity/auth/device/i$b;->at:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    new-instance v1, Lcom/amazon/identity/auth/device/i$4$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/identity/auth/device/i$4$1;-><init>(Lcom/amazon/identity/auth/device/i$4;Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;)V

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->deregisterDevice(Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    :cond_2
    return-void
.end method

.method protected b(Lcom/amazon/identity/auth/device/ky;)Lcom/amazon/identity/auth/device/i$c;
    .locals 8

    .line 2519
    iget-object v0, p0, Lcom/amazon/identity/auth/device/i$4;->ax:Lcom/amazon/identity/auth/device/i;

    invoke-static {v0, p1}, Lcom/amazon/identity/auth/device/i;->a(Lcom/amazon/identity/auth/device/i;Lcom/amazon/identity/auth/device/ky;)V

    .line 2521
    iget-object v0, p0, Lcom/amazon/identity/auth/device/i$4;->ax:Lcom/amazon/identity/auth/device/i;

    invoke-static {v0, p1}, Lcom/amazon/identity/auth/device/i;->b(Lcom/amazon/identity/auth/device/i;Lcom/amazon/identity/auth/device/ky;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2525
    iget-object v0, p0, Lcom/amazon/identity/auth/device/i$4;->ax:Lcom/amazon/identity/auth/device/i;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/i$4;->aA:Lcom/amazon/identity/auth/device/j;

    invoke-static {v0, p1, v1}, Lcom/amazon/identity/auth/device/i;->a(Lcom/amazon/identity/auth/device/i;Lcom/amazon/identity/auth/device/ky;Lcom/amazon/identity/auth/device/j;)Z

    .line 2529
    invoke-static {}, Lcom/amazon/identity/auth/device/i;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Cannot register the device, because anonymous credentials were returned from the server. FRO has either already been called or this device is not associated with an account."

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    .line 2531
    new-instance p1, Lcom/amazon/identity/auth/device/i$c;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->REGISTER_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->REGISTER_FAILED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    invoke-direct {p1, v1, v0, v2}, Lcom/amazon/identity/auth/device/i$c;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;)V

    return-object p1

    .line 2534
    :cond_0
    new-instance v0, Lcom/amazon/identity/auth/device/e;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/e;-><init>()V

    .line 2536
    iget-object v1, p0, Lcom/amazon/identity/auth/device/i$4;->aB:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 2538
    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/e;->a(Ljava/lang/String;)V

    .line 2541
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ky;->getUserName()Ljava/lang/String;

    move-result-object v1

    .line 2542
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, " "

    .line 2549
    :cond_2
    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/e;->b(Ljava/lang/String;)V

    .line 2550
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ky;->hQ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/e;->c(Ljava/lang/String;)V

    .line 2551
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ky;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/e;->d(Ljava/lang/String;)V

    .line 2552
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ky;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/e;->o(Ljava/lang/String;)V

    .line 2561
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ky;->hN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/e;->e(Ljava/lang/String;)V

    .line 2563
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ky;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2565
    invoke-static {}, Lcom/amazon/identity/auth/device/i;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Registration returned server generated credentials."

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 2566
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ky;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/e;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 2573
    :cond_3
    iget-object v2, p0, Lcom/amazon/identity/auth/device/i$4;->ay:Lcom/amazon/identity/auth/device/i$a;

    sget-object v3, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->REGISTER_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    sget-object v5, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->REGISTER_FAILED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/4 v7, 0x0

    const-string v4, "No private key to set after register."

    const-string v6, "No private key to set after register."

    invoke-interface/range {v2 .. v7}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2580
    :goto_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/i$4;->aC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/e;->setDeviceSerialNumber(Ljava/lang/String;)V

    .line 2581
    iget-object v1, p0, Lcom/amazon/identity/auth/device/i$4;->aD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/e;->setDeviceType(Ljava/lang/String;)V

    .line 2583
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ky;->getDirectedId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/e;->setDirectedId(Ljava/lang/String;)V

    .line 2585
    new-instance v1, Lcom/amazon/identity/auth/device/gb;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ky;->hP()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/identity/auth/device/gb;-><init>(Ljava/util/List;)V

    .line 2586
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/gb;->fb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/identity/auth/device/e;->g(Ljava/lang/String;)V

    .line 2587
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/gb;->fc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/e;->h(Ljava/lang/String;)V

    .line 2588
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ky;->hR()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/e;->i(Ljava/lang/String;)V

    .line 2590
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ky;->ca()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/e;->j(Ljava/lang/String;)V

    .line 2591
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ky;->hW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/e;->k(Ljava/lang/String;)V

    .line 2593
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ky;->hT()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/e;->l(Ljava/lang/String;)V

    .line 2594
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ky;->hU()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/e;->m(Ljava/lang/String;)V

    .line 2595
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ky;->hV()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/e;->n(Ljava/lang/String;)V

    .line 2597
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ky;->hX()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/e;->a(Ljava/util/Map;)V

    .line 2599
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ky;->hY()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/e;->a(Lorg/json/JSONArray;)V

    .line 2600
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ky;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/e;->p(Ljava/lang/String;)V

    .line 2601
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ky;->hO()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/e;->c(I)V

    .line 2602
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ky;->fY()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/e;->q(Ljava/lang/String;)V

    .line 2604
    new-instance p1, Lcom/amazon/identity/auth/device/i$c;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/e;->c()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/amazon/identity/auth/device/i$c;-><init>(Landroid/os/Bundle;)V

    return-object p1
.end method

.method protected i()Z
    .locals 2

    .line 2612
    new-instance v0, Lcom/amazon/identity/auth/device/ds;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/i$4;->ax:Lcom/amazon/identity/auth/device/i;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/i;->a(Lcom/amazon/identity/auth/device/i;)Lcom/amazon/identity/auth/device/ed;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/ds;-><init>(Landroid/content/Context;)V

    .line 2613
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ds;->dx()Z

    move-result v0

    return v0
.end method
