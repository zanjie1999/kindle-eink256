.class public Lcom/amazon/identity/auth/device/n;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/n$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.n"

.field private static final aR:Lcom/amazon/identity/auth/device/n$a;


# instance fields
.field private final aS:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser;

.field private final o:Lcom/amazon/identity/auth/device/ed;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 99
    new-instance v0, Lcom/amazon/identity/auth/device/n$a;

    new-instance v7, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;

    sget-object v2, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->CredentialError:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    const-string v3, "Credential Error"

    const-string v4, "Credential Error"

    const-string v5, "Credential Error"

    const-string v6, "No Request Id"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;-><init>(Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v7}, Lcom/amazon/identity/auth/device/n$a;-><init>(Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;)V

    sput-object v0, Lcom/amazon/identity/auth/device/n;->aR:Lcom/amazon/identity/auth/device/n$a;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 111
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p1

    new-instance v0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazon/identity/auth/device/n;-><init>(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser;)V

    return-void
.end method

.method constructor <init>(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/amazon/identity/auth/device/n;->o:Lcom/amazon/identity/auth/device/ed;

    .line 118
    iput-object p2, p0, Lcom/amazon/identity/auth/device/n;->aS:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser;

    return-void
.end method

.method private b(Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/n$a;
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v0, "challenge"

    const-string/jumbo v3, "success"

    const-string/jumbo v4, "request_id"

    .line 201
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/amazon/identity/auth/device/n;->f(Landroid/os/Bundle;)Lcom/amazon/identity/auth/device/fq;

    move-result-object v5
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 220
    invoke-virtual {v5, v2}, Lcom/amazon/identity/auth/device/fn;->c(Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/fn$a;

    move-result-object v6

    .line 222
    iget-object v7, v6, Lcom/amazon/identity/auth/device/fn$a;->mO:Ljava/lang/Integer;

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v7, :cond_4

    .line 2255
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 2257
    sget-object v0, Lcom/amazon/identity/auth/device/n;->aR:Lcom/amazon/identity/auth/device/n$a;

    return-object v0

    .line 2259
    :cond_0
    iget-object v0, v6, Lcom/amazon/identity/auth/device/fn$a;->mO:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v10, :cond_1

    iget-object v0, v6, Lcom/amazon/identity/auth/device/fn$a;->mN:Ljava/lang/Exception;

    instance-of v0, v0, Ljava/io/IOException;

    if-eqz v0, :cond_1

    .line 2261
    sget-object v0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->ServiceUnavailable:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    :goto_0
    move-object v3, v0

    goto :goto_1

    .line 2263
    :cond_1
    iget-object v0, v6, Lcom/amazon/identity/auth/device/fn$a;->mO:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v9, :cond_2

    iget-object v0, v6, Lcom/amazon/identity/auth/device/fn$a;->mN:Ljava/lang/Exception;

    instance-of v0, v0, Ljava/io/IOException;

    if-eqz v0, :cond_2

    .line 2265
    sget-object v0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->NetworkFailure:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    goto :goto_0

    .line 2267
    :cond_2
    iget-object v0, v6, Lcom/amazon/identity/auth/device/fn$a;->mO:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v8, :cond_3

    .line 2269
    sget-object v0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->ParseError:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    goto :goto_0

    .line 2273
    :cond_3
    sget-object v0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->GenericError:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    goto :goto_0

    .line 2276
    :goto_1
    new-instance v0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v4, "Error getting response from server"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;-><init>(Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2278
    new-instance v2, Lcom/amazon/identity/auth/device/n$a;

    invoke-direct {v2, v0}, Lcom/amazon/identity/auth/device/n$a;-><init>(Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;)V

    return-object v2

    :cond_4
    const/4 v7, 0x0

    .line 2295
    :try_start_1
    iget-object v11, v6, Lcom/amazon/identity/auth/device/fn$a;->mL:Lorg/json/JSONObject;

    iget-object v12, v6, Lcom/amazon/identity/auth/device/fn$a;->mM:Ljava/lang/Integer;

    const/4 v13, 0x0

    if-nez v11, :cond_5

    .line 2304
    sget-object v0, Lcom/amazon/identity/auth/device/n;->TAG:Ljava/lang/String;

    const-string v3, "Error parsing JSON in Panda response"

    invoke-static {v0, v3}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 2305
    new-instance v0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;

    sget-object v15, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->ParseError:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    const-string v16, "Error parsing JSON in Panda response"

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v14, v0

    invoke-direct/range {v14 .. v19}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;-><init>(Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2306
    new-instance v3, Lcom/amazon/identity/auth/device/n$a;

    invoke-direct {v3, v0}, Lcom/amazon/identity/auth/device/n$a;-><init>(Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;)V

    goto/16 :goto_6

    .line 2309
    :cond_5
    invoke-static {v12}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser;->a(Ljava/lang/Integer;)Z

    move-result v12

    if-eqz v12, :cond_7

    iget-object v12, v1, Lcom/amazon/identity/auth/device/n;->aS:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser;

    .line 2310
    invoke-virtual {v12, v11}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser;->i(Lorg/json/JSONObject;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 2312
    iget-object v0, v1, Lcom/amazon/identity/auth/device/n;->aS:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser;

    invoke-virtual {v0, v11}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser;->g(Lorg/json/JSONObject;)Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;

    move-result-object v0

    if-eqz v0, :cond_6

    goto :goto_2

    .line 2313
    :cond_6
    sget-object v0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser;->iQ:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;

    .line 2315
    :goto_2
    sget-object v3, Lcom/amazon/identity/auth/device/n;->TAG:Ljava/lang/String;

    const-string v4, "Error making request. Code: %s \n Message: %s \n Detail: %s \n Index: %s"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    .line 2317
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;->cF()Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    move-result-object v12

    invoke-virtual {v12}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->getCode()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v7

    .line 2318
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v10

    .line 2319
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;->cG()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v9

    .line 2320
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;->cH()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v11, v8

    .line 2315
    invoke-static {v3, v4, v11}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2321
    new-instance v3, Lcom/amazon/identity/auth/device/n$a;

    invoke-direct {v3, v0}, Lcom/amazon/identity/auth/device/n$a;-><init>(Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;)V

    goto/16 :goto_6

    .line 2340
    :cond_7
    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2341
    sget-object v9, Lcom/amazon/identity/auth/device/n;->TAG:Ljava/lang/String;

    const-string v12, "Request to panda signin API with request id %s"

    new-array v14, v10, [Ljava/lang/Object;

    aput-object v8, v14, v7

    invoke-static {v12, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, "response"

    .line 2343
    invoke-virtual {v11, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 2345
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 2389
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "customer_id"

    .line 2390
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "tokens"

    .line 2391
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "bearer"

    .line 2392
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "access_token"

    .line 2393
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2395
    new-instance v4, Lcom/amazon/identity/auth/device/n$a;

    invoke-direct {v4, v0, v3}, Lcom/amazon/identity/auth/device/n$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    move-object v3, v4

    goto :goto_6

    .line 2349
    :cond_8
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 3364
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 3365
    invoke-static {v0}, Lcom/amazon/identity/auth/device/jz;->s(Lorg/json/JSONObject;)Lcom/amazon/identity/auth/device/jz;

    move-result-object v0

    .line 3366
    invoke-static {v8, v4, v13}, Lcom/amazon/identity/auth/device/ih;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 3367
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/jz;->getReason()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AuthenticationFailed"

    .line 3370
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "InvalidAuthenticationData"

    .line 3371
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_4

    .line 3380
    :cond_9
    new-instance v3, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;

    sget-object v15, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->AuthenticationChallenged:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v14, v3

    invoke-direct/range {v14 .. v19}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;-><init>(Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 3376
    :cond_a
    :goto_4
    new-instance v3, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;

    sget-object v15, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->CredentialError:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v14, v3

    invoke-direct/range {v14 .. v19}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;-><init>(Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3383
    :goto_5
    new-instance v4, Lcom/amazon/identity/auth/device/n$a;

    invoke-direct {v4, v0, v3}, Lcom/amazon/identity/auth/device/n$a;-><init>(Lcom/amazon/identity/auth/device/jz;Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;)V

    goto :goto_3

    .line 2356
    :cond_b
    sget-object v0, Lcom/amazon/identity/auth/device/n;->TAG:Ljava/lang/String;

    const-string v3, "Error parsing response. Empty response body."

    invoke-static {v0, v3}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 2357
    new-instance v0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;

    sget-object v15, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->ParseError:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    const-string v16, "Error parsing response. Empty response body."

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v14, v0

    invoke-direct/range {v14 .. v19}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;-><init>(Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2358
    new-instance v3, Lcom/amazon/identity/auth/device/n$a;

    invoke-direct {v3, v0}, Lcom/amazon/identity/auth/device/n$a;-><init>(Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;)V

    .line 232
    :goto_6
    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/n$a;->isError()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 234
    iget-object v0, v6, Lcom/amazon/identity/auth/device/fn$a;->mM:Ljava/lang/Integer;

    iget-object v4, v3, Lcom/amazon/identity/auth/device/n$a;->aV:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;

    invoke-virtual {v4}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;->cF()Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v0, v4}, Lcom/amazon/identity/auth/device/fn;->a(Ljava/lang/Integer;Ljava/lang/String;)V

    goto :goto_7

    .line 238
    :cond_c
    iget-object v0, v6, Lcom/amazon/identity/auth/device/fn$a;->mM:Ljava/lang/Integer;

    invoke-virtual {v5, v0, v13}, Lcom/amazon/identity/auth/device/fn;->a(Ljava/lang/Integer;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_7
    return-object v3

    :catch_0
    move-exception v0

    .line 245
    invoke-virtual {v5}, Lcom/amazon/identity/auth/device/fn;->eM()Ljava/net/URL;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/identity/auth/device/mm;->j(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/amazon/identity/auth/device/ej;->incrementCounter(Ljava/lang/String;D)V

    .line 4283
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v10, [Ljava/lang/Object;

    .line 4286
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    const-string v0, "Error parsing Panda sign-in response. Not of an expected format. Error: %s"

    .line 4284
    invoke-static {v2, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 4287
    sget-object v0, Lcom/amazon/identity/auth/device/n;->TAG:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 4288
    new-instance v0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;

    sget-object v5, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->ParseError:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;-><init>(Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4289
    new-instance v2, Lcom/amazon/identity/auth/device/n$a;

    invoke-direct {v2, v0}, Lcom/amazon/identity/auth/device/n$a;-><init>(Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;)V

    return-object v2

    .line 217
    :catch_1
    new-instance v0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;

    sget-object v4, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->GenericError:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v5, "MAP internally can\'t get access_token for authentication"

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;-><init>(Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    new-instance v2, Lcom/amazon/identity/auth/device/n$a;

    invoke-direct {v2, v0}, Lcom/amazon/identity/auth/device/n$a;-><init>(Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;)V

    return-object v2

    :catch_2
    move-exception v0

    move-object v2, v0

    .line 206
    invoke-static {v2}, Lcom/amazon/identity/auth/device/fl;->a(Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;)Lcom/amazon/identity/auth/device/fl;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 209
    new-instance v8, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;

    sget-object v3, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->InvalidToken:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v4, "MAP internally can\'t get access_token for authentication"

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;-><init>(Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    new-instance v2, Lcom/amazon/identity/auth/device/n$a;

    invoke-direct {v2, v8, v0}, Lcom/amazon/identity/auth/device/n$a;-><init>(Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;Lcom/amazon/identity/auth/device/fl;)V

    return-object v2

    .line 212
    :cond_d
    new-instance v0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;

    sget-object v10, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->GenericError:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v11, "MAP internally can\'t get access_token for authentication"

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;-><init>(Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    new-instance v2, Lcom/amazon/identity/auth/device/n$a;

    invoke-direct {v2, v0}, Lcom/amazon/identity/auth/device/n$a;-><init>(Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;)V

    return-object v2
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)Landroid/os/Bundle;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;
        }
    .end annotation

    const-string v0, "authAccount"

    .line 123
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "password"

    .line 124
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.amazon.dcp.sso.property.account.acctId"

    .line 125
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 127
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 135
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/n;->b(Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/n$a;

    move-result-object p1

    .line 137
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/n$a;->isError()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 139
    iget-object p2, p1, Lcom/amazon/identity/auth/device/n$a;->aV:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;

    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;->cF()Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    move-result-object p2

    .line 140
    iget-object v1, p1, Lcom/amazon/identity/auth/device/n$a;->aU:Lcom/amazon/identity/auth/device/jz;

    .line 141
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->getError()Lcom/amazon/identity/auth/device/api/MAPError;

    move-result-object v2

    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->getRegistrationError()Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v4

    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/amazon/identity/auth/device/m;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v1, :cond_2

    .line 144
    iget-object v3, p1, Lcom/amazon/identity/auth/device/n$a;->aV:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;

    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;->cF()Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    move-result-object v3

    sget-object v4, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->CredentialError:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    if-ne v3, v4, :cond_1

    .line 146
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/jz;->hl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v4, "auth_data_additional_info"

    .line 149
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_1
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/jz;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "com.amazon.identity.auth.ChallengeException"

    .line 152
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 155
    :cond_2
    iget-object p1, p1, Lcom/amazon/identity/auth/device/n$a;->aW:Lcom/amazon/identity/auth/device/fl;

    if-eqz p1, :cond_3

    .line 157
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/fl;->eC()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 159
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "PandaService:SignIn:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 162
    new-instance p1, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;

    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->getError()Lcom/amazon/identity/auth/device/api/MAPError;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v2, v0, p2}, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;-><init>(Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;)V

    throw p1

    :cond_4
    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "PandaService:SignIn:Success"

    .line 164
    invoke-static {v0, p2}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 165
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 166
    iget-object v0, p1, Lcom/amazon/identity/auth/device/n$a;->directedId:Ljava/lang/String;

    invoke-virtual {p2, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object p1, p1, Lcom/amazon/identity/auth/device/n$a;->aT:Ljava/lang/String;

    const-string v0, "com.amazon.dcp.sso.AddAccount.options.AccessToken"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 130
    :cond_5
    sget-object p1, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object p2, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result p2

    const-string v0, "A login/directedId and password are required to authenticate/confirmCredential."

    invoke-static {p1, v0, p2, v0}, Lcom/amazon/identity/auth/device/m;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 132
    new-instance p2, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    invoke-direct {p2, p1, v1, v0}, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;-><init>(Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;)V

    throw p2
.end method

.method protected f(Landroid/os/Bundle;)Lcom/amazon/identity/auth/device/fq;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "com.amazon.dcp.sso.token.oauth.amazon.access_token"

    const-string v1, "com.amazon.dcp.sso.property.account.acctId"

    .line 174
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1400
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "amzn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 179
    sget-object v2, Lcom/amazon/identity/auth/device/n;->TAG:Ljava/lang/String;

    const-string v3, "Legacy device with non-standard directed id."

    invoke-static {v2, v3}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    new-instance v2, Lcom/amazon/identity/auth/device/api/TokenManagement;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/n;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {v2, v3}, Lcom/amazon/identity/auth/device/api/TokenManagement;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    .line 183
    :try_start_0
    invoke-virtual {v2, v1, v0, v3, v3}, Lcom/amazon/identity/auth/device/api/TokenManagement;->getToken(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/identity/auth/device/api/MAPFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const-string/jumbo v2, "value_key"

    .line 184
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 189
    sget-object v0, Lcom/amazon/identity/auth/device/n;->TAG:Ljava/lang/String;

    const-string v1, "Can\'t get the access_token for authentication"

    invoke-static {v0, v1, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    throw p1

    .line 193
    :cond_2
    :goto_1
    new-instance v0, Lcom/amazon/identity/auth/device/fq;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/n;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {v0, p1, v1}, Lcom/amazon/identity/auth/device/fq;-><init>(Landroid/os/Bundle;Landroid/content/Context;)V

    return-object v0
.end method
