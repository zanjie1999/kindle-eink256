.class public Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor$PandaServiceException;,
        Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.dependency.PandaServiceAccessor"


# instance fields
.field private final aS:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser;

.field private final hM:Lcom/amazon/identity/auth/device/iv;

.field private final o:Lcom/amazon/identity/auth/device/ed;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/amazon/identity/auth/device/iv;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/iv;-><init>()V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor;->hM:Lcom/amazon/identity/auth/device/iv;

    .line 55
    new-instance v0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser;-><init>()V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor;->aS:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser;

    .line 56
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor;->o:Lcom/amazon/identity/auth/device/ed;

    return-void
.end method

.method private a(Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 p2, 0x4

    new-array p2, p2, [Ljava/lang/Object;

    .line 231
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;->cF()Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->getCode()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v0

    .line 232
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v1

    const/4 v0, 0x2

    .line 233
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;->cG()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    const/4 v0, 0x3

    .line 234
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;->cH()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "Received Error code %s from the server. Message: %s Detail: %s Index: %s"

    .line 230
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 237
    :cond_0
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v0

    const-string p2, "Received unrecognized error from the server with status code %d"

    invoke-static {p1, p2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;Lcom/amazon/identity/auth/device/ca;)Ljava/net/URL;
    .locals 1

    .line 190
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ca;->bB()Lcom/amazon/identity/auth/device/ed;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/amazon/identity/auth/device/ho;->c(Lcom/amazon/identity/auth/device/ed;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 193
    :try_start_0
    invoke-static {}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->cc()Lcom/amazon/identity/auth/device/env/EnvironmentUtils;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ca;->bn()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 197
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Should never occur, hardcoded constant."

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private a(Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor$PandaServiceException;
        }
    .end annotation

    .line 212
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor$a;->bF()Lorg/json/JSONObject;

    move-result-object v0

    .line 213
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor$a;->getResponseCode()I

    move-result p1

    .line 215
    iget-object v1, p0, Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor;->hM:Lcom/amazon/identity/auth/device/iv;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/identity/auth/device/iv;->a(Ljava/lang/Integer;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 217
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    const-string v3, "Null Json Response from Panda Service"

    :goto_1
    aput-object v3, v1, v2

    const-string v2, "Error Response: %s"

    invoke-static {v2, v1}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    iget-object v1, p0, Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor;->aS:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser;

    invoke-virtual {v1, v0}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser;->g(Lorg/json/JSONObject;)Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;

    move-result-object v0

    .line 220
    invoke-direct {p0, v0, p1}, Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor;->a(Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;I)Ljava/lang/String;

    move-result-object p1

    .line 222
    new-instance v0, Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor$PandaServiceException;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INVALID_RESPONSE:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    invoke-direct {v0, v1, p1, p1}, Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor$PandaServiceException;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 41
    sget-object v0, Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/amazon/identity/auth/device/bh;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor$a;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;,
            Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor$PandaServiceException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 120
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/ca;)Ljava/net/URL;

    move-result-object v3

    .line 121
    iget-object v1, p0, Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor;->hM:Lcom/amazon/identity/auth/device/iv;

    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ca;->bB()Lcom/amazon/identity/auth/device/ed;

    move-result-object v2

    .line 123
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/bh;->bo()Lorg/json/JSONObject;

    move-result-object v4

    const/4 v5, 0x0

    .line 127
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ca;->bB()Lcom/amazon/identity/auth/device/ed;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object v6, p1

    move-object v8, p3

    .line 121
    invoke-virtual/range {v1 .. v8}, Lcom/amazon/identity/auth/device/iv;->a(Landroid/content/Context;Ljava/net/URL;Lorg/json/JSONObject;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 130
    invoke-static {v0}, Lcom/amazon/identity/auth/device/framework/RetryLogic;->d(Ljava/net/HttpURLConnection;)I

    move-result p1

    .line 131
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ih;->f(Ljava/net/HttpURLConnection;)Lorg/json/JSONObject;

    move-result-object p2

    .line 132
    new-instance p3, Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor$a;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p3, p1, p2, v1}, Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor$a;-><init>(ILorg/json/JSONObject;Ljava/util/Map;)V

    .line 133
    invoke-direct {p0, p3}, Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor;->a(Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-object p3

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 142
    :cond_1
    throw p1
.end method

.method public a(Ljava/lang/String;Lcom/amazon/identity/auth/device/cb;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/token/OAuthTokenManager$a;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;,
            Ljava/text/ParseException;,
            Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor$PandaServiceException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 76
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/ca;)Ljava/net/URL;

    move-result-object v9

    .line 77
    iget-object v1, p0, Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor;->hM:Lcom/amazon/identity/auth/device/iv;

    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ca;->bB()Lcom/amazon/identity/auth/device/ed;

    move-result-object v2

    .line 79
    invoke-virtual {p2, p3}, Lcom/amazon/identity/auth/device/cb;->a(Lcom/amazon/identity/auth/device/ej;)Lorg/json/JSONObject;

    move-result-object v4

    const/4 v5, 0x0

    .line 83
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ca;->bB()Lcom/amazon/identity/auth/device/ed;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object v3, v9

    move-object v6, p1

    move-object v8, p3

    .line 77
    invoke-virtual/range {v1 .. v8}, Lcom/amazon/identity/auth/device/iv;->a(Landroid/content/Context;Ljava/net/URL;Lorg/json/JSONObject;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 86
    invoke-static {v0}, Lcom/amazon/identity/auth/device/framework/RetryLogic;->d(Ljava/net/HttpURLConnection;)I

    move-result p1

    const-string p2, "X-Amzn-RequestId"

    .line 88
    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 89
    sget-object p3, Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor;->TAG:Ljava/lang/String;

    const-string v1, "Call to %s with request-id %s ended with status %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v9, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 p2, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, p2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ih;->f(Ljava/net/HttpURLConnection;)Lorg/json/JSONObject;

    move-result-object p2

    .line 92
    new-instance p3, Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor$a;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p3, p1, p2, v1}, Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor$a;-><init>(ILorg/json/JSONObject;Ljava/util/Map;)V

    .line 1204
    invoke-direct {p0, p3}, Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor;->a(Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor$a;)V

    .line 1205
    new-instance p1, Lcom/amazon/identity/auth/device/gy;

    iget-object p2, p0, Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor;->o:Lcom/amazon/identity/auth/device/ed;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor;->hM:Lcom/amazon/identity/auth/device/iv;

    invoke-direct {p1, p2, v1}, Lcom/amazon/identity/auth/device/gy;-><init>(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/iv;)V

    .line 1207
    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor$a;->bF()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/identity/auth/device/gy;->l(Lorg/json/JSONObject;)Lcom/amazon/identity/auth/device/token/OAuthTokenManager$a;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 100
    :cond_1
    throw p1
.end method

.method public b(Lcom/amazon/identity/auth/device/bf;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor$a;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;,
            Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor$PandaServiceException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 161
    :try_start_0
    invoke-static {}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->cc()Lcom/amazon/identity/auth/device/env/EnvironmentUtils;

    move-result-object v1

    const-string v2, ".amazon.com"

    invoke-virtual {v1, v2}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->getPandaHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 162
    invoke-static {}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->cc()Lcom/amazon/identity/auth/device/env/EnvironmentUtils;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/bf;->bn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v6

    .line 163
    iget-object v4, p0, Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor;->hM:Lcom/amazon/identity/auth/device/iv;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ca;->bB()Lcom/amazon/identity/auth/device/ed;

    move-result-object v5

    .line 165
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/bf;->bo()Lorg/json/JSONObject;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 169
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ca;->bB()Lcom/amazon/identity/auth/device/ed;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v10

    move-object v11, p2

    .line 163
    invoke-virtual/range {v4 .. v11}, Lcom/amazon/identity/auth/device/iv;->a(Landroid/content/Context;Ljava/net/URL;Lorg/json/JSONObject;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 172
    invoke-static {v0}, Lcom/amazon/identity/auth/device/framework/RetryLogic;->d(Ljava/net/HttpURLConnection;)I

    move-result p1

    .line 173
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ih;->f(Ljava/net/HttpURLConnection;)Lorg/json/JSONObject;

    move-result-object p2

    .line 174
    new-instance v1, Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor$a;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, p1, p2, v2}, Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor$a;-><init>(ILorg/json/JSONObject;Ljava/util/Map;)V

    .line 175
    invoke-direct {p0, v1}, Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor;->a(Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-object v1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 184
    :cond_1
    throw p1
.end method
