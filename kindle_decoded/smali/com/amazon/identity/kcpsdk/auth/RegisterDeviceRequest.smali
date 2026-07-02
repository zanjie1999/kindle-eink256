.class public Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;
.super Lcom/amazon/identity/auth/device/ld;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$DeviceAccountRole;,
        Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$a;,
        Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$RegisterEndpointEnum;,
        Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "com.amazon.identity.kcpsdk.auth.RegisterDeviceRequest"


# instance fields
.field private bk:Ljava/lang/String;

.field private ef:Ljava/lang/String;

.field private mX:Ljava/lang/String;

.field private mY:Ljava/lang/String;

.field private o:Lcom/amazon/identity/auth/device/ed;

.field private qJ:Ljava/lang/String;

.field private sC:Ljava/lang/String;

.field private sI:Ljava/lang/String;

.field private sJ:Ljava/lang/String;

.field private sK:Ljava/lang/String;

.field private sL:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;

.field private sM:Landroid/os/Bundle;

.field private sN:Ljava/lang/String;

.field private sO:Ljava/lang/String;

.field private sP:Ljava/lang/String;

.field private sQ:Ljava/lang/String;

.field private sR:Ljava/lang/String;

.field private sS:Ljava/lang/String;

.field private sT:Ljava/lang/String;

.field private sU:Z

.field private sV:Z

.field private sW:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$DeviceAccountRole;

.field private sX:Z

.field private sY:Z

.field private sZ:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$RegisterEndpointEnum;

.field private sh:Ljava/lang/String;

.field private sk:Lcom/amazon/identity/auth/device/lz;

.field private sl:Ljava/lang/String;

.field private sm:Ljava/lang/String;

.field private sn:Ljava/lang/String;

.field private sp:Z

.field private ta:Ljava/lang/String;

.field private tb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/token/MAPCookie;",
            ">;"
        }
    .end annotation
.end field

.field private tc:Lorg/json/JSONObject;

.field private td:Ljava/lang/String;

.field private te:Ljava/lang/String;

.field private tf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/ly;",
            ">;"
        }
    .end annotation
.end field

.field private tg:Ljava/lang/String;

.field private th:Ljava/lang/String;

.field private ti:Ljava/lang/String;

.field private tj:Ljava/lang/String;

.field private tk:Ljava/lang/String;

.field private tl:Ljava/lang/String;

.field private tm:Ljava/lang/String;

.field private tn:Ljava/lang/String;

.field private to:Ljava/lang/String;

.field private tp:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$a;

