.class public Lcom/amazon/identity/auth/device/ap;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.ap"


# instance fields
.field private final F:Lcom/amazon/identity/auth/device/eh;

.field private final ar:Lcom/amazon/identity/auth/device/ea;

.field private final bO:Lcom/amazon/identity/auth/device/ej;

.field private final dw:Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;

.field private final dx:Lcom/amazon/identity/auth/device/dd;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ap;->mContext:Landroid/content/Context;

    .line 72
    new-instance v0, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;

    invoke-direct {v0, p1, p2}, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/ap;->dw:Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;

    const-string p2, "dcp_authenticated_url_connection_factory"

    .line 75
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/dd;

    iput-object p1, p0, Lcom/amazon/identity/auth/device/ap;->dx:Lcom/amazon/identity/auth/device/dd;

    .line 77
    iget-object p1, p0, Lcom/amazon/identity/auth/device/ap;->mContext:Landroid/content/Context;

    const-string p2, "dcp_device_info"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/ea;

    iput-object p1, p0, Lcom/amazon/identity/auth/device/ap;->ar:Lcom/amazon/identity/auth/device/ea;

    .line 79
    iput-object p3, p0, Lcom/amazon/identity/auth/device/ap;->bO:Lcom/amazon/identity/auth/device/ej;

    .line 81
    new-instance p1, Lcom/amazon/identity/auth/device/eh;

    invoke-direct {p1}, Lcom/amazon/identity/auth/device/eh;-><init>()V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/ap;->F:Lcom/amazon/identity/auth/device/eh;

    return-void
.end method

