.class abstract Lcom/amazon/identity/auth/device/i$b;
.super Lcom/amazon/identity/auth/device/ke;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "b"
.end annotation


# instance fields
.field protected final aJ:Lcom/amazon/identity/auth/device/i$a;

.field protected final at:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

.field protected final s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;


# direct methods
.method public constructor <init>(Lcom/amazon/identity/auth/device/i$a;)V
    .locals 0

    .line 172
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/ke;-><init>()V

    .line 173
    iput-object p1, p0, Lcom/amazon/identity/auth/device/i$b;->aJ:Lcom/amazon/identity/auth/device/i$a;

    const/4 p1, 0x0

    .line 174
    iput-object p1, p0, Lcom/amazon/identity/auth/device/i$b;->at:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    .line 175
    iput-object p1, p0, Lcom/amazon/identity/auth/device/i$b;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/device/i$a;Lcom/amazon/identity/auth/device/api/MAPAccountManager;)V
    .locals 0

    .line 180
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/ke;-><init>()V

    .line 181
    iput-object p1, p0, Lcom/amazon/identity/auth/device/i$b;->aJ:Lcom/amazon/identity/auth/device/i$a;

    .line 182
    iput-object p2, p0, Lcom/amazon/identity/auth/device/i$b;->at:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    const/4 p1, 0x0

    .line 183
    iput-object p1, p0, Lcom/amazon/identity/auth/device/i$b;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    return-void
.end method

.method private l()Landroid/os/Bundle;
    .locals 3

    .line 512
    iget-object v0, p0, Lcom/amazon/identity/auth/device/i$b;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/i$b;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 514
    iget-object v0, p0, Lcom/amazon/identity/auth/device/i$b;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->n()Ljava/lang/String;

    move-result-object v0

    .line 515
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 519
    :cond_0
    invoke-static {}, Lcom/amazon/identity/auth/device/fl;->eB()Lcom/amazon/identity/auth/device/fl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amazon/identity/auth/device/fl;->bR(Ljava/lang/String;)Lcom/amazon/identity/auth/device/fl;

    move-result-object v0

    const-string v1, "PrimaryAccountDeregisteredWhenRegisterSecondary"

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/fl;->bS(Ljava/lang/String;)Lcom/amazon/identity/auth/device/fl;

    move-result-object v0

    .line 520
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/fl;->eC()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method


# virtual methods
.method protected abstract a(Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;)V
.end method