.field private tq:Lcom/amazon/identity/auth/device/kz;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/device/ed;)V
    .locals 1

    .line 164
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;-><init>(Lcom/amazon/identity/auth/device/ed;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/device/ed;Landroid/os/Bundle;)V
    .locals 2

    .line 2182
    invoke-static {p1}, Lcom/amazon/identity/auth/device/mw;->f(Lcom/amazon/identity/auth/device/ed;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    const-string v1, "ignore_name_for_isolated_app"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2184
    sget-object p2, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->TAG:Ljava/lang/String;

    const-string v0, "Using special isolated app parser"

    invoke-static {p2, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 2185
    new-instance p2, Lcom/amazon/identity/auth/device/kz;

    new-instance v0, Lcom/amazon/identity/auth/device/lc;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/lc;-><init>()V

    invoke-direct {p2, v0}, Lcom/amazon/identity/auth/device/kz;-><init>(Lcom/amazon/identity/auth/device/kv;)V

    goto :goto_0

    .line 2189
    :cond_0
    new-instance p2, Lcom/amazon/identity/auth/device/kz;

    invoke-direct {p2}, Lcom/amazon/identity/auth/device/kz;-><init>()V

    .line 169
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;-><init>(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/kz;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/kz;)V
    .locals 2

    .line 174
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/ld;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sR:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sS:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sT:Ljava/lang/String;

    .line 77
    sget-object v1, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$DeviceAccountRole;->UNDEFINED:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$DeviceAccountRole;

    iput-object v1, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sW:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$DeviceAccountRole;

    const/4 v1, 0x0

    .line 82
    iput-boolean v1, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sY:Z

    .line 113
    iput-object v0, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->tl:Ljava/lang/String;

    .line 175
    sget-object v1, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;->AT_MAIN:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;

    iput-object v1, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sL:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;

    .line 176
    sget-object v1, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$RegisterEndpointEnum;->FIRS:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$RegisterEndpointEnum;

    iput-object v1, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sZ:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$RegisterEndpointEnum;

    .line 177
    iput-object v0, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->tf:Ljava/util/Map;

    .line 178
    iput-object p1, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->o:Lcom/amazon/identity/auth/device/ed;

    const/4 p1, 0x1

    .line 179
    iput-boolean p1, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sp:Z

    .line 180
    iput-object p2, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->tq:Lcom/amazon/identity/auth/device/kz;

    return-void
.end method

.method public static ef(Ljava/lang/String;)Z
    .locals 1

    .line 340
    invoke-static {p0}, Lcom/amazon/identity/auth/device/lx;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 342
    sget-object p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->TAG:Ljava/lang/String;

    const-string v0, "isValidCustomerAccountToken: returning false because a null or empty auth token was given"

    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private hH()Lcom/amazon/identity/auth/device/ma;
    .locals 15

    const-string/jumbo v0, "website_cookies"

    const-string v1, "domain"

    .line 603
    iget-object v2, p0, Lcom/amazon/identity/auth/device/ld;->rD:Lcom/amazon/identity/auth/device/ma;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sZ:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$RegisterEndpointEnum;

    sget-object v4, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$RegisterEndpointEnum;->Panda:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$RegisterEndpointEnum;

    if-ne v3, v4, :cond_0

    return-object v2

    .line 608
    :cond_0
    iget-object v2, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sL:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;

    sget-object v3, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;->AUTH_TOKEN:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    .line 610
    iget-object v2, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sK:Ljava/lang/String;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/lx;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->ta:Ljava/lang/String;

    .line 611
    invoke-static {v2}, Lcom/amazon/identity/auth/device/lx;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 613
    :cond_1
    sget-object v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->TAG:Ljava/lang/String;

    const-string v1, "Customer token or ClientContext is not set. Use MAPAccountManager.KEY_AUTH_TOKEN and MAPAccountManager.KEY_AUTH_TOKEN_CONTEXT to pass them in regData."

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 620
    :cond_2
    new-instance v2, Lcom/amazon/identity/auth/device/ma;

    invoke-direct {v2}, Lcom/amazon/identity/auth/device/ma;-><init>()V

    iput-object v2, p0, Lcom/amazon/identity/auth/device/ld;->rD:Lcom/amazon/identity/auth/device/ma;

    .line 621
    sget-object v3, Lcom/amazon/identity/kcpsdk/common/WebProtocol;->WebProtocolHttps:Lcom/amazon/identity/kcpsdk/common/WebProtocol;

    invoke-virtual {v2, v3}, Lcom/amazon/identity/auth/device/ma;->a(Lcom/amazon/identity/kcpsdk/common/WebProtocol;)V

    .line 622
    iget-object v2, p0, Lcom/amazon/identity/auth/device/ld;->rD:Lcom/amazon/identity/auth/device/ma;

    .line 5853
    invoke-static {}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->cc()Lcom/amazon/identity/auth/device/env/EnvironmentUtils;

    move-result-object v3

    iget-object v5, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sM:Landroid/os/Bundle;

    invoke-static {v5}, Lcom/amazon/identity/auth/device/ho;->F(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->getPandaHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 622
    invoke-virtual {v2, v3}, Lcom/amazon/identity/auth/device/ma;->setHost(Ljava/lang/String;)V

    .line 623
    iget-object v2, p0, Lcom/amazon/identity/auth/device/ld;->rD:Lcom/amazon/identity/auth/device/ma;

    sget-object v3, Lcom/amazon/identity/kcpsdk/common/HttpVerb;->HttpVerbPost:Lcom/amazon/identity/kcpsdk/common/HttpVerb;

    invoke-virtual {v2, v3}, Lcom/amazon/identity/auth/device/ma;->a(Lcom/amazon/identity/kcpsdk/common/HttpVerb;)V

    .line 624
    iget-object v2, p0, Lcom/amazon/identity/auth/device/ld;->rD:Lcom/amazon/identity/auth/device/ma;

    const-string v3, "Content-Type"

    const-string v5, "application/json"

    invoke-virtual {v2, v3, v5}, Lcom/amazon/identity/auth/device/ma;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    iget-object v2, p0, Lcom/amazon/identity/auth/device/ld;->rD:Lcom/amazon/identity/auth/device/ma;

    .line 627
    invoke-static {}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->cc()Lcom/amazon/identity/auth/device/env/EnvironmentUtils;

    move-result-object v3

    iget-object v5, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sM:Landroid/os/Bundle;

    invoke-virtual {v3, v5}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->x(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "x-amzn-identity-auth-domain"

    .line 626
    invoke-virtual {v2, v5, v3}, Lcom/amazon/identity/auth/device/ma;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    iget-object v2, p0, Lcom/amazon/identity/auth/device/ld;->rD:Lcom/amazon/identity/auth/device/ma;

    invoke-static {}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->cc()Lcom/amazon/identity/auth/device/env/EnvironmentUtils;

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/ma;->iH()V

    .line 629
    iget-object v2, p0, Lcom/amazon/identity/auth/device/ld;->rD:Lcom/amazon/identity/auth/device/ma;

    const-string v3, "/auth/register"

    invoke-virtual {v2, v3}, Lcom/amazon/identity/auth/device/ma;->setPath(Ljava/lang/String;)V

    .line 631
    iget-object v2, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sN:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 633
    iget-object v3, p0, Lcom/amazon/identity/auth/device/ld;->rD:Lcom/amazon/identity/auth/device/ma;

    const-string v5, "Accept-Language"

    invoke-virtual {v3, v5, v2}, Lcom/amazon/identity/auth/device/ma;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 638
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 639
    iget-boolean v6, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sp:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v7, "true"

    const-string/jumbo v8, "use_global_authentication"

    if-eqz v6, :cond_4

    .line 641
    :try_start_1
    invoke-virtual {v5, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_4
    const-string v6, "false"

    .line 645
    invoke-virtual {v5, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 648
    :goto_0
    iget-boolean v6, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sV:Z

    if-eqz v6, :cond_5

    .line 650
    iget-object v6, p0, Lcom/amazon/identity/auth/device/ld;->rD:Lcom/amazon/identity/auth/device/ma;

    const-string v8, "Authorization"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Bearer "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->tg:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/amazon/identity/auth/device/ma;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    :cond_5
    iget-object v6, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sT:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v8, "auth_token"

    const-string v9, "DeviceLegacy"

    if-nez v6, :cond_6

    :try_start_2
    const-string v6, "code"

    .line 655
    iget-object v10, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sT:Ljava/lang/String;

    invoke-virtual {v5, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 657
    :cond_6
    iget-object v6, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sS:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sR:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 659
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v10, "public_code"

    .line 660
    iget-object v11, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sR:Ljava/lang/String;

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v10, "private_code"

    .line 661
    iget-object v11, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sS:Ljava/lang/String;

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v10, "code_pair"

    .line 662
    invoke-virtual {v5, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 664
    :cond_7
    iget-object v6, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->tl:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->tm:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 666
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v10, "sso_code"

    .line 667
    iget-object v11, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->tl:Ljava/lang/String;

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v10, "register_directedId"

    .line 668
    iget-object v11, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->tm:Ljava/lang/String;

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v10, "host_device_type"

    .line 669
    iget-object v11, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->tn:Ljava/lang/String;

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v10, "host_device_serial"

    .line 670
    iget-object v11, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->to:Ljava/lang/String;

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v10, "sso_data"

    .line 671
    invoke-virtual {v5, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 673
    :cond_8
    iget-object v6, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->th:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string/jumbo v10, "user_id_password"

    const-string/jumbo v11, "user_id"

    const-string/jumbo v12, "password"

    if-nez v6, :cond_9

    :try_start_3
    iget-object v6, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->tk:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 675
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 676
    iget-object v13, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->th:Ljava/lang/String;

    invoke-virtual {v6, v11, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 677
    iget-object v11, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->tk:Ljava/lang/String;

    invoke-virtual {v6, v12, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 678
    invoke-virtual {v5, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 680
    :cond_9
    iget-object v6, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->ti:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v13, "directedId_password"

    const-string v14, "directedId"

    if-nez v6, :cond_b

    .line 682
    :try_start_4
    iget-object v6, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->tk:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 684
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 685
    iget-object v10, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->ti:Ljava/lang/String;

    invoke-virtual {v6, v14, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 686
    iget-object v10, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->tk:Ljava/lang/String;

    invoke-virtual {v6, v12, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 687
    invoke-virtual {v5, v13, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 692
    :cond_a
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 693
    iget-object v10, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->ti:Ljava/lang/String;

    invoke-virtual {v6, v14, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v10, "delegation_data"

    .line 694
    invoke-virtual {v5, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 697
    :cond_b
    iget-object v6, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sK:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sI:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    iget-object v6, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sh:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 699
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 700
    iget-object v13, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sI:Ljava/lang/String;

    invoke-virtual {v6, v11, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 701
    iget-object v11, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sh:Ljava/lang/String;

    invoke-virtual {v6, v12, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 702
    invoke-virtual {v5, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 704
    :cond_c
    iget-object v6, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sK:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sJ:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_d

    iget-object v6, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sh:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 706
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 707
    iget-object v10, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sJ:Ljava/lang/String;

    invoke-virtual {v6, v14, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 708
    iget-object v10, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sh:Ljava/lang/String;

    invoke-virtual {v6, v12, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 709
    invoke-virtual {v5, v13, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 711
    :cond_d
    iget-object v6, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sK:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->mX:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_e

    const-string v6, "authorization_code"

    .line 713
    iget-object v10, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->mX:Ljava/lang/String;

    invoke-virtual {v5, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "code_verifier"

    .line 714
    iget-object v10, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->mY:Ljava/lang/String;

    invoke-virtual {v5, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "code_algorithm"

    .line 715
    iget-object v10, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->qJ:Ljava/lang/String;

    invoke-virtual {v5, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "client_domain"

    .line 716
    invoke-virtual {v5, v6, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "client_id"

    .line 717
    iget-object v10, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->ef:Ljava/lang/String;

    invoke-virtual {v5, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 719
    :cond_e
    iget-object v6, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sL:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;

    sget-object v10, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;->ACCESS_TOKEN:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;

    if-ne v6, v10, :cond_f

    const-string v6, "access_token"

    .line 721
    iget-object v10, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sK:Ljava/lang/String;

    invoke-virtual {v5, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 723
    :cond_f
    iget-object v6, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sL:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;

    sget-object v10, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;->AUTH_TOKEN:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;

    if-ne v6, v10, :cond_10

    .line 725
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v10, "atmain"

    .line 726
    iget-object v11, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sK:Ljava/lang/String;

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v10, "client_context"

    .line 727
    iget-object v11, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->ta:Ljava/lang/String;

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v10, "max_age"

    const v11, 0x127500

    .line 728
    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 729
    invoke-virtual {v5, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 733
    :cond_10
    :goto_1
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 734
    invoke-virtual {v6, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "device_type"

    .line 735
    iget-object v10, p0, Lcom/amazon/identity/auth/device/ld;->bi:Ljava/lang/String;

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "device_serial"

    .line 736
    iget-object v10, p0, Lcom/amazon/identity/auth/device/ld;->sj:Ljava/lang/String;

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "app_name"

    .line 737
    iget-object v10, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sl:Ljava/lang/String;

    if-eqz v10, :cond_11

    iget-object v10, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sl:Ljava/lang/String;

    goto :goto_2

    :cond_11
    const-string v10, "defaultAppName"

    :goto_2
    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "app_version"

    .line 738
    iget-object v10, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sm:Ljava/lang/String;

    if-eqz v10, :cond_12

    iget-object v10, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sm:Ljava/lang/String;

    goto :goto_3

    :cond_12
    const-string v10, "defaultAppVersion"

    :goto_3
    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "device_model"

    .line 740
    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v9, "os_version"

    .line 741
    sget-object v10, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v9, "software_version"

    .line 742
    iget-object v10, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sk:Lcom/amazon/identity/auth/device/lz;

    if-eqz v10, :cond_13

    iget-object v10, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sk:Lcom/amazon/identity/auth/device/lz;

    .line 743
    invoke-virtual {v10}, Lcom/amazon/identity/auth/device/lz;->getString()Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    :cond_13
    const-string v10, "defaultSoftwareVersion"

    .line 742
    :goto_4
    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 749
    iget-object v9, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v9}, Lcom/amazon/identity/auth/device/mw;->f(Lcom/amazon/identity/auth/device/ed;)Z

    move-result v9

    if-nez v9, :cond_15

    .line 751
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ld;->id()Ljava/lang/String;

    move-result-object v9

    .line 752
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_14

    const-string v10, "device_authentication_token"

    .line 754
    invoke-virtual {v6, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 756
    :cond_14
    iget-object v9, p0, Lcom/amazon/identity/auth/device/ld;->tK:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_15

    .line 758
    sget-object v9, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Setting device secret: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/amazon/identity/auth/device/ld;->tK:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    const-string v9, "device_secret"

    .line 759
    iget-object v10, p0, Lcom/amazon/identity/auth/device/ld;->tK:Ljava/lang/String;

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 762
    :cond_15
    iget-object v9, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sC:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_16

    const-string v9, "device_name"

    .line 764
    iget-object v10, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sC:Ljava/lang/String;

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 766
    :cond_16
    iget-object v9, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->td:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_17

    const-string/jumbo v9, "preload_device_info"

    .line 768
    iget-object v10, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->td:Ljava/lang/String;

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 771
    :cond_17
    iget-object v9, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sk:Lcom/amazon/identity/auth/device/lz;

    if-nez v9, :cond_18

    .line 773
    sget-object v9, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->TAG:Ljava/lang/String;

    const-string v10, " software_version was undefined."

    invoke-static {v9, v10}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    :cond_18
    iget-object v9, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sW:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$DeviceAccountRole;

    sget-object v10, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$DeviceAccountRole;->PRIMARY:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$DeviceAccountRole;

    invoke-virtual {v9, v10}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_19

    const-string/jumbo v9, "register_as_primary"

    .line 778
    invoke-virtual {v6, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 782
    :cond_19
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    const-string v9, "bearer"

    .line 783
    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string/jumbo v9, "mac_dms"

    .line 784
    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string/jumbo v9, "store_authentication_cookie"

    .line 785
    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 786
    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 787
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 788
    invoke-virtual {p0}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->hJ()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 789
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 791
    iget-object v10, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->tb:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/amazon/identity/auth/device/token/MAPCookie;

    .line 793
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    const-string v13, "Name"

    .line 794
    invoke-virtual {v11}, Lcom/amazon/identity/auth/device/token/MAPCookie;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v13, "Value"

    .line 795
    invoke-virtual {v11}, Lcom/amazon/identity/auth/device/token/MAPCookie;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v13, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 796
    invoke-virtual {v1, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_5

    .line 798
    :cond_1a
    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 800
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const-string v1, "device_info"

    .line 801
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "customer_info"

    .line 802
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 804
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 805
    iget-object v10, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->tp:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$a;

    if-eqz v10, :cond_1b

    .line 807
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "country_of_residence"

    .line 808
    iget-object v10, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->tp:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$a;

    .line 6152
    iget-object v10, v10, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$a;->di:Ljava/lang/String;

    .line 808
    invoke-virtual {v5, v8, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "anonymous_data"

    .line 809
    invoke-virtual {v1, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_6

    .line 811
    :cond_1b
    iget-boolean v10, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sV:Z

    if-eqz v10, :cond_1c

    const-string/jumbo v8, "secondary_auth_data"

    .line 813
    invoke-virtual {v1, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_6

    .line 817
    :cond_1c
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v8, "auth_data"

    .line 818
    invoke-virtual {v1, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_6
    const-string/jumbo v5, "registration_data"

    .line 820
    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v5, "requested_token_type"

    .line 821
    invoke-virtual {v1, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "cookies"

    .line 822
    invoke-virtual {v1, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 824
    iget-object v5, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sn:Ljava/lang/String;

    invoke-static {v5, v1}, Lcom/amazon/identity/auth/device/fi;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 826
    iget-object v5, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->tc:Lorg/json/JSONObject;

    if-eqz v5, :cond_1d

    iget-object v5, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->tc:Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v5

    if-lez v5, :cond_1d

    const-string v5, "device_metadata"

    .line 828
    iget-object v6, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->tc:Lorg/json/JSONObject;

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1d
    const-string/jumbo v5, "requested_extensions"

    .line 831
    invoke-virtual {v1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 832
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ld;->rD:Lcom/amazon/identity/auth/device/ma;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/ma;->eJ(Ljava/lang/String;)V

    .line 834
    sget-object v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->TAG:Ljava/lang/String;

    const-string v1, "getWebRequest: constructed a web request with:\nDevice Type: %s\nIs Secondary Account: %s\nSoftware Version: %s\nLocale: %s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/amazon/identity/auth/device/ld;->bi:Ljava/lang/String;

    aput-object v6, v5, v2

    iget-boolean v6, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sV:Z

    .line 838
    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sk:Lcom/amazon/identity/auth/device/lz;

    if-nez v7, :cond_1e

    const-string v7, "None"

    goto :goto_7

    :cond_1e
    iget-object v7, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sk:Lcom/amazon/identity/auth/device/lz;

    .line 839
    invoke-virtual {v7}, Lcom/amazon/identity/auth/device/lz;->getString()Ljava/lang/String;

    move-result-object v7

    :goto_7
    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sN:Ljava/lang/String;

    if-nez v7, :cond_1f

    const-string v7, "Default"

    goto :goto_8

    :cond_1f
    iget-object v7, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sN:Ljava/lang/String;

    :goto_8
    aput-object v7, v5, v6

    .line 834
    invoke-static {v0, v1, v5}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 842
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ld;->rD:Lcom/amazon/identity/auth/device/ma;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 846
    sget-object v1, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->TAG:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    const-string v0, "Error Creating Panda web requst. Error: %s"

    invoke-static {v1, v0, v3}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v4
.end method


# virtual methods
.method public P(Landroid/os/Bundle;)V
    .locals 0

    if-nez p1, :cond_0

    .line 1091
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sM:Landroid/os/Bundle;

    return-void

    .line 1095
    :cond_0
    iput-object p1, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sM:Landroid/os/Bundle;

    return-void
.end method

.method public a(Lcom/amazon/identity/auth/device/lz;)V
    .locals 1

    .line 381
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/lz;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    sget-object p1, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "setDeviceSoftwareVersion: device software version is invalid. Cannot be set."

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 387
    :cond_0
    iput-object p1, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sk:Lcom/amazon/identity/auth/device/lz;

    return-void
.end method

.method public a(Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sL:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;

    return-void
.end method

.method public a(Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$RegisterEndpointEnum;)V
    .locals 0

    .line 428
    iput-object p1, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sZ:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$RegisterEndpointEnum;

    return-void
.end method

.method public a(Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$a;)V
    .locals 0

    .line 1171
    iput-object p1, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->tp:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$a;

    return-void
.end method

.method public a(ZLcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$DeviceAccountRole;)V
    .locals 0

    .line 365
    iput-boolean p1, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sV:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 366
    :cond_0
    sget-object p2, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$DeviceAccountRole;->UNDEFINED:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$DeviceAccountRole;

    :goto_0
    iput-object p2, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sW:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$DeviceAccountRole;

    return-void
.end method

.method public aV(Ljava/lang/String;)V
    .locals 0

    .line 1121
    iput-object p1, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->ta:Ljava/lang/String;

    return-void
.end method

.method public aW(Ljava/lang/String;)V
    .locals 0

    .line 508
    iput-object p1, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->ef:Ljava/lang/String;

    return-void
.end method

.method public at(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1165
    iput-object p1, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->tn:Ljava/lang/String;

    .line 1166
    iput-object p2, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->to:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 462
    iput-object p1, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sC:Ljava/lang/String;

    return-void
.end method

.method public dQ(Ljava/lang/String;)Z
    .locals 4

    .line 3278
    invoke-static {p1}, Lcom/amazon/identity/auth/device/lx;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3280
    sget-object v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->TAG:Ljava/lang/String;

    const-string v3, "isValidPassword: returning false because a null or empty password was given."

    invoke-static {v0, v3}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    .line 262
    sget-object p1, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "setPassword: login was invalid. Cannot be set."

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sK:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 268
    sget-object p1, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "setPassword: cannot specify both a password and an auth token. Cannot be set."

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 272
    :cond_2
    iput-object p1, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sh:Ljava/lang/String;

    return v1
.end method

.method public dT(Ljava/lang/String;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sl:Ljava/lang/String;

    return-void
.end method

.method public dU(Ljava/lang/String;)V
    .locals 0

    .line 438
    iput-object p1, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sm:Ljava/lang/String;

    return-void
.end method

.method public dW(Ljava/lang/String;)V
    .locals 1

    .line 1145
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1148
    sget-object v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 1150
    :cond_0
    iput-object p1, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sn:Ljava/lang/String;

    return-void
.end method

.method public dX(Ljava/lang/String;)Z
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sN:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method public dY(Ljava/lang/String;)Z
    .locals 4

    .line 2249
    invoke-static {p1}, Lcom/amazon/identity/auth/device/lx;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2251
    sget-object v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->TAG:Ljava/lang/String;

    const-string v3, "isValidLogin: returning false because a null or empty login was given."

    invoke-static {v0, v3}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    .line 205
    sget-object p1, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "setLogin: login was invalid. Cannot be set."

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sK:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 211
    sget-object p1, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "setLogin: cannot specify both a login and an auth token. Cannot be set."

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 215
    :cond_2
    iput-object p1, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sI:Ljava/lang/String;

    return v1
.end method

.method public dZ(Ljava/lang/String;)Z
    .locals 4

    .line 3238
    invoke-static {p1}, Lcom/amazon/identity/auth/device/lx;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3240
    sget-object v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->TAG:Ljava/lang/String;

    const-string v3, "isValidDirectedId: returning false because a null or empty directedId was given."

    invoke-static {v0, v3}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    .line 223
    sget-object p1, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "setPrimaryDirectedId: directed id was invalid. Cannot be set."

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sK:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 228
    sget-object p1, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "setPrimaryDirectedId: cannot specify both a directed id and an auth token. Cannot be set."

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 232
    :cond_2
    iput-object p1, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sJ:Ljava/lang/String;

    return v1
.end method

.method public ea(Ljava/lang/String;)Z
    .locals 2

    .line 289
    invoke-static {p1}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->ef(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 291
    sget-object p1, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "setCustomerAccountToken: password was invalid. Cannot be set."

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sI:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sh:Ljava/lang/String;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 302
    :cond_1
    iput-object p1, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sK:Ljava/lang/String;

    const/4 p1, 0x1

    return p1

    .line 297
    :cond_2
    :goto_0
    sget-object p1, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "setCustomerAccountToken: cannot specify both an auth token and a login/password. Cannot be set."

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public eb(Ljava/lang/String;)Z
    .locals 1

    .line 308
    invoke-static {p1}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->ef(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    sget-object p1, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "setmPrimaryToken: token is invalid. Cannot be set."

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 314
    :cond_0
    iput-object p1, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->tg:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method public ec(Ljava/lang/String;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->th:Ljava/lang/String;

    return-void
.end method

.method public ed(Ljava/lang/String;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->ti:Ljava/lang/String;

    return-void
.end method

.method public ee(Ljava/lang/String;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->tk:Ljava/lang/String;

    return-void
.end method

.method public eg(Ljava/lang/String;)V
    .locals 0

    .line 392
    iput-object p1, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->bk:Ljava/lang/String;

    return-void
.end method

.method public eh(Ljava/lang/String;)V
    .locals 0

    .line 457
    iput-object p1, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->td:Ljava/lang/String;

    return-void
.end method

.method public ei(Ljava/lang/String;)V
    .locals 0

    .line 467
    iput-object p1, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sR:Ljava/lang/String;

    return-void
.end method

.method public ej(Ljava/lang/String;)V
    .locals 0

    .line 472
    iput-object p1, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sT:Ljava/lang/String;

    return-void
.end method

.method public ek(Ljava/lang/String;)V
    .locals 0

    .line 477
    iput-object p1, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sS:Ljava/lang/String;

    return-void
.end method

.method public el(Ljava/lang/String;)V
    .locals 0

    .line 487
    iput-object p1, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->mX:Ljava/lang/String;

    return-void
.end method

.method public em(Ljava/lang/String;)V
    .locals 1

    .line 492
    iget-object v0, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->mX:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 494
    iput-object p1, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->mY:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public en(Ljava/lang/String;)V
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->mX:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 502
    iput-object p1, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->qJ:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public eo(Ljava/lang/String;)V
    .locals 0

    .line 1106
    iput-object p1, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->te:Ljava/lang/String;

    return-void
.end method

.method public ep(Ljava/lang/String;)V
    .locals 0

    .line 1155
    iput-object p1, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->tl:Ljava/lang/String;

    return-void
.end method

.method public eq(Ljava/lang/String;)V
    .locals 0

    .line 1160
    iput-object p1, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->tm:Ljava/lang/String;

    return-void
.end method

.method public hC()Z
    .locals 1

    .line 355
    iget-boolean v0, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sV:Z

    return v0
.end method

.method public hD()V
    .locals 2

    .line 360
    sget-object v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$DeviceAccountRole;->UNDEFINED:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$DeviceAccountRole;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->a(ZLcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$DeviceAccountRole;)V

    return-void
.end method

.method public hE()V
    .locals 1

    const/4 v0, 0x1

    .line 371
    iput-boolean v0, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sX:Z

    return-void
.end method

.method public hF()V
    .locals 1

    const/4 v0, 0x1

    .line 397
    iput-boolean v0, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sU:Z

    return-void
.end method

.method public hG()V
    .locals 1

    const/4 v0, 0x1

    .line 408
    iput-boolean v0, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sY:Z

    return-void
.end method

.method protected hI()Lcom/amazon/identity/auth/device/ln;
    .locals 1

    .line 7054
    new-instance v0, Lcom/amazon/identity/auth/device/ln;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/ln;-><init>()V

    return-object v0
.end method

.method public hJ()Ljava/lang/String;
    .locals 1

    .line 1101
    iget-object v0, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->te:Ljava/lang/String;

    return-object v0
.end method

.method public hK()Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$RegisterEndpointEnum;
    .locals 1

    .line 1111
    iget-object v0, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sZ:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$RegisterEndpointEnum;

    return-object v0
.end method

.method public hL()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1135
    invoke-static {}, Lcom/amazon/identity/auth/device/js;->hc()Lorg/json/JSONObject;

    move-result-object v0

    .line 1136
    iget-object v1, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sK:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1138
    iget-object v1, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sK:Ljava/lang/String;

    const-string v2, "access_token"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-object v0
.end method

.method public hM()Lcom/amazon/identity/auth/device/kz;
    .locals 1

    .line 1176
    iget-object v0, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->tq:Lcom/amazon/identity/auth/device/kz;

    return-object v0
.end method

.method public hq()Lcom/amazon/identity/auth/device/ma;
    .locals 13

    .line 577
    invoke-virtual {p0}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->isValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 579
    sget-object v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->TAG:Ljava/lang/String;

    const-string v2, "getWebRequest: Cannot construct a WebRequest because the RegisterDeviceRequest is invalid. (See previous warnings from RegisterDeviceRequest::isValid for details.)"

    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sZ:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$RegisterEndpointEnum;

    sget-object v2, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$RegisterEndpointEnum;->FIRS:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$RegisterEndpointEnum;

    if-ne v0, v2, :cond_1d

    .line 3858
    iget-object v3, p0, Lcom/amazon/identity/auth/device/ld;->rD:Lcom/amazon/identity/auth/device/ma;

    if-eqz v3, :cond_1

    if-ne v0, v2, :cond_1

    return-object v3

    .line 3870
    :cond_1
    new-instance v0, Lcom/amazon/identity/auth/device/ma;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/ma;-><init>()V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/ld;->rD:Lcom/amazon/identity/auth/device/ma;

    .line 3871
    sget-object v2, Lcom/amazon/identity/kcpsdk/common/WebProtocol;->WebProtocolHttps:Lcom/amazon/identity/kcpsdk/common/WebProtocol;

    invoke-virtual {v0, v2}, Lcom/amazon/identity/auth/device/ma;->a(Lcom/amazon/identity/kcpsdk/common/WebProtocol;)V

    .line 3872
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ld;->rD:Lcom/amazon/identity/auth/device/ma;

    invoke-static {}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->cc()Lcom/amazon/identity/auth/device/env/EnvironmentUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->cl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/identity/auth/device/ma;->setHost(Ljava/lang/String;)V

    .line 3874
    iget-boolean v0, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sU:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sY:Z

    if-eqz v0, :cond_2

    .line 3876
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ld;->rD:Lcom/amazon/identity/auth/device/ma;

    const-string v4, "/FirsProxy/registerDeviceWithADPToken"

    invoke-virtual {v0, v4}, Lcom/amazon/identity/auth/device/ma;->setPath(Ljava/lang/String;)V

    .line 3877
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ld;->rD:Lcom/amazon/identity/auth/device/ma;

    invoke-virtual {v0, v3}, Lcom/amazon/identity/auth/device/ma;->m(Z)V

    goto :goto_0

    .line 3879
    :cond_2
    iget-boolean v0, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sU:Z

    if-eqz v0, :cond_3

    .line 3881
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ld;->rD:Lcom/amazon/identity/auth/device/ma;

    const-string v4, "/FirsProxy/registerAssociatedDevice"

    invoke-virtual {v0, v4}, Lcom/amazon/identity/auth/device/ma;->setPath(Ljava/lang/String;)V

    .line 3882
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ld;->rD:Lcom/amazon/identity/auth/device/ma;

    invoke-virtual {v0, v3}, Lcom/amazon/identity/auth/device/ma;->m(Z)V

    :goto_0
    const/4 v0, 0x0

    const/4 v4, 0x0

    goto :goto_4

    .line 3884
    :cond_3
    iget-object v0, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sK:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v4, "/FirsProxy/registerDeviceToSecondaryCustomer"

    if-nez v0, :cond_5

    .line 3888
    iget-boolean v0, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sV:Z

    if-eqz v0, :cond_4

    .line 3890
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ld;->rD:Lcom/amazon/identity/auth/device/ma;

    invoke-virtual {v0, v4}, Lcom/amazon/identity/auth/device/ma;->setPath(Ljava/lang/String;)V

    .line 3891
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ld;->rD:Lcom/amazon/identity/auth/device/ma;

    invoke-virtual {v0, v3}, Lcom/amazon/identity/auth/device/ma;->m(Z)V

    goto :goto_1

    .line 3895
    :cond_4
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ld;->rD:Lcom/amazon/identity/auth/device/ma;

    const-string v1, "/FirsProxy/registerDeviceWithToken"

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/ma;->setPath(Ljava/lang/String;)V

    .line 3896
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ld;->id()Ljava/lang/String;

    move-result-object v1

    :goto_1
    const/4 v0, 0x1

    goto :goto_3

    .line 3899
    :cond_5
    iget-boolean v0, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sX:Z

    if-eqz v0, :cond_6

    .line 3902
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ld;->rD:Lcom/amazon/identity/auth/device/ma;

    invoke-virtual {v0, v4}, Lcom/amazon/identity/auth/device/ma;->setPath(Ljava/lang/String;)V

    .line 3903
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ld;->rD:Lcom/amazon/identity/auth/device/ma;

    invoke-virtual {v0, v3}, Lcom/amazon/identity/auth/device/ma;->m(Z)V

    goto :goto_2

    .line 3907
    :cond_6
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ld;->rD:Lcom/amazon/identity/auth/device/ma;

    const-string v4, "/FirsProxy/registerDevice"

    invoke-virtual {v0, v4}, Lcom/amazon/identity/auth/device/ma;->setPath(Ljava/lang/String;)V

    :goto_2
    const/4 v0, 0x0

    :goto_3
    const/4 v4, 0x1

    .line 3911
    :goto_4
    iget-object v5, p0, Lcom/amazon/identity/auth/device/ld;->rD:Lcom/amazon/identity/auth/device/ma;

    sget-object v6, Lcom/amazon/identity/kcpsdk/common/HttpVerb;->HttpVerbPost:Lcom/amazon/identity/kcpsdk/common/HttpVerb;

    invoke-virtual {v5, v6}, Lcom/amazon/identity/auth/device/ma;->a(Lcom/amazon/identity/kcpsdk/common/HttpVerb;)V

    .line 3912
    iget-object v5, p0, Lcom/amazon/identity/auth/device/ld;->rD:Lcom/amazon/identity/auth/device/ma;

    const-string v6, "Content-Type"

    const-string/jumbo v7, "text/xml"

    invoke-virtual {v5, v6, v7}, Lcom/amazon/identity/auth/device/ma;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3913
    iget-object v5, p0, Lcom/amazon/identity/auth/device/ld;->rD:Lcom/amazon/identity/auth/device/ma;

    const-string v6, "Expect"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lcom/amazon/identity/auth/device/ma;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3915
    iget-object v5, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sN:Ljava/lang/String;

    if-eqz v5, :cond_7

    .line 3917
    iget-object v6, p0, Lcom/amazon/identity/auth/device/ld;->rD:Lcom/amazon/identity/auth/device/ma;

    const-string v7, "Accept-Language"

    invoke-virtual {v6, v7, v5}, Lcom/amazon/identity/auth/device/ma;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3920
    :cond_7
    new-instance v5, Lcom/amazon/identity/auth/device/mf;

    new-array v6, v2, [Lcom/amazon/identity/auth/device/mg;

    const-string/jumbo v7, "request"

    invoke-direct {v5, v7, v6}, Lcom/amazon/identity/auth/device/mf;-><init>(Ljava/lang/String;[Lcom/amazon/identity/auth/device/mg;)V

    .line 3921
    new-instance v6, Lcom/amazon/identity/auth/device/mf;

    const/4 v7, 0x3

    new-array v8, v7, [Lcom/amazon/identity/auth/device/mg;

    new-instance v9, Lcom/amazon/identity/auth/device/mf;

    iget-object v10, p0, Lcom/amazon/identity/auth/device/ld;->bi:Ljava/lang/String;

    new-array v11, v2, [Lcom/amazon/identity/auth/device/mc;

    const-string v12, "deviceType"

    invoke-direct {v9, v12, v10, v11}, Lcom/amazon/identity/auth/device/mf;-><init>(Ljava/lang/String;Ljava/lang/String;[Lcom/amazon/identity/auth/device/mc;)V

    aput-object v9, v8, v2

    new-instance v9, Lcom/amazon/identity/auth/device/mf;

    iget-object v10, p0, Lcom/amazon/identity/auth/device/ld;->sj:Ljava/lang/String;

    new-array v11, v2, [Lcom/amazon/identity/auth/device/mc;

    const-string v12, "deviceSerialNumber"

    invoke-direct {v9, v12, v10, v11}, Lcom/amazon/identity/auth/device/mf;-><init>(Ljava/lang/String;Ljava/lang/String;[Lcom/amazon/identity/auth/device/mc;)V

    aput-object v9, v8, v3

    new-instance v9, Lcom/amazon/identity/auth/device/mf;

    iget-object v10, p0, Lcom/amazon/identity/auth/device/ld;->tJ:Ljava/lang/String;

    new-array v11, v2, [Lcom/amazon/identity/auth/device/mc;

    const-string/jumbo v12, "pid"

    invoke-direct {v9, v12, v10, v11}, Lcom/amazon/identity/auth/device/mf;-><init>(Ljava/lang/String;Ljava/lang/String;[Lcom/amazon/identity/auth/device/mc;)V

    const/4 v10, 0x2

    aput-object v9, v8, v10

    const-string/jumbo v9, "parameters"

    invoke-direct {v6, v9, v8}, Lcom/amazon/identity/auth/device/mf;-><init>(Ljava/lang/String;[Lcom/amazon/identity/auth/device/mg;)V

    .line 3926
    iget-object v8, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sC:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 3928
    iget-object v8, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sC:Ljava/lang/String;

    const-string v9, "deviceName"

    invoke-virtual {v6, v9, v8}, Lcom/amazon/identity/auth/device/mf;->ax(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/mf;

    .line 3931
    :cond_8
    invoke-virtual {v5, v6}, Lcom/amazon/identity/auth/device/mf;->a(Lcom/amazon/identity/auth/device/mg;)Z

    .line 3933
    iget-boolean v8, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sU:Z

    if-eqz v8, :cond_a

    .line 3937
    iget-boolean v8, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sV:Z

    if-eqz v8, :cond_9

    const-string v8, "false"

    goto :goto_5

    :cond_9
    const-string/jumbo v8, "true"

    :goto_5
    const-string v9, "deregisterExisting"

    invoke-virtual {v6, v9, v8}, Lcom/amazon/identity/auth/device/mf;->ax(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/mf;

    goto :goto_6

    .line 3941
    :cond_a
    iget-object v8, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sK:Ljava/lang/String;

    if-nez v8, :cond_b

    iget-boolean v8, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sX:Z

    if-nez v8, :cond_b

    .line 3943
    iget-object v8, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sI:Ljava/lang/String;

    const-string v9, "email"

    invoke-virtual {v6, v9, v8}, Lcom/amazon/identity/auth/device/mf;->ax(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/mf;

    .line 3944
    iget-object v8, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sh:Ljava/lang/String;

    const-string/jumbo v9, "password"

    invoke-virtual {v6, v9, v8}, Lcom/amazon/identity/auth/device/mf;->ax(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/mf;

    goto :goto_6

    .line 3946
    :cond_b
    iget-boolean v8, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sX:Z

    if-eqz v8, :cond_c

    .line 3950
    iget-object v8, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->ti:Ljava/lang/String;

    const-string v9, "directedId"

    invoke-virtual {v6, v9, v8}, Lcom/amazon/identity/auth/device/mf;->ax(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/mf;

    const-string v8, "customerType"

    const-string v9, "CHILD"

    .line 3952
    invoke-virtual {v6, v8, v9}, Lcom/amazon/identity/auth/device/mf;->ax(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/mf;

    .line 3955
    iget-object v8, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->tj:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_e

    .line 3957
    iget-object v8, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->tj:Ljava/lang/String;

    const-string/jumbo v9, "pfm"

    invoke-virtual {v6, v9, v8}, Lcom/amazon/identity/auth/device/mf;->ax(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/mf;

    goto :goto_6

    .line 3960
    :cond_c
    iget-boolean v8, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sV:Z

    if-eqz v8, :cond_d

    .line 3962
    iget-object v8, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sK:Ljava/lang/String;

    const-string/jumbo v9, "secondaryAccessToken"

    invoke-virtual {v6, v9, v8}, Lcom/amazon/identity/auth/device/mf;->ax(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/mf;

    .line 3963
    iget-object v8, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sL:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;

    invoke-virtual {v8}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;->getValue()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "secondaryAccessTokenType"

    invoke-virtual {v6, v9, v8}, Lcom/amazon/identity/auth/device/mf;->ax(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/mf;

    goto :goto_6

    .line 3967
    :cond_d
    iget-object v8, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sK:Ljava/lang/String;

    const-string v9, "authToken"

    invoke-virtual {v6, v9, v8}, Lcom/amazon/identity/auth/device/mf;->ax(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/mf;

    .line 3968
    iget-object v8, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sL:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;

    invoke-virtual {v8}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;->getValue()Ljava/lang/String;

    move-result-object v8

    const-string v9, "authTokenType"

    invoke-virtual {v6, v9, v8}, Lcom/amazon/identity/auth/device/mf;->ax(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/mf;

    .line 3972
    :cond_e
    :goto_6
    iget-object v8, p0, Lcom/amazon/identity/auth/device/ld;->tK:Ljava/lang/String;

    if-eqz v8, :cond_f

    const-string/jumbo v9, "secret"

    .line 3974
    invoke-virtual {v6, v9, v8}, Lcom/amazon/identity/auth/device/mf;->ax(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/mf;

    .line 3977
    :cond_f
    iget-object v8, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sk:Lcom/amazon/identity/auth/device/lz;

    if-eqz v8, :cond_10

    invoke-virtual {v8}, Lcom/amazon/identity/auth/device/lz;->isValid()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 3979
    iget-object v8, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sk:Lcom/amazon/identity/auth/device/lz;

    invoke-virtual {v8}, Lcom/amazon/identity/auth/device/lz;->getString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "softwareVersion"

    invoke-virtual {v6, v9, v8}, Lcom/amazon/identity/auth/device/mf;->ax(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/mf;

    goto :goto_7

    .line 3983
    :cond_10
    sget-object v8, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->TAG:Ljava/lang/String;

    const-string v9, " softwareVersion was undefined."

    invoke-static {v8, v9}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 3986
    :goto_7
    iget-object v8, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->bk:Ljava/lang/String;

    if-eqz v8, :cond_11

    const-string/jumbo v9, "softwareComponentId"

    .line 3988
    invoke-virtual {v6, v9, v8}, Lcom/amazon/identity/auth/device/mf;->ax(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/mf;

    .line 3991
    :cond_11
    iget-object v8, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sO:Ljava/lang/String;

    if-eqz v8, :cond_12

    iget-object v9, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sP:Ljava/lang/String;

    if-eqz v9, :cond_12

    iget-object v9, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sQ:Ljava/lang/String;

    if-eqz v9, :cond_12

    const-string/jumbo v9, "publicKeyData"

    .line 3993
    invoke-virtual {v6, v9, v8}, Lcom/amazon/identity/auth/device/mf;->ax(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/mf;

    .line 3994
    iget-object v8, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sP:Ljava/lang/String;

    const-string/jumbo v9, "publicKeyFormat"

    invoke-virtual {v6, v9, v8}, Lcom/amazon/identity/auth/device/mf;->ax(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/mf;

    .line 3995
    iget-object v8, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sQ:Ljava/lang/String;

    const-string/jumbo v9, "publicKeyAlgorithm"

    invoke-virtual {v6, v9, v8}, Lcom/amazon/identity/auth/device/mf;->ax(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/mf;

    :cond_12
    if-eqz v0, :cond_15

    .line 4067
    invoke-virtual {p0}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->hI()Lcom/amazon/identity/auth/device/ln;

    move-result-object v0

    .line 4068
    iget-object v8, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sK:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lcom/amazon/identity/auth/device/ln;->ez(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ln;

    move-result-object v8

    iget-object v9, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->te:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/amazon/identity/auth/device/ln;->eA(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ln;

    move-result-object v8

    iget-object v9, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sm:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/amazon/identity/auth/device/ln;->eC(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ln;

    move-result-object v8

    iget-object v9, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sl:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/amazon/identity/auth/device/ln;->eB(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ln;

    .line 4069
    iget-object v8, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->tb:Ljava/util/List;

    if-eqz v8, :cond_13

    .line 4071
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/amazon/identity/auth/device/token/MAPCookie;

    .line 4073
    invoke-virtual {v9}, Lcom/amazon/identity/auth/device/token/MAPCookie;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9}, Lcom/amazon/identity/auth/device/token/MAPCookie;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v11, v9}, Lcom/amazon/identity/auth/device/ln;->av(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ln;

    goto :goto_8

    .line 4076
    :cond_13
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ln;->in()Lcom/amazon/identity/auth/device/lm;

    move-result-object v0

    if-nez v0, :cond_14

    .line 4003
    sget-object v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->TAG:Ljava/lang/String;

    const-string v8, "Could not construct embeded Panda request."

    invoke-static {v0, v8}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 4007
    :cond_14
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/lm;->im()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4008
    sget-object v8, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "Including embedded panda request: "

    invoke-virtual {v11, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v8}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 4009
    new-instance v8, Lcom/amazon/identity/auth/device/md;

    invoke-direct {v8, v0}, Lcom/amazon/identity/auth/device/md;-><init>(Ljava/lang/String;)V

    .line 4010
    new-instance v0, Lcom/amazon/identity/auth/device/mf;

    new-array v9, v3, [Lcom/amazon/identity/auth/device/mg;

    aput-object v8, v9, v2

    const-string v8, "identityTokenRequest"

    invoke-direct {v0, v8, v9}, Lcom/amazon/identity/auth/device/mf;-><init>(Ljava/lang/String;[Lcom/amazon/identity/auth/device/mg;)V

    .line 4011
    invoke-virtual {v6, v0}, Lcom/amazon/identity/auth/device/mf;->a(Lcom/amazon/identity/auth/device/mg;)Z

    :cond_15
    :goto_9
    if-eqz v4, :cond_16

    .line 4017
    new-instance v0, Lcom/amazon/identity/auth/device/me;

    iget-object v4, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->tf:Ljava/util/Map;

    invoke-direct {v0, v4}, Lcom/amazon/identity/auth/device/me;-><init>(Ljava/util/Map;)V

    invoke-virtual {v5, v0}, Lcom/amazon/identity/auth/device/mf;->a(Lcom/amazon/identity/auth/device/mg;)Z

    .line 4020
    :cond_16
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 4022
    new-instance v0, Lcom/amazon/identity/auth/device/mf;

    new-array v4, v2, [Lcom/amazon/identity/auth/device/mc;

    const-string v8, "deviceRequestVerificationData"

    invoke-direct {v0, v8, v1, v4}, Lcom/amazon/identity/auth/device/mf;-><init>(Ljava/lang/String;Ljava/lang/String;[Lcom/amazon/identity/auth/device/mc;)V

    .line 4023
    invoke-virtual {v6, v0}, Lcom/amazon/identity/auth/device/mf;->a(Lcom/amazon/identity/auth/device/mg;)Z

    .line 4026
    :cond_17
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ld;->rD:Lcom/amazon/identity/auth/device/ma;

    invoke-virtual {v5}, Lcom/amazon/identity/auth/device/mf;->iJ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/ma;->eJ(Ljava/lang/String;)V

    .line 4027
    sget-object v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->TAG:Ljava/lang/String;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/amazon/identity/auth/device/ld;->bi:Ljava/lang/String;

    aput-object v4, v1, v2

    iget-boolean v4, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sV:Z

    .line 4032
    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    iget-object v4, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sk:Lcom/amazon/identity/auth/device/lz;

    const-string v5, "None"

    if-nez v4, :cond_18

    move-object v4, v5

    goto :goto_a

    .line 4033
    :cond_18
    invoke-virtual {v4}, Lcom/amazon/identity/auth/device/lz;->getString()Ljava/lang/String;

    move-result-object v4

    :goto_a
    aput-object v4, v1, v10

    iget-object v4, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->bk:Ljava/lang/String;

    if-nez v4, :cond_19

    goto :goto_b

    :cond_19
    move-object v5, v4

    :goto_b
    aput-object v5, v1, v7

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sN:Ljava/lang/String;

    if-nez v5, :cond_1a

    const-string v5, "Default"

    :cond_1a
    aput-object v5, v1, v4

    const-string v4, "getWebRequest: constructed a web request with:\nDevice Type: %s\nIs Secondary Account: %s\nSoftware Version: %s\nSoftware Component Id: %s\nLocale: %s"

    .line 4027
    invoke-static {v0, v4, v1}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5050
    iget-object v0, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sO:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 5052
    sget-object v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    goto :goto_c

    :cond_1b
    new-array v0, v7, [Ljava/lang/Object;

    .line 5056
    iget-object v1, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sO:Ljava/lang/String;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sP:Ljava/lang/String;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sQ:Ljava/lang/String;

    aput-object v1, v0, v10

    const-string v1, "getWebRequest: constructed a web request with self generated public key:\nPublic Key: %s\nPublic Key Format: %s\nPublic Key Algo: %s"

    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/il;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_c
    new-array v0, v7, [Ljava/lang/Object;

    .line 4039
    iget-object v1, p0, Lcom/amazon/identity/auth/device/ld;->sj:Ljava/lang/String;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sI:Ljava/lang/String;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/amazon/identity/auth/device/ld;->tK:Ljava/lang/String;

    if-eqz v1, :cond_1c

    goto :goto_d

    :cond_1c
    const-string v1, "<No Secret>"

    :goto_d
    aput-object v1, v0, v10

    const-string v1, "Serial Number: %s\nLogin: %s\nSecret: %s"

    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/il;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4045
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ld;->rD:Lcom/amazon/identity/auth/device/ma;

    return-object v0

    .line 589
    :cond_1d
    sget-object v2, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$RegisterEndpointEnum;->Panda:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$RegisterEndpointEnum;

    if-ne v0, v2, :cond_1e

    .line 591
    invoke-direct {p0}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->hH()Lcom/amazon/identity/auth/device/ma;

    move-result-object v0

    return-object v0

    .line 595
    :cond_1e
    sget-object v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getWebRequest: Cannot construct a WebRequest because the RegisterEndpoint is unknown:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sZ:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$RegisterEndpointEnum;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public isValid()Z
    .locals 3

    .line 513
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ld;->bi:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 515
    sget-object v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->TAG:Ljava/lang/String;

    const-string v2, "isValid: returning false because a valid device type has not been set."

    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ld;->sj:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 521
    sget-object v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->TAG:Ljava/lang/String;

    const-string v2, "isValid: returning false because a valid serial number has not been set."

    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 525
    :cond_1
    iget-object v0, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sZ:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$RegisterEndpointEnum;

    if-nez v0, :cond_2

    .line 527
    sget-object v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->TAG:Ljava/lang/String;

    const-string v2, "isValid: returning false because a register endpoint has not been set."

    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 531
    :cond_2
    iget-object v0, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->tl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->tm:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->tn:Ljava/lang/String;

    .line 532
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->to:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    .line 538
    :cond_3
    iget-object v0, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sT:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sR:Ljava/lang/String;

    .line 539
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sS:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    .line 545
    :cond_4
    iget-object v0, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->tp:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$a;

    if-eqz v0, :cond_5

    return v2

    .line 550
    :cond_5
    iget-object v0, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sI:Ljava/lang/String;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sK:Ljava/lang/String;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->th:Ljava/lang/String;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->ti:Ljava/lang/String;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sJ:Ljava/lang/String;

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sU:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->mX:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 553
    sget-object v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->TAG:Ljava/lang/String;

    const-string v2, "isValid: returning false because a valid login has not been set."

    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 557
    :cond_6
    iget-object v0, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sh:Ljava/lang/String;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sK:Ljava/lang/String;

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sU:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->tk:Ljava/lang/String;

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sX:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->mX:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 560
    sget-object v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->TAG:Ljava/lang/String;

    const-string v2, "isValid: returning false because a valid password has not been set."

    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 564
    :cond_7
    iget-object v0, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sK:Ljava/lang/String;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sI:Ljava/lang/String;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sh:Ljava/lang/String;

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sU:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->tg:Ljava/lang/String;

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sX:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->mX:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 567
    sget-object v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->TAG:Ljava/lang/String;

    const-string v2, "isValid: returning false because a valid auth token has not been set."

    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_8
    :goto_0
    return v2
.end method

.method public k(Z)V
    .locals 0

    .line 482
    iput-boolean p1, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->sp:Z

    return-void
.end method

.method public l(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/token/MAPCookie;",
            ">;)V"
        }
    .end annotation

    .line 1129
    iput-object p1, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->tb:Ljava/util/List;

    return-void
.end method

.method public m(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/ly;",
            ">;)V"
        }
    .end annotation

    .line 447
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->tf:Ljava/util/Map;

    return-void
.end method

.method public z(Lorg/json/JSONObject;)V
    .locals 0

    .line 452
    iput-object p1, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->tc:Lorg/json/JSONObject;

    return-void
.end method