.method private aq()Ljava/net/URL;
    .locals 3

    .line 243
    :try_start_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "https"

    .line 244
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 245
    invoke-static {}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->cc()Lcom/amazon/identity/auth/device/env/EnvironmentUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->cm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "getCustomerAttribute"

    .line 246
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "version"

    const-string v2, "1_0"

    .line 247
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "preferences"

    const-string v2, "cor,pfm"

    .line 248
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "devicetype"

    iget-object v2, p0, Lcom/amazon/identity/auth/device/ap;->ar:Lcom/amazon/identity/auth/device/ea;

    .line 249
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/ea;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 258
    new-instance v1, Lcom/amazon/identity/auth/device/cq;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/ap;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/amazon/identity/auth/device/cq;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/amazon/identity/auth/device/cp;->a(Lcom/amazon/identity/auth/device/co;)Lcom/amazon/identity/auth/device/cp;

    move-result-object v1

    sget-object v2, Lcom/amazon/identity/auth/device/features/Feature;->DSNWhenNotRegistered:Lcom/amazon/identity/auth/device/features/Feature;

    invoke-virtual {v1, v2}, Lcom/amazon/identity/auth/device/cp;->a(Lcom/amazon/identity/auth/device/features/Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "dsn"

    .line 260
    iget-object v2, p0, Lcom/amazon/identity/auth/device/ap;->ar:Lcom/amazon/identity/auth/device/ea;

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/ea;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 263
    :cond_0
    new-instance v1, Ljava/net/URL;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 267
    :catch_0
    sget-object v0, Lcom/amazon/identity/auth/device/ap;->TAG:Ljava/lang/String;

    const-string v1, "Could not construct DCA endpoint"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method a(Ljava/net/HttpURLConnection;)Lcom/amazon/identity/auth/attributes/CORPFMResponse;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "cor"

    const-string v1, "fetchCORPFMFailure"

    const/4 v2, 0x0

    .line 166
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 167
    :try_start_1
    new-instance v4, Ljava/lang/String;

    invoke-static {v3}, Lcom/amazon/identity/auth/device/ja;->a(Ljava/io/InputStream;)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    .line 168
    sget-object v5, Lcom/amazon/identity/auth/device/ap;->TAG:Ljava/lang/String;

    const-string v6, "Response: "

    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v5}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 170
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "customerAttribute"

    .line 172
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v0, "Message"

    const-string v4, "Internal Error."

    .line 176
    invoke-static {v5, v0, v4}, Lcom/amazon/identity/auth/device/ih;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    sget-object v4, Lcom/amazon/identity/auth/device/ap;->TAG:Ljava/lang/String;

    const-string v5, "The server returned an error with message: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    invoke-static {v3}, Lcom/amazon/identity/auth/device/ja;->a(Ljava/io/Closeable;)V

    return-object v2

    .line 181
    :cond_0
    :try_start_2
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string/jumbo v6, "pfm"

    if-nez v5, :cond_1

    :try_start_3
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v0, "Description"

    const-string v5, "Generic Error. No COR or PFM found."

    .line 184
    invoke-static {v4, v0, v5}, Lcom/amazon/identity/auth/device/ih;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    sget-object v4, Lcom/amazon/identity/auth/device/ap;->TAG:Ljava/lang/String;

    const-string v5, "The server did not return a cor pfm for the customer. Message: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 233
    invoke-static {v3}, Lcom/amazon/identity/auth/device/ja;->a(Ljava/io/Closeable;)V

    return-object v2

    .line 190
    :cond_1
    :try_start_4
    invoke-static {v4, v0, v2}, Lcom/amazon/identity/auth/device/ih;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-static {v4, v6, v2}, Lcom/amazon/identity/auth/device/ih;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "sourceOfComputationCOR"

    .line 194
    invoke-static {v4, v6, v2}, Lcom/amazon/identity/auth/device/ih;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "sourceOfComputationPFM"

    .line 196
    invoke-static {v4, v7, v2}, Lcom/amazon/identity/auth/device/ih;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "computationConfidenceValue"

    .line 199
    invoke-static {v4, v8, v2}, Lcom/amazon/identity/auth/device/ih;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 201
    sget-object v8, Lcom/amazon/identity/auth/device/ap;->TAG:Ljava/lang/String;

    const-string v9, "Received response with: %nCoR: %s %nPFM:%s %nSource Of Computation CoR: %s %n Source Of Computation PFM: %s %n Computation Confidence Value: %s"

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const/4 v12, 0x1

    aput-object v5, v10, v12

    const/4 v12, 0x2

    aput-object v6, v10, v12

    const/4 v6, 0x3

    aput-object v7, v10, v6

    const/4 v6, 0x4

    aput-object v4, v10, v6

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    sget-object v6, Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;->CUSTOMER_PROVIDED:Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;

    .line 212
    invoke-static {v4, v6}, Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;->parseFromValue(Ljava/lang/String;Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;)Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;

    move-result-object v4

    const-string v6, "fetchCORPFMSuccess"

    new-array v7, v11, [Ljava/lang/String;

    .line 214
    invoke-static {v6, v7}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 215
    new-instance v6, Lcom/amazon/identity/auth/attributes/CORPFMResponse;

    iget-object v7, p0, Lcom/amazon/identity/auth/device/ap;->F:Lcom/amazon/identity/auth/device/eh;

    .line 218
    invoke-virtual {v7}, Lcom/amazon/identity/auth/device/eh;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {v6, v0, v5, v4, v7}, Lcom/amazon/identity/auth/attributes/CORPFMResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;Ljava/lang/Long;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 233
    invoke-static {v3}, Lcom/amazon/identity/auth/device/ja;->a(Ljava/io/Closeable;)V

    return-object v6

    :catchall_0
    move-exception p1

    move-object v2, v3

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v2, v3

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    move-object v3, v2

    :goto_0
    :try_start_5
    const-string v0, "JSONException"

    .line 228
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 229
    sget-object v0, Lcom/amazon/identity/auth/device/ap;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Error parsing DCAS JSON Response: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 233
    invoke-static {v3}, Lcom/amazon/identity/auth/device/ja;->a(Ljava/io/Closeable;)V

    return-object v2

    :catch_3
    move-exception v0

    :goto_1
    :try_start_6
    const-string v3, "IOException"

    .line 222
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "DCA service"

    .line 223
    invoke-static {p1, v1}, Lcom/amazon/identity/auth/device/cy;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    .line 224
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 233
    :goto_2
    invoke-static {v2}, Lcom/amazon/identity/auth/device/ja;->a(Ljava/io/Closeable;)V

    .line 234
    throw p1
.end method

.method public ap()Lcom/amazon/identity/auth/attributes/CORPFMResponse;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection$AccountNeedsRecoveryException;
        }
    .end annotation

    .line 103
    sget-object v0, Lcom/amazon/identity/auth/device/ap;->TAG:Ljava/lang/String;

    const-string v1, "Fetching the COR and PFM values"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/ap;->aq()Ljava/net/URL;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 114
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/amazon/identity/auth/device/ap;->dw:Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;

    sget-object v3, Lcom/amazon/identity/auth/device/api/AuthenticationType;->ADPAuthenticator:Lcom/amazon/identity/auth/device/api/AuthenticationType;

    .line 115
    invoke-virtual {v2, v3}, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;->newAuthenticationMethod(Lcom/amazon/identity/auth/device/api/AuthenticationType;)Lcom/amazon/identity/auth/device/api/AuthenticationMethod;

    move-result-object v2

    .line 117
    iget-object v3, p0, Lcom/amazon/identity/auth/device/ap;->bO:Lcom/amazon/identity/auth/device/ej;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/mm;->h(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazon/identity/auth/device/ej;->bz(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v3

    .line 118
    iget-object v4, p0, Lcom/amazon/identity/auth/device/ap;->dx:Lcom/amazon/identity/auth/device/dd;

    invoke-virtual {v4, v0, v2}, Lcom/amazon/identity/auth/device/dd;->openConnection(Ljava/net/URL;Lcom/amazon/identity/auth/device/api/AuthenticationMethod;)Ljava/net/HttpURLConnection;

    move-result-object v2
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection$AccountNeedsRecoveryException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v4, "GET"

    .line 119
    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v4, "Accept"

    const-string v5, "application/json"

    .line 120
    invoke-virtual {v2, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-static {v2}, Lcom/amazon/identity/auth/device/framework/RetryLogic;->d(Ljava/net/HttpURLConnection;)I

    move-result v4

    .line 123
    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/ms;->iO()V

    .line 124
    invoke-static {v0, v4}, Lcom/amazon/identity/auth/device/mm;->a(Ljava/net/URL;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/amazon/identity/auth/device/ms;->eN(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/ms;->stop()V

    .line 127
    sget-object v3, Lcom/amazon/identity/auth/device/ap;->TAG:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v6, "Received Response Code %d from DCAS"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v3, p0, Lcom/amazon/identity/auth/device/ap;->bO:Lcom/amazon/identity/auth/device/ej;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/mm;->j(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v4

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v3, v4, v5, v6}, Lcom/amazon/identity/auth/device/ej;->incrementCounter(Ljava/lang/String;D)V

    .line 131
    invoke-virtual {p0, v2}, Lcom/amazon/identity/auth/device/ap;->a(Ljava/net/HttpURLConnection;)Lcom/amazon/identity/auth/attributes/CORPFMResponse;

    move-result-object v0
    :try_end_1
    .catch Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection$AccountNeedsRecoveryException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_1

    .line 154
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    return-object v0

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v3

    move-object v2, v1

    .line 139
    :goto_0
    :try_start_2
    sget-object v4, Lcom/amazon/identity/auth/device/ap;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "IOException: Could not call DCAS Service. "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    sget-object v4, Lcom/amazon/identity/auth/device/ap;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "IOException: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/amazon/identity/auth/device/il;->dm(Ljava/lang/String;)V

    .line 142
    iget-object v4, p0, Lcom/amazon/identity/auth/device/ap;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/amazon/identity/auth/device/mm;->aN(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 144
    iget-object v4, p0, Lcom/amazon/identity/auth/device/ap;->bO:Lcom/amazon/identity/auth/device/ej;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/mm;->j(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/amazon/identity/auth/device/ej;->incrementCounter(Ljava/lang/String;D)V

    .line 146
    :cond_2
    iget-object v4, p0, Lcom/amazon/identity/auth/device/ap;->bO:Lcom/amazon/identity/auth/device/ej;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/mm;->i(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amazon/identity/auth/device/ej;->bA(Ljava/lang/String;)V

    .line 147
    iget-object v4, p0, Lcom/amazon/identity/auth/device/ap;->bO:Lcom/amazon/identity/auth/device/ej;

    iget-object v5, p0, Lcom/amazon/identity/auth/device/ap;->mContext:Landroid/content/Context;

    invoke-static {v0, v3, v5}, Lcom/amazon/identity/auth/device/mm;->a(Ljava/net/URL;Ljava/io/IOException;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amazon/identity/auth/device/ej;->bA(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_3

    .line 154
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    return-object v1

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catch_3
    move-exception v0

    .line 135
    :goto_1
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    if-eqz v1, :cond_4

    .line 154
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 156
    :cond_4
    throw v0
.end method
