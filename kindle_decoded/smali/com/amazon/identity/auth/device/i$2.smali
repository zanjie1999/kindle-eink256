.class Lcom/amazon/identity/auth/device/i$2;
.super Lcom/amazon/identity/auth/device/ke;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic H:Ljava/lang/String;

.field final synthetic N:Lcom/amazon/identity/auth/device/ej;

.field final synthetic aA:Lcom/amazon/identity/auth/device/j;

.field final synthetic ax:Lcom/amazon/identity/auth/device/i;

.field final synthetic ay:Lcom/amazon/identity/auth/device/i$a;

.field final synthetic az:Z


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/i;Lcom/amazon/identity/auth/device/i$a;ZLcom/amazon/identity/auth/device/j;Lcom/amazon/identity/auth/device/ej;Ljava/lang/String;)V
    .locals 0

    .line 2313
    iput-object p1, p0, Lcom/amazon/identity/auth/device/i$2;->ax:Lcom/amazon/identity/auth/device/i;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/i$2;->ay:Lcom/amazon/identity/auth/device/i$a;

    iput-boolean p3, p0, Lcom/amazon/identity/auth/device/i$2;->az:Z

    iput-object p4, p0, Lcom/amazon/identity/auth/device/i$2;->aA:Lcom/amazon/identity/auth/device/j;

    iput-object p5, p0, Lcom/amazon/identity/auth/device/i$2;->N:Lcom/amazon/identity/auth/device/ej;

    iput-object p6, p0, Lcom/amazon/identity/auth/device/i$2;->H:Ljava/lang/String;

    invoke-direct {p0}, Lcom/amazon/identity/auth/device/ke;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 13

    .line 2357
    invoke-static {}, Lcom/amazon/identity/auth/device/i;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Successfully completed the deregistration request"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 2358
    check-cast p1, Lcom/amazon/identity/auth/device/kh;

    if-nez p1, :cond_0

    .line 2365
    iget-object v0, p0, Lcom/amazon/identity/auth/device/i$2;->ay:Lcom/amazon/identity/auth/device/i$a;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INVALID_RESPONSE:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object v3, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->UNRECOGNIZED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/4 v5, 0x0

    const-string v2, "Error occurred during deregistration. Received a null response"

    const-string v4, "Deregistration Error: Null response"

    invoke-interface/range {v0 .. v5}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 2373
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/kh;->hr()Lcom/amazon/identity/auth/device/kf;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2375
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/kh;->hr()Lcom/amazon/identity/auth/device/kf;

    move-result-object p1

    .line 2377
    sget-object v0, Lcom/amazon/identity/auth/device/i$5;->aI:[I

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/kf;->ho()Lcom/amazon/identity/kcpsdk/auth/DeregisterDeviceErrorType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    .line 2392
    iget-object v1, p0, Lcom/amazon/identity/auth/device/i$2;->ay:Lcom/amazon/identity/auth/device/i$a;

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INVALID_RESPONSE:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object v4, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->UNRECOGNIZED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/4 v6, 0x0

    const-string v3, "Error occurred during deregistration. Received an unrecognizable response"

    const-string v5, "Deregistration Error: Unrecognized response"

    invoke-interface/range {v1 .. v6}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 2382
    :cond_1
    iget-object v7, p0, Lcom/amazon/identity/auth/device/i$2;->ay:Lcom/amazon/identity/auth/device/i$a;

    sget-object v8, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->DEREGISTER_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    sget-object v10, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->DEREGISTER_FAILED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/4 v12, 0x0

    const-string v9, "Error occurred during deregistration"

    const-string v11, "Deregistration Error: Failed"

    invoke-interface/range {v7 .. v12}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 2403
    :cond_2
    iget-boolean p1, p0, Lcom/amazon/identity/auth/device/i$2;->az:Z

    if-eqz p1, :cond_3

    .line 2405
    invoke-static {}, Lcom/amazon/identity/auth/device/bs;->O()V

    .line 2406
    iget-object p1, p0, Lcom/amazon/identity/auth/device/i$2;->ax:Lcom/amazon/identity/auth/device/i;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/i$2;->aA:Lcom/amazon/identity/auth/device/j;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/i$2;->ay:Lcom/amazon/identity/auth/device/i$a;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/i$2;->N:Lcom/amazon/identity/auth/device/ej;

    invoke-virtual {p1, v0, v1, v2}, Lcom/amazon/identity/auth/device/i;->a(Lcom/amazon/identity/auth/device/j;Lcom/amazon/identity/auth/device/i$a;Lcom/amazon/identity/auth/device/ej;)V

    return-void

    .line 2410
    :cond_3
    iget-object p1, p0, Lcom/amazon/identity/auth/device/i$2;->H:Ljava/lang/String;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/bs;->aM(Ljava/lang/String;)V

    .line 2411
    iget-object p1, p0, Lcom/amazon/identity/auth/device/i$2;->ay:Lcom/amazon/identity/auth/device/i$a;

    const/4 v0, 0x0

    invoke-interface {p1, v0, v0, v0}, Lcom/amazon/identity/auth/device/i$a;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public j()V
    .locals 8

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "NetworkError6:AccountRegistrar"

    .line 2319
    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2323
    iget-object v2, p0, Lcom/amazon/identity/auth/device/i$2;->ay:Lcom/amazon/identity/auth/device/i$a;

    sget-object v3, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->NETWORK_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object v5, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->NETWORK_FAILURE:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const-string v4, "Network failure occurred while performing deregistration request"

    const-string v6, "Network failure performing deregistration request"

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public k()V
    .locals 6

    .line 2347
    iget-object v0, p0, Lcom/amazon/identity/auth/device/i$2;->ay:Lcom/amazon/identity/auth/device/i$a;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->PARSE_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object v3, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->PARSE_ERROR:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const-string v2, "Parsing failure occurred while performing deregistration request"

    const-string v4, "Parsing failure performing deregistration request"

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 6

    .line 2335
    iget-object v0, p0, Lcom/amazon/identity/auth/device/i$2;->ay:Lcom/amazon/identity/auth/device/i$a;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->AUTHENTICATION_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    sget-object v3, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->AUTHENTICATION_FAILED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const-string v2, "Authentication failure occurred while performing deregistration request"

    const-string v4, "Authentication failure performing deregistration request"

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