.method public a(Ljava/lang/Object;)V
    .locals 18

    move-object/from16 v0, p0

    .line 238
    invoke-static {}, Lcom/amazon/identity/auth/device/i;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Receive response from server side of the registration request, parsing the response."

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    move-object/from16 v1, p1

    check-cast v1, Lcom/amazon/identity/auth/device/ky;

    if-nez v1, :cond_0

    .line 245
    iget-object v2, v0, Lcom/amazon/identity/auth/device/i$b;->aJ:Lcom/amazon/identity/auth/device/i$a;

    sget-object v3, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INVALID_RESPONSE:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object v5, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->UNRECOGNIZED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/4 v7, 0x0

    const-string v4, "Error occurred during registration. Received a null response"

    const-string v6, "Registration Error: Null response"

    invoke-interface/range {v2 .. v7}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 253
    :cond_0
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/ky;->hS()Lcom/amazon/identity/auth/device/kx;

    move-result-object v2

    const-string v3, "Registration Error: "

    if-eqz v2, :cond_3

    .line 255
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/ky;->hS()Lcom/amazon/identity/auth/device/kx;

    move-result-object v2

    .line 256
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/kx;->hB()Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->getErrorString()Ljava/lang/String;

    move-result-object v4

    .line 257
    invoke-static {}, Lcom/amazon/identity/auth/device/i;->access$000()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Error string: "

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/ky;->hZ()Lcom/amazon/identity/auth/device/jz;

    move-result-object v1

    const/4 v5, 0x0

    .line 262
    sget-object v6, Lcom/amazon/identity/auth/device/i$5;->aG:[I

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/kx;->hB()Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const-string v7, "Error occurred during registration. Authentication failed with message: %s"

    const-string v8, "Error occurred during registration. %s"

    const/4 v9, 0x1

    const/4 v10, 0x0

    packed-switch v6, :pswitch_data_0

    .line 470
    iget-object v12, v0, Lcom/amazon/identity/auth/device/i$b;->aJ:Lcom/amazon/identity/auth/device/i$a;

    sget-object v13, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INVALID_RESPONSE:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object v15, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->UNRECOGNIZED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/16 v17, 0x0

    const-string v14, "Error occurred during registration. Unrecognized response. If this is a 1st party Amazon device and it is not corrected from a retry, please verify that your device has been fulfilled."

    const-string v16, "Registration Error: Unrecognized response. If this is a 1st party Amazon device and is not corrected from a retry, please verify that your device has been fulfilled."

    invoke-interface/range {v12 .. v17}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 476
    invoke-static {}, Lcom/amazon/identity/auth/device/i;->access$000()Ljava/lang/String;

    invoke-static {}, Lcom/amazon/identity/auth/device/il;->gF()V

    goto/16 :goto_0

    .line 461
    :pswitch_0
    iget-object v11, v0, Lcom/amazon/identity/auth/device/i$b;->aJ:Lcom/amazon/identity/auth/device/i$a;

    sget-object v12, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    new-array v1, v9, [Ljava/lang/Object;

    aput-object v4, v1, v10

    .line 462
    invoke-static {v8, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    sget-object v14, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Registration error: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    .line 461
    invoke-interface/range {v11 .. v16}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 449
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/amazon/identity/auth/device/i$b;->l()Landroid/os/Bundle;

    move-result-object v1

    .line 452
    iget-object v5, v0, Lcom/amazon/identity/auth/device/i$b;->aJ:Lcom/amazon/identity/auth/device/i$a;

    sget-object v6, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->ACCOUNT_ALREADY_DEREGISTERED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v4, v7, v10

    .line 453
    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->ALREADY_DEREGISTERED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v1

    .line 452
    invoke-interface/range {v3 .. v8}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_2
    new-array v1, v10, [Ljava/lang/String;

    const-string v5, "PrimaryAccountDeregisteredWhenRegisterSecondaryWithPanda"

    .line 438
    invoke-static {v5, v1}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 439
    invoke-direct/range {p0 .. p0}, Lcom/amazon/identity/auth/device/i$b;->l()Landroid/os/Bundle;

    move-result-object v16

    .line 442
    iget-object v11, v0, Lcom/amazon/identity/auth/device/i$b;->aJ:Lcom/amazon/identity/auth/device/i$a;

    sget-object v12, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->ACCOUNT_ALREADY_DEREGISTERED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    new-array v1, v9, [Ljava/lang/Object;

    aput-object v4, v1, v10

    .line 443
    invoke-static {v8, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    sget-object v14, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->ALREADY_DEREGISTERED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 442
    invoke-interface/range {v11 .. v16}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 430
    :pswitch_3
    iget-object v1, v0, Lcom/amazon/identity/auth/device/i$b;->aJ:Lcom/amazon/identity/auth/device/i$a;

    sget-object v5, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->AUTHENTICATION_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v4, v6, v10

    .line 431
    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->AUTHENTICATION_FAILED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object v3, v1

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    .line 430
    invoke-interface/range {v3 .. v8}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 421
    :pswitch_4
    iget-object v1, v0, Lcom/amazon/identity/auth/device/i$b;->aJ:Lcom/amazon/identity/auth/device/i$a;

    sget-object v11, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->AUTHENTICATION_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v4, v5, v10

    .line 422
    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->AUTHENTICATION_FAILED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    move-object v10, v1

    .line 421
    invoke-interface/range {v10 .. v15}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 412
    :pswitch_5
    iget-object v3, v0, Lcom/amazon/identity/auth/device/i$b;->aJ:Lcom/amazon/identity/auth/device/i$a;

    sget-object v4, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->SERVICE_UNAVAILABLE:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object v6, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->UNRECOGNIZED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/4 v8, 0x0

    const-string v5, "Error occurred during registration. The service is temporarily overloaded or unavailable, try again later"

    const-string v7, "Registration Error: The service is temporarily overloaded or unavailable, try again later"

    invoke-interface/range {v3 .. v8}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 403
    :pswitch_6
    iget-object v9, v0, Lcom/amazon/identity/auth/device/i$b;->aJ:Lcom/amazon/identity/auth/device/i$a;

    sget-object v10, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object v12, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/4 v14, 0x0

    const-string v11, "Error occurred during registration. The device information is invalid."

    const-string v13, "Registration Error: The device information is invalid."

    invoke-interface/range {v9 .. v14}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 393
    :pswitch_7
    iget-object v3, v0, Lcom/amazon/identity/auth/device/i$b;->aJ:Lcom/amazon/identity/auth/device/i$a;

    sget-object v4, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object v6, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/4 v8, 0x0

    const-string v5, "Error occurred during registration. The directedId is invalid. Either the customer directedId is invalid, or the device directedId is invalid"

    const-string v7, "Registration Error: The directedId is invalid. e.g. The customer directedId is invalid. The device directedId is invalid"

    invoke-interface/range {v3 .. v8}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 383
    :pswitch_8
    iget-object v9, v0, Lcom/amazon/identity/auth/device/i$b;->aJ:Lcom/amazon/identity/auth/device/i$a;

    sget-object v10, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->FEATURE_NOT_IMPLEMENTED:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object v12, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->UNRECOGNIZED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/4 v14, 0x0

    const-string v11, "The feature has not been implemented yet"

    const-string v13, "MAP internal bug: The feature is not implemented"

    invoke-interface/range {v9 .. v14}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 373
    :pswitch_9
    iget-object v3, v0, Lcom/amazon/identity/auth/device/i$b;->aJ:Lcom/amazon/identity/auth/device/i$a;

    sget-object v4, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->SERVER_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object v6, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->UNRECOGNIZED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/4 v8, 0x0

    const-string v5, "Error occurred during registration. The server has encountered a runtime error, or the service is temporarily overloaded or unavailable, try again later"

    const-string v7, "Registration Error: The server has encountered a runtime error, or the service is temporarily overloaded or unavailable, try again later"

    invoke-interface/range {v3 .. v8}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 363
    :pswitch_a
    iget-object v9, v0, Lcom/amazon/identity/auth/device/i$b;->aJ:Lcom/amazon/identity/auth/device/i$a;

    sget-object v10, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->INVALID_HTTP_METHOD:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    sget-object v12, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->UNRECOGNIZED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/4 v14, 0x0

    const-string v11, "The HTTP method is not valid. For example, using POST instead of GET"

    const-string v13, "MAP internal bug: The HTTP method is not valid. For example, using POST instead of GET"

    invoke-interface/range {v9 .. v14}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 353
    :pswitch_b
    iget-object v3, v0, Lcom/amazon/identity/auth/device/i$b;->aJ:Lcom/amazon/identity/auth/device/i$a;

    sget-object v4, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->UNSUPPORTED_PROTOCOL:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    sget-object v6, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->UNRECOGNIZED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/4 v8, 0x0

    const-string v5, "Protocol not supported. SSL required"

    const-string v7, "MAP internal bug: The Protocol is not supported. SSL required"

    invoke-interface/range {v3 .. v8}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 343
    :pswitch_c
    iget-object v9, v0, Lcom/amazon/identity/auth/device/i$b;->aJ:Lcom/amazon/identity/auth/device/i$a;

    sget-object v10, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object v12, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/4 v14, 0x0

    const-string v11, "Error occurred during registration. One or more required values are invalid"

    const-string v13, "Registration Error: One or more required values are invalid"

    invoke-interface/range {v9 .. v14}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 333
    :pswitch_d
    iget-object v3, v0, Lcom/amazon/identity/auth/device/i$b;->aJ:Lcom/amazon/identity/auth/device/i$a;

    sget-object v4, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object v6, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/4 v8, 0x0

    const-string v5, "One or more required values are missing"

    const-string v7, "MAP internal bug: One or more required values are missing"

    invoke-interface/range {v3 .. v8}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 305
    :pswitch_e
    invoke-static {}, Lcom/amazon/identity/auth/device/i;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Registration Error: Challenge Response Received"

    invoke-static {v3, v4}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_1

    .line 311
    iget-object v5, v0, Lcom/amazon/identity/auth/device/i$b;->aJ:Lcom/amazon/identity/auth/device/i$a;

    sget-object v6, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->MISSING_CHALLENGE_EXCEPTION:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    sget-object v8, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->UNRECOGNIZED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/4 v10, 0x0

    const-string v7, "Error occurred during registration. Challenge Exception was missing."

    const-string v9, "Registration Error: Unknown. Challenge Exception was missing."

    invoke-interface/range {v5 .. v10}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 319
    :cond_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 320
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/jz;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "com.amazon.identity.auth.ChallengeException"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 323
    iget-object v11, v0, Lcom/amazon/identity/auth/device/i$b;->aJ:Lcom/amazon/identity/auth/device/i$a;

    sget-object v12, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->AUTHENTICATION_CHALLENGED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    .line 324
    invoke-virtual {v12}, Lcom/amazon/identity/auth/device/api/MAPError;->getErrorMessage()Ljava/lang/String;

    move-result-object v13

    sget-object v14, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->AUTHENTICATION_CHALLENGED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/4 v15, 0x0

    move-object/from16 v16, v3

    .line 323
    invoke-interface/range {v11 .. v16}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 297
    :pswitch_f
    iget-object v4, v0, Lcom/amazon/identity/auth/device/i$b;->aJ:Lcom/amazon/identity/auth/device/i$a;

    sget-object v5, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->DUPLICATE_DEVICE_NAME:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    sget-object v7, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->DUPLICATE_DEVICE_NAME:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/4 v9, 0x0

    const-string v6, "Error occurred during registration. Duplicate device name"

    const-string v8, "Registration Error: Duplicate device name"

    invoke-interface/range {v4 .. v9}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 287
    :pswitch_10
    iget-object v10, v0, Lcom/amazon/identity/auth/device/i$b;->aJ:Lcom/amazon/identity/auth/device/i$a;

    sget-object v11, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->DEVICE_ALREADY_REGISTERED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    sget-object v13, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->DEVICE_ALREADY_REGISTERED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/4 v15, 0x0

    const-string v12, "Error occurred during registration. Device already registered"

    const-string v14, "Registration Error: Device already registered"

    invoke-interface/range {v10 .. v15}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_11
    if-eqz v1, :cond_2

    .line 268
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/jz;->hl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 271
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 272
    invoke-virtual {v1, v5}, Lcom/amazon/identity/auth/device/jz;->N(Landroid/os/Bundle;)V

    :cond_2
    move-object v11, v5

    .line 277
    iget-object v6, v0, Lcom/amazon/identity/auth/device/i$b;->aJ:Lcom/amazon/identity/auth/device/i$a;

    sget-object v7, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->CUSTOMER_NOT_FOUND:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    sget-object v9, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->CUSTOMER_NOT_FOUND:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const-string v8, "Error occurred during registration. Customer not found. Invalid credentials."

    const-string v10, "Registration Error: Customer not found. Invalid credentials."

    invoke-interface/range {v6 .. v11}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 483
    :goto_0
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/kx;->hB()Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/i$b;->a(Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;)V

    return-void

    .line 487
    :cond_3
    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/i$b;->b(Lcom/amazon/identity/auth/device/ky;)Lcom/amazon/identity/auth/device/i$c;

    move-result-object v1

    .line 489
    iget-object v7, v1, Lcom/amazon/identity/auth/device/i$c;->mLegacyError:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    if-nez v7, :cond_4

    .line 491
    iget-object v2, v0, Lcom/amazon/identity/auth/device/i$b;->aJ:Lcom/amazon/identity/auth/device/i$a;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/i$c;->getDirectedId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/i$c;->getUserName()Ljava/lang/String;

    move-result-object v4

    iget-object v1, v1, Lcom/amazon/identity/auth/device/i$c;->l:Landroid/os/Bundle;

    invoke-interface {v2, v3, v4, v1}, Lcom/amazon/identity/auth/device/i$a;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 497
    :cond_4
    iget-object v4, v0, Lcom/amazon/identity/auth/device/i$b;->aJ:Lcom/amazon/identity/auth/device/i$a;

    iget-object v5, v1, Lcom/amazon/identity/auth/device/i$c;->mError:Lcom/amazon/identity/auth/device/api/MAPError;

    iget-object v6, v1, Lcom/amazon/identity/auth/device/i$c;->mErrorMessage:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/amazon/identity/auth/device/i$c;->mLegacyError:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface/range {v4 .. v9}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected abstract b(Lcom/amazon/identity/auth/device/ky;)Lcom/amazon/identity/auth/device/i$c;
.end method

.method protected abstract i()Z
.end method

.method public j()V
    .locals 8

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "NetworkError4:AccountRegistrar"

    .line 200
    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 204
    iget-object v2, p0, Lcom/amazon/identity/auth/device/i$b;->aJ:Lcom/amazon/identity/auth/device/i$a;

    sget-object v3, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->NETWORK_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object v5, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->NETWORK_FAILURE:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const-string v4, "Network failure occurred while performing registration request"

    const-string v6, "Network failure performing registration request"

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public k()V
    .locals 6

    .line 228
    iget-object v0, p0, Lcom/amazon/identity/auth/device/i$b;->aJ:Lcom/amazon/identity/auth/device/i$a;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->PARSE_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object v3, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->PARSE_ERROR:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const-string v2, "Parsing failure occurred while performing registration request"

    const-string v4, "Parsing failure performing registration request"

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 6

    .line 216
    iget-object v0, p0, Lcom/amazon/identity/auth/device/i$b;->aJ:Lcom/amazon/identity/auth/device/i$a;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->AUTHENTICATION_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    sget-object v3, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->AUTHENTICATION_FAILED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const-string v2, "Authentication failure occurred while performing registration request"

    const-string v4, "Authentication failure performing registration request"

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
