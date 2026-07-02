.class public Lcom/amazon/identity/auth/device/bn;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/bn$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "bn"


# instance fields
.field private final B:Lcom/amazon/identity/auth/device/token/OAuthTokenManager;

.field private final as:Lcom/amazon/identity/auth/device/api/TokenManagement;

.field private final at:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

.field private final hh:Lcom/amazon/identity/auth/device/f;

.field private volatile hi:Z

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/amazon/identity/auth/device/bn;->hi:Z

    .line 71
    iput-object p1, p0, Lcom/amazon/identity/auth/device/bn;->mContext:Landroid/content/Context;

    .line 72
    new-instance p1, Lcom/amazon/identity/auth/device/api/TokenManagement;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/bn;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/amazon/identity/auth/device/api/TokenManagement;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/bn;->as:Lcom/amazon/identity/auth/device/api/TokenManagement;

    .line 73
    new-instance p1, Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/bn;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/bn;->at:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    .line 74
    iget-object p1, p0, Lcom/amazon/identity/auth/device/bn;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/g;->a(Landroid/content/Context;)Lcom/amazon/identity/auth/device/f;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/bn;->hh:Lcom/amazon/identity/auth/device/f;

    .line 75
    new-instance p1, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/bn;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/bn;->B:Lcom/amazon/identity/auth/device/token/OAuthTokenManager;

    return-void
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/bn;)Landroid/content/Context;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/amazon/identity/auth/device/bn;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/amazon/identity/auth/device/bl;)Lcom/amazon/identity/auth/device/bl;
    .locals 1

    .line 799
    new-instance v0, Lcom/amazon/identity/auth/device/bn$5;

    invoke-direct {v0, p0, p1}, Lcom/amazon/identity/auth/device/bn$5;-><init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/bl;)V

    return-object v0
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/bn;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/bn;->aI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/bn;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Ljava/lang/String;
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/bn;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Ljava/lang/String;
    .locals 1

    .line 593
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/bn;->B:Lcom/amazon/identity/auth/device/token/OAuthTokenManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->d(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 599
    sget-object p2, Lcom/amazon/identity/auth/device/bn;->TAG:Ljava/lang/String;

    const-string p3, "Exception while trying to get the actor refresh token in the generatePreAuthorizedLinkCode API"

    invoke-static {p2, p3, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private static a(Ljava/net/URL;Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 834
    invoke-static {p0}, Lcom/amazon/identity/auth/device/ew;->c(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    .line 835
    invoke-static {p0}, Lcom/amazon/identity/auth/device/jt;->b(Ljava/net/URLConnection;)Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    const/4 v0, 0x1

    .line 837
    invoke-virtual {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    const-string v0, "POST"

    .line 838
    invoke-virtual {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v0, "application/json"

    const-string v1, "Accept"

    .line 839
    invoke-virtual {p0, v1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Type"

    .line 840
    invoke-virtual {p0, v1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 4023
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/identity/auth/device/lw;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Accept-Language"

    .line 842
    invoke-virtual {p0, v1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    invoke-static {}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->cc()Lcom/amazon/identity/auth/device/env/EnvironmentUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->bf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "x-amzn-identity-auth-domain"

    invoke-virtual {p0, v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static a(ILjava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;)V
    .locals 1

    const/4 v0, 0x0

    .line 745
    invoke-static {p0, p1, p2, v0}, Lcom/amazon/identity/auth/device/bn;->a(ILjava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;Landroid/os/Bundle;)V

    return-void
.end method

.method public static a(ILjava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;Landroid/os/Bundle;)V
    .locals 2

    .line 728
    sget-object v0, Lcom/amazon/identity/auth/device/bn;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    sget-object v0, Lcom/amazon/identity/auth/device/bn;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 730
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.amazon.dcp.sso.ErrorCode"

    .line 731
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "com.amazon.dcp.sso.ErrorMessage"

    .line 732
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 735
    invoke-virtual {v0, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 737
    :cond_0
    invoke-interface {p2, v0}, Lcom/amazon/identity/auth/device/api/Callback;->onError(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/bn;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/gm;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    const/4 v4, 0x1

    const/4 v10, 0x0

    .line 4126
    :try_start_0
    invoke-static {}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->cc()Lcom/amazon/identity/auth/device/env/EnvironmentUtils;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->getPandaHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4127
    invoke-static {}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->cc()Lcom/amazon/identity/auth/device/env/EnvironmentUtils;

    move-result-object v6

    const-string v7, "/auth/create/codepair"

    invoke-virtual {v6, v5, v7}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v11
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_5

    const/4 v5, 0x0

    const-string v6, "get_link_code_with_length"

    .line 4138
    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-wide/16 v6, 0x0

    const-string v12, "link_code_expiry"

    .line 4139
    invoke-virtual {v2, v12, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 4141
    new-instance v2, Lcom/amazon/identity/auth/device/bo;

    iget-object v12, v1, Lcom/amazon/identity/auth/device/bn;->mContext:Landroid/content/Context;

    .line 4142
    invoke-static {v12}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object v12

    invoke-direct {v2, v12, v9}, Lcom/amazon/identity/auth/device/bo;-><init>(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/ej;)V

    .line 4146
    :try_start_1
    invoke-virtual {v2, v5, v6, v7}, Lcom/amazon/identity/auth/device/bo;->a(IJ)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_4

    const/4 v12, 0x5

    const/4 v13, 0x4

    .line 4159
    :try_start_2
    invoke-static {v11}, Lcom/amazon/identity/auth/device/mm;->h(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Lcom/amazon/identity/auth/device/ej;->bz(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v14

    .line 4161
    invoke-static {v11, v0}, Lcom/amazon/identity/auth/device/bn;->a(Ljava/net/URL;Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v15
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4163
    :try_start_3
    invoke-virtual {v15}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v0, v4}, Lcom/amazon/identity/auth/device/ja;->a(Ljava/io/OutputStream;[B)V

    .line 4164
    invoke-static {v15}, Lcom/amazon/identity/auth/device/framework/RetryLogic;->d(Ljava/net/HttpURLConnection;)I

    move-result v0

    .line 4166
    sget-object v4, Lcom/amazon/identity/auth/device/bn;->TAG:Ljava/lang/String;

    const-string v5, "The createCodePair call response code is "

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 4167
    invoke-virtual {v14}, Lcom/amazon/identity/auth/device/ms;->iO()V

    .line 4169
    invoke-static {v15}, Lcom/amazon/identity/auth/device/ih;->f(Ljava/net/HttpURLConnection;)Lorg/json/JSONObject;

    move-result-object v4

    const/16 v5, 0xc8

    if-ne v0, v5, :cond_2

    .line 4173
    invoke-virtual {v2, v4}, Lcom/amazon/identity/auth/device/bo;->c(Lorg/json/JSONObject;)Lcom/amazon/identity/auth/device/bo$a;

    move-result-object v2

    .line 4174
    invoke-static {v11, v0}, Lcom/amazon/identity/auth/device/mm;->a(Ljava/net/URL;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/amazon/identity/auth/device/ms;->eN(Ljava/lang/String;)V

    if-nez v2, :cond_1

    const-string v0, "Received a successful response from server but it was missing required values"

    .line 6745
    invoke-static {v13, v0, v8, v10}, Lcom/amazon/identity/auth/device/bn;->a(ILjava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;Landroid/os/Bundle;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v15, :cond_0

    .line 4228
    invoke-virtual {v15}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_0
    return-void

    :cond_1
    :try_start_4
    const-string/jumbo v0, "public_code"

    .line 4185
    iget-object v4, v2, Lcom/amazon/identity/auth/device/bo$a;->hq:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lcom/amazon/identity/auth/device/gm;->O(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v0, "private_code"

    .line 4186
    iget-object v4, v2, Lcom/amazon/identity/auth/device/bo$a;->hr:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lcom/amazon/identity/auth/device/gm;->O(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "expires_at"

    .line 4187
    iget-wide v4, v2, Lcom/amazon/identity/auth/device/bo$a;->hv:J

    invoke-virtual {v3, v0, v4, v5}, Lcom/amazon/identity/auth/device/gm;->a(Ljava/lang/String;J)Z

    const-string/jumbo v0, "polling_interval"

    .line 4188
    iget-wide v4, v2, Lcom/amazon/identity/auth/device/bo$a;->hw:J

    invoke-virtual {v3, v0, v4, v5}, Lcom/amazon/identity/auth/device/gm;->a(Ljava/lang/String;J)Z

    .line 4189
    iget-object v0, v2, Lcom/amazon/identity/auth/device/bo$a;->hq:Ljava/lang/String;

    const-string v3, "link_code"

    iget-wide v4, v2, Lcom/amazon/identity/auth/device/bo$a;->hu:J

    iget-wide v6, v2, Lcom/amazon/identity/auth/device/bo$a;->hw:J

    .line 4192
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v2, v0

    move-object/from16 v7, p4

    .line 4189
    invoke-static/range {v2 .. v7}, Lcom/amazon/identity/auth/device/bn;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Lcom/amazon/identity/auth/device/api/Callback;)V

    goto :goto_0

    .line 4198
    :cond_2
    invoke-static {v4}, Lcom/amazon/identity/auth/device/bp;->d(Lorg/json/JSONObject;)Lcom/amazon/identity/auth/device/bp$a;

    move-result-object v2

    .line 4199
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Response code : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Error Code : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/amazon/identity/auth/device/bp$a;->mErrorCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Description : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/amazon/identity/auth/device/bp$a;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Error Index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/amazon/identity/auth/device/bp$a;->hx:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4202
    iget-object v2, v2, Lcom/amazon/identity/auth/device/bp$a;->mErrorCode:Ljava/lang/String;

    invoke-static {v11, v0, v2}, Lcom/amazon/identity/auth/device/mm;->a(Ljava/net/URL;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/amazon/identity/auth/device/ms;->eN(Ljava/lang/String;)V

    .line 7745
    invoke-static {v12, v3, v8, v10}, Lcom/amazon/identity/auth/device/bn;->a(ILjava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;Landroid/os/Bundle;)V

    .line 4206
    :goto_0
    invoke-virtual {v14}, Lcom/amazon/identity/auth/device/ms;->stop()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v15, :cond_3

    .line 4228
    invoke-virtual {v15}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-object v15, v10

    :catch_2
    :try_start_5
    const-string v0, "Could not parse the response from our service to generate the link code"

    .line 9745
    invoke-static {v13, v0, v8, v10}, Lcom/amazon/identity/auth/device/bn;->a(ILjava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;Landroid/os/Bundle;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v15, :cond_3

    .line 4228
    invoke-virtual {v15}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    return-void

    :catch_3
    move-exception v0

    move-object v15, v10

    .line 4211
    :goto_1
    :try_start_6
    sget-object v2, Lcom/amazon/identity/auth/device/bn;->TAG:Ljava/lang/String;

    const-string v3, "IOException while making request to Panda createCodePair:"

    invoke-static {v2, v3, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4212
    invoke-static {v11}, Lcom/amazon/identity/auth/device/mm;->i(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/amazon/identity/auth/device/ej;->bA(Ljava/lang/String;)V

    .line 4213
    iget-object v1, v1, Lcom/amazon/identity/auth/device/bn;->mContext:Landroid/content/Context;

    invoke-static {v11, v0, v1}, Lcom/amazon/identity/auth/device/mm;->a(Ljava/net/URL;Ljava/io/IOException;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/amazon/identity/auth/device/ej;->bA(Ljava/lang/String;)V

    .line 4214
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Got an IOException while talking to the server : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4215
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8745
    invoke-static {v12, v0, v8, v10}, Lcom/amazon/identity/auth/device/bn;->a(ILjava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;Landroid/os/Bundle;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v15, :cond_3

    .line 4228
    invoke-virtual {v15}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_3
    return-void

    :catchall_1
    move-exception v0

    move-object v10, v15

    :goto_2
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 4230
    :cond_4
    throw v0

    :catch_4
    const-string v0, "Could not construct the request body to call Panda createCode API"

    .line 5745
    invoke-static {v4, v0, v8, v10}, Lcom/amazon/identity/auth/device/bn;->a(ILjava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;Landroid/os/Bundle;)V

    return-void

    :catch_5
    move-exception v0

    .line 4131
    sget-object v1, Lcom/amazon/identity/auth/device/bn;->TAG:Ljava/lang/String;

    const-string v2, "MalformedURLException while constructing url to generate link code"

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "Could not construct the url to get the link code. Check the domain you pass in this api."

    .line 4745
    invoke-static {v4, v0, v8, v10}, Lcom/amazon/identity/auth/device/bn;->a(ILjava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/bn;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V
    .locals 15

    move-object v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    const/4 v5, 0x0

    .line 10335
    :try_start_0
    invoke-static {}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->cc()Lcom/amazon/identity/auth/device/env/EnvironmentUtils;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->getPandaHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 10336
    invoke-static {}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->cc()Lcom/amazon/identity/auth/device/env/EnvironmentUtils;

    move-result-object v7

    const-string v8, "/auth/create/code"

    invoke-virtual {v7, v6, v8}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v6
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_4

    const/4 v7, 0x5

    const/4 v8, 0x4

    .line 10353
    :try_start_1
    invoke-static {v6}, Lcom/amazon/identity/auth/device/mm;->h(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/amazon/identity/auth/device/ej;->bz(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v9

    .line 10355
    invoke-static {v6, v2}, Lcom/amazon/identity/auth/device/bn;->a(Ljava/net/URL;Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10356
    :try_start_2
    new-instance v10, Lcom/amazon/identity/auth/device/bq;

    iget-object v11, v1, Lcom/amazon/identity/auth/device/bn;->mContext:Landroid/content/Context;

    .line 10357
    invoke-static {v11}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object v11

    invoke-direct {v10, v11, v4}, Lcom/amazon/identity/auth/device/bq;-><init>(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/ej;)V

    move-object/from16 v11, p3

    move-wide/from16 v12, p4

    move-object/from16 v14, p6

    .line 10358
    invoke-virtual {v10, v12, v13, v11, v14}, Lcom/amazon/identity/auth/device/bq;->a(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 10360
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-static {v12, v11}, Lcom/amazon/identity/auth/device/ja;->a(Ljava/io/OutputStream;[B)V

    .line 10361
    invoke-static {v2}, Lcom/amazon/identity/auth/device/framework/RetryLogic;->d(Ljava/net/HttpURLConnection;)I

    move-result v11

    .line 10363
    sget-object v12, Lcom/amazon/identity/auth/device/bn;->TAG:Ljava/lang/String;

    const-string v13, "The generate pre-authorized code web service call http response code is "

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 10364
    invoke-virtual {v9}, Lcom/amazon/identity/auth/device/ms;->iO()V

    .line 10366
    invoke-static {v2}, Lcom/amazon/identity/auth/device/ih;->f(Ljava/net/HttpURLConnection;)Lorg/json/JSONObject;

    move-result-object v12

    const/16 v13, 0xc8

    if-ne v11, v13, :cond_2

    .line 10370
    invoke-static {v6, v11}, Lcom/amazon/identity/auth/device/mm;->a(Ljava/net/URL;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/amazon/identity/auth/device/ms;->eN(Ljava/lang/String;)V

    .line 10372
    invoke-virtual {v10, v12}, Lcom/amazon/identity/auth/device/bq;->e(Lorg/json/JSONObject;)Lcom/amazon/identity/auth/device/bq$a;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "Received a successful response from server but it was missing required values"

    .line 11745
    invoke-static {v8, v0, v3, v5}, Lcom/amazon/identity/auth/device/bn;->a(ILjava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;Landroid/os/Bundle;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_0

    .line 10447
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_0
    return-void

    .line 10381
    :cond_1
    :try_start_3
    iget-object v10, v0, Lcom/amazon/identity/auth/device/bq$a;->hy:Ljava/lang/String;

    const-string/jumbo v11, "pre_authorized_link_code"

    iget-wide v12, v0, Lcom/amazon/identity/auth/device/bq$a;->hu:J

    const/4 v0, 0x0

    move-object/from16 p1, v10

    move-object/from16 p2, v11

    move-wide/from16 p3, v12

    move-object/from16 p5, v0

    move-object/from16 p6, p7

    invoke-static/range {p1 .. p6}, Lcom/amazon/identity/auth/device/bn;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Lcom/amazon/identity/auth/device/api/Callback;)V

    goto :goto_0

    .line 10391
    :cond_2
    invoke-static {v12}, Lcom/amazon/identity/auth/device/bp;->d(Lorg/json/JSONObject;)Lcom/amazon/identity/auth/device/bp$a;

    move-result-object v10

    .line 10392
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Response code : "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " Error Code : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v10, Lcom/amazon/identity/auth/device/bp$a;->mErrorCode:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " Description : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v10, Lcom/amazon/identity/auth/device/bp$a;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " Error Index : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v10, Lcom/amazon/identity/auth/device/bp$a;->hx:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 10395
    iget-object v13, v10, Lcom/amazon/identity/auth/device/bp$a;->mErrorCode:Ljava/lang/String;

    invoke-static {v6, v11, v13}, Lcom/amazon/identity/auth/device/mm;->a(Ljava/net/URL;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/amazon/identity/auth/device/ms;->eN(Ljava/lang/String;)V

    .line 10397
    new-instance v11, Lcom/amazon/identity/auth/device/ds;

    iget-object v13, v1, Lcom/amazon/identity/auth/device/bn;->mContext:Landroid/content/Context;

    invoke-direct {v11, v13}, Lcom/amazon/identity/auth/device/ds;-><init>(Landroid/content/Context;)V

    .line 10398
    invoke-virtual {p0, v10}, Lcom/amazon/identity/auth/device/bn;->a(Lcom/amazon/identity/auth/device/bp$a;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 10400
    invoke-virtual {p0, v11}, Lcom/amazon/identity/auth/device/bn;->b(Lcom/amazon/identity/auth/device/ds;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 10403
    sget-object v9, Lcom/amazon/identity/auth/device/bn;->TAG:Ljava/lang/String;

    const-string v10, "Deregistering account because while generating pre-authorized public code, Panda told us the refresh token is invalid"

    invoke-static {v9, v10}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "generatePreAuthorizedLinkCode"

    .line 10405
    invoke-direct {p0, v0, v9}, Lcom/amazon/identity/auth/device/bn;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    const-string v9, "Could not generate pre-authorized code because the account credentials that MAP had was invalid. This happens if the account was deregistered from the server side."

    .line 12745
    invoke-static {v0, v9, v3, v5}, Lcom/amazon/identity/auth/device/bn;->a(ILjava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;Landroid/os/Bundle;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_3

    .line 10447
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_3
    return-void

    :cond_4
    :try_start_4
    const-string v9, "generate pre-authorized code"

    const-string v10, "GeneratePreAuthorizedCode:CredentialError"

    .line 10416
    invoke-direct {p0, v0, v9, v10, v3}, Lcom/amazon/identity/auth/device/bn;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_5

    .line 10447
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_5
    return-void

    .line 13745
    :cond_6
    :try_start_5
    invoke-static {v7, v12, v3, v5}, Lcom/amazon/identity/auth/device/bn;->a(ILjava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;Landroid/os/Bundle;)V

    .line 10425
    :goto_0
    invoke-virtual {v9}, Lcom/amazon/identity/auth/device/ms;->stop()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_7

    .line 10447
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-object v2, v5

    :catch_2
    :try_start_6
    const-string v0, "Could not parse the response from our service to generate the link code"

    .line 15745
    invoke-static {v8, v0, v3, v5}, Lcom/amazon/identity/auth/device/bn;->a(ILjava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;Landroid/os/Bundle;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v2, :cond_7

    .line 10447
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    return-void

    :catch_3
    move-exception v0

    move-object v2, v5

    .line 10430
    :goto_1
    :try_start_7
    sget-object v8, Lcom/amazon/identity/auth/device/bn;->TAG:Ljava/lang/String;

    const-string v9, "IOException while making request to Panda to generate pre-authorized code:"

    invoke-static {v8, v9, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10431
    invoke-static {v6}, Lcom/amazon/identity/auth/device/mm;->i(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/amazon/identity/auth/device/ej;->bA(Ljava/lang/String;)V

    .line 10432
    iget-object v1, v1, Lcom/amazon/identity/auth/device/bn;->mContext:Landroid/content/Context;

    invoke-static {v6, v0, v1}, Lcom/amazon/identity/auth/device/mm;->a(Ljava/net/URL;Ljava/io/IOException;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/amazon/identity/auth/device/ej;->bA(Ljava/lang/String;)V

    .line 10433
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Got an IOException while talking to the server : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10434
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14745
    invoke-static {v7, v0, v3, v5}, Lcom/amazon/identity/auth/device/bn;->a(ILjava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;Landroid/os/Bundle;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v2, :cond_7

    .line 10447
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_7
    return-void

    :catchall_1
    move-exception v0

    move-object v5, v2

    :goto_2
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 10449
    :cond_8
    throw v0

    :catch_4
    move-exception v0

    .line 10340
    sget-object v1, Lcom/amazon/identity/auth/device/bn;->TAG:Ljava/lang/String;

    const-string v2, "MalformedURLException while trying to generate url to call generate pre-authorized link code"

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    const-string v1, "Could not construct the url to authorize the link code."

    .line 10745
    invoke-static {v0, v1, v3, v5}, Lcom/amazon/identity/auth/device/bn;->a(ILjava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/bn;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V
    .locals 6

    const/4 v0, 0x0

    .line 16615
    :try_start_0
    invoke-static {}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->cc()Lcom/amazon/identity/auth/device/env/EnvironmentUtils;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->getPandaHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 16616
    invoke-static {}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->cc()Lcom/amazon/identity/auth/device/env/EnvironmentUtils;

    move-result-object v2

    const-string v3, "/auth/authorize"

    invoke-virtual {v2, v1, v3}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_4

    const/4 v2, 0x5

    .line 16631
    :try_start_1
    invoke-static {v1}, Lcom/amazon/identity/auth/device/mm;->h(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p6, v3}, Lcom/amazon/identity/auth/device/ej;->bz(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v3

    .line 16633
    invoke-static {v1, p2}, Lcom/amazon/identity/auth/device/bn;->a(Ljava/net/URL;Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object p2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17021
    :try_start_2
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v5, "public_code"

    .line 17022
    invoke-virtual {v4, v5, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17024
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "code_pair"

    .line 17025
    invoke-virtual {p3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "access_token"

    .line 17026
    invoke-virtual {p3, v4, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17028
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "auth_data"

    .line 17029
    invoke-virtual {p4, v4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17030
    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    .line 16635
    invoke-virtual {p2}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p4

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-static {p4, p3}, Lcom/amazon/identity/auth/device/ja;->a(Ljava/io/OutputStream;[B)V

    .line 16636
    invoke-static {p2}, Lcom/amazon/identity/auth/device/framework/RetryLogic;->d(Ljava/net/HttpURLConnection;)I

    move-result p3

    .line 16638
    sget-object p4, Lcom/amazon/identity/auth/device/bn;->TAG:Ljava/lang/String;

    const-string v4, "The authorize public code call http response code is "

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p4, v4}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 16639
    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/ms;->iO()V

    .line 16641
    invoke-static {p2}, Lcom/amazon/identity/auth/device/ih;->f(Ljava/net/HttpURLConnection;)Lorg/json/JSONObject;

    move-result-object p4

    const/16 v4, 0xc8

    if-ne p3, v4, :cond_0

    .line 16645
    invoke-static {v1, p3}, Lcom/amazon/identity/auth/device/mm;->a(Ljava/net/URL;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/amazon/identity/auth/device/ms;->eN(Ljava/lang/String;)V

    .line 16647
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p5, p1}, Lcom/amazon/identity/auth/device/api/Callback;->onSuccess(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 16653
    :cond_0
    invoke-static {p4}, Lcom/amazon/identity/auth/device/bp;->d(Lorg/json/JSONObject;)Lcom/amazon/identity/auth/device/bp$a;

    move-result-object p4

    .line 16654
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Response code : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " Error Code : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p4, Lcom/amazon/identity/auth/device/bp$a;->mErrorCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Description : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p4, Lcom/amazon/identity/auth/device/bp$a;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Error Index : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p4, Lcom/amazon/identity/auth/device/bp$a;->hx:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 16657
    iget-object v5, p4, Lcom/amazon/identity/auth/device/bp$a;->mErrorCode:Ljava/lang/String;

    invoke-static {v1, p3, v5}, Lcom/amazon/identity/auth/device/mm;->a(Ljava/net/URL;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Lcom/amazon/identity/auth/device/ms;->eN(Ljava/lang/String;)V

    .line 16660
    iget-object p3, p4, Lcom/amazon/identity/auth/device/bp$a;->mErrorCode:Ljava/lang/String;

    const-string v5, "AuthorizationInPlace"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 16662
    sget-object p1, Lcom/amazon/identity/auth/device/bn;->TAG:Ljava/lang/String;

    const-string p3, "The public code is already authorized."

    invoke-static {p1, p3}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 16663
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p5, p1}, Lcom/amazon/identity/auth/device/api/Callback;->onSuccess(Landroid/os/Bundle;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p2, :cond_1

    .line 16717
    invoke-virtual {p2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_1
    return-void

    .line 16667
    :cond_2
    :try_start_3
    new-instance p3, Lcom/amazon/identity/auth/device/ds;

    iget-object v5, p0, Lcom/amazon/identity/auth/device/bn;->mContext:Landroid/content/Context;

    invoke-direct {p3, v5}, Lcom/amazon/identity/auth/device/ds;-><init>(Landroid/content/Context;)V

    .line 16668
    invoke-virtual {p0, p4}, Lcom/amazon/identity/auth/device/bn;->a(Lcom/amazon/identity/auth/device/bp$a;)Z

    move-result p4

    if-eqz p4, :cond_6

    .line 16670
    invoke-virtual {p0, p3}, Lcom/amazon/identity/auth/device/bn;->b(Lcom/amazon/identity/auth/device/ds;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 16673
    sget-object p3, Lcom/amazon/identity/auth/device/bn;->TAG:Ljava/lang/String;

    const-string p4, "Deregistering account because while authorizing public code, Panda told us the refresh token is invalid"

    invoke-static {p3, p4}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "authorizeLinkCode"

    .line 16675
    invoke-direct {p0, p1, p3}, Lcom/amazon/identity/auth/device/bn;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x3

    const-string p3, "Could not authorize the link code because the account credentials that MAP had were invalid. This happens if the account was deregistered from the server side."

    .line 17745
    invoke-static {p1, p3, p5, v0}, Lcom/amazon/identity/auth/device/bn;->a(ILjava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;Landroid/os/Bundle;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p2, :cond_3

    .line 16717
    invoke-virtual {p2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_3
    return-void

    :cond_4
    :try_start_4
    const-string p3, "authorize the link code"

    const-string p4, "AuthorizePublicCode:CredentialError"

    .line 16686
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/amazon/identity/auth/device/bn;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz p2, :cond_5

    .line 16717
    invoke-virtual {p2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_5
    return-void

    .line 18745
    :cond_6
    :try_start_5
    invoke-static {v2, v4, p5, v0}, Lcom/amazon/identity/auth/device/bn;->a(ILjava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;Landroid/os/Bundle;)V

    .line 16695
    :goto_0
    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/ms;->stop()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz p2, :cond_7

    .line 16717
    invoke-virtual {p2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-object p2, v0

    :catch_2
    const/4 p0, 0x4

    :try_start_6
    const-string p1, "Could not parse the response from our service to generate the link code"

    .line 20745
    invoke-static {p0, p1, p5, v0}, Lcom/amazon/identity/auth/device/bn;->a(ILjava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;Landroid/os/Bundle;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz p2, :cond_7

    .line 16717
    invoke-virtual {p2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    return-void

    :catch_3
    move-exception p1

    move-object p2, v0

    .line 16700
    :goto_1
    :try_start_7
    sget-object p3, Lcom/amazon/identity/auth/device/bn;->TAG:Ljava/lang/String;

    const-string p4, "IOException while making request to Panda to authorize public code:"

    invoke-static {p3, p4, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16701
    invoke-static {v1}, Lcom/amazon/identity/auth/device/mm;->i(Ljava/net/URL;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p6, p3}, Lcom/amazon/identity/auth/device/ej;->bA(Ljava/lang/String;)V

    .line 16702
    iget-object p0, p0, Lcom/amazon/identity/auth/device/bn;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p0}, Lcom/amazon/identity/auth/device/mm;->a(Ljava/net/URL;Ljava/io/IOException;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p6, p0}, Lcom/amazon/identity/auth/device/ej;->bA(Ljava/lang/String;)V

    .line 16703
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, "Got an IOException while talking to the server : "

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16704
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 19745
    invoke-static {v2, p0, p5, v0}, Lcom/amazon/identity/auth/device/bn;->a(ILjava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;Landroid/os/Bundle;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz p2, :cond_7

    .line 16717
    invoke-virtual {p2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_7
    return-void

    :catchall_1
    move-exception p0

    move-object v0, p2

    :goto_2
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 16719
    :cond_8
    throw p0

    :catch_4
    move-exception p0

    .line 16620
    sget-object p1, Lcom/amazon/identity/auth/device/bn;->TAG:Ljava/lang/String;

    const-string p2, "MalformedURLException while trying to generate url to call authorize link code"

    invoke-static {p1, p2, p0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x1

    const-string p1, "Could not construct the url to authorize the link code."

    .line 16745
    invoke-static {p0, p1, p5, v0}, Lcom/amazon/identity/auth/device/bn;->a(ILjava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;Landroid/os/Bundle;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Lcom/amazon/identity/auth/device/api/Callback;)V
    .locals 1

    .line 239
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 240
    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "link_code_expiry"

    .line 241
    invoke-virtual {v0, p0, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    if-eqz p4, :cond_0

    .line 245
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    const-string p2, "link_code_polling_interval"

    invoke-virtual {v0, p2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 247
    :cond_0
    invoke-interface {p5, v0}, Lcom/amazon/identity/auth/device/api/Callback;->onSuccess(Landroid/os/Bundle;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;)V
    .locals 1

    const/4 v0, 0x0

    .line 850
    iput-boolean v0, p0, Lcom/amazon/identity/auth/device/bn;->hi:Z

    .line 851
    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/bn;->hi:Z

    if-eqz v0, :cond_0

    .line 853
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/identity/auth/device/bn;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;)V

    :cond_0
    return-void
.end method

.method private aI(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 572
    iget-object v0, p0, Lcom/amazon/identity/auth/device/bn;->as:Lcom/amazon/identity/auth/device/api/TokenManagement;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Lcom/amazon/identity/auth/device/api/DefaultCallback;

    invoke-direct {v2}, Lcom/amazon/identity/auth/device/api/DefaultCallback;-><init>()V

    const-string v3, "com.amazon.dcp.sso.token.oauth.amazon.refresh_token"

    .line 573
    invoke-virtual {v0, p1, v3, v1, v2}, Lcom/amazon/identity/auth/device/api/TokenManagement;->getToken(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object p1

    .line 579
    :try_start_0
    invoke-interface {p1}, Lcom/amazon/identity/auth/device/api/MAPFuture;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string/jumbo v0, "value_key"

    .line 580
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 584
    sget-object v0, Lcom/amazon/identity/auth/device/bn;->TAG:Ljava/lang/String;

    const-string v1, "Exception while trying to get the refresh token in the authorizeLinkCode API"

    invoke-static {v0, v1, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic ao()Ljava/lang/String;
    .locals 1

    .line 52
    sget-object v0, Lcom/amazon/identity/auth/device/bn;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/amazon/identity/auth/device/bn;)Lcom/amazon/identity/auth/device/f;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/amazon/identity/auth/device/bn;->hh:Lcom/amazon/identity/auth/device/f;

    return-object p0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;)V
    .locals 1

    .line 861
    invoke-static {}, Lcom/amazon/identity/auth/device/fl;->eB()Lcom/amazon/identity/auth/device/fl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/fl;->bR(Ljava/lang/String;)Lcom/amazon/identity/auth/device/fl;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/amazon/identity/auth/device/fl;->bS(Ljava/lang/String;)Lcom/amazon/identity/auth/device/fl;

    move-result-object p1

    .line 862
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Could not"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " because the account credentials that MAP had were invalid. This happens if the account was deregistered from the server side. Returning an account recover context to help recover the account"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 866
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/fl;->eC()Landroid/os/Bundle;

    move-result-object p1

    const/4 p3, 0x3

    .line 862
    invoke-static {p3, p2, p4, p1}, Lcom/amazon/identity/auth/device/bn;->a(ILjava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;Landroid/os/Bundle;)V

    return-void
.end method

.method private i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 483
    iget-object v0, p0, Lcom/amazon/identity/auth/device/bn;->at:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    new-instance v1, Lcom/amazon/identity/auth/device/bn$3;

    invoke-direct {v1, p0, p2}, Lcom/amazon/identity/auth/device/bn$3;-><init>(Lcom/amazon/identity/auth/device/bn;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->deregisterAccount(Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    return-void
.end method

.method public static q(Landroid/content/Context;)Lcom/amazon/identity/auth/device/bn$a;
    .locals 12

    .line 750
    new-instance v0, Lcom/amazon/identity/auth/device/gm;

    const-string v1, "cbl_storage"

    invoke-direct {v0, p0, v1}, Lcom/amazon/identity/auth/device/gm;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo p0, "public_code"

    .line 752
    invoke-virtual {v0, p0}, Lcom/amazon/identity/auth/device/gm;->cr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo p0, "private_code"

    .line 753
    invoke-virtual {v0, p0}, Lcom/amazon/identity/auth/device/gm;->cr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string p0, "expires_at"

    .line 754
    invoke-virtual {v0, p0}, Lcom/amazon/identity/auth/device/gm;->cu(Ljava/lang/String;)J

    move-result-wide v4

    const-string/jumbo p0, "polling_interval"

    .line 755
    invoke-virtual {v0, p0}, Lcom/amazon/identity/auth/device/gm;->cu(Ljava/lang/String;)J

    move-result-wide v6

    .line 757
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    const-wide/16 v8, 0x0

    cmp-long p0, v4, v8

    if-eqz p0, :cond_3

    cmp-long v10, v6, v8

    if-nez v10, :cond_0

    goto :goto_0

    :cond_0
    if-lez p0, :cond_2

    .line 765
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/32 v10, 0xea60

    add-long/2addr v8, v10

    cmp-long p0, v4, v8

    if-lez p0, :cond_1

    .line 768
    sget-object p0, Lcom/amazon/identity/auth/device/bn;->TAG:Ljava/lang/String;

    const-string v0, "Returning already existing public code"

    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    new-instance p0, Lcom/amazon/identity/auth/device/bn$a;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/amazon/identity/auth/device/bn$a;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    return-object p0

    .line 774
    :cond_1
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/gm;->fG()Z

    :cond_2
    return-object v1

    .line 759
    :cond_3
    :goto_0
    sget-object p0, Lcom/amazon/identity/auth/device/bn;->TAG:Ljava/lang/String;

    const-string v0, "Cannot find existing code pair in storage"

    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method a(Lcom/amazon/identity/auth/device/bp$a;)Z
    .locals 1

    .line 478
    iget-object p1, p1, Lcom/amazon/identity/auth/device/bp$a;->mErrorCode:Ljava/lang/String;

    const-string v0, "CredentialError"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method b(Lcom/amazon/identity/auth/device/ds;)Z
    .locals 0

    .line 466
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ds;->dn()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public d(Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V
    .locals 3

    const-string v0, "link_code_domain"

    .line 80
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    sget-object v1, Lcom/amazon/identity/auth/device/bn;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 89
    :cond_0
    sget-object v1, Lcom/amazon/identity/auth/device/h;->m:Lcom/amazon/identity/auth/device/c;

    new-instance v2, Lcom/amazon/identity/auth/device/bn$1;

    invoke-direct {v2, p0, v0, p1, p3}, Lcom/amazon/identity/auth/device/bn$1;-><init>(Lcom/amazon/identity/auth/device/bn;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)V

    const-string p1, "generateLinkCode"

    invoke-virtual {v1, v2, p2, p1}, Lcom/amazon/identity/auth/device/c;->a(Lcom/amazon/identity/auth/device/c$b;Lcom/amazon/identity/auth/device/api/Callback;Ljava/lang/String;)V

    return-void
.end method

.method public e(Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V
    .locals 11

    const-string v0, "link_code_domain"

    .line 252
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 253
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    sget-object v0, Lcom/amazon/identity/auth/device/bn;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    :cond_0
    const-string v0, "com.amazon.dcp.sso.property.account.acctId"

    .line 258
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 259
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    const/4 p3, 0x0

    const-string v0, "Required value DirectedID(MAPAccountManager.KEY_DIRECTED_ID) is missing for the API generatePreAuthorizedLinkCode"

    .line 1745
    invoke-static {p1, v0, p2, p3}, Lcom/amazon/identity/auth/device/bn;->a(ILjava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;Landroid/os/Bundle;)V

    return-void

    :cond_1
    const-string v0, "generate pre-authorized code"

    const-string v1, "GeneratePreAuthorizedCode:CredentialError"

    .line 266
    invoke-direct {p0, v3, v0, v1, p2}, Lcom/amazon/identity/auth/device/bn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;)V

    .line 267
    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/bn;->hi:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const-wide/16 v0, 0x0

    const-string v2, "link_code_expiry"

    .line 272
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    const-string v0, "actor_id_for_preauthorized_link_code"

    .line 274
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 278
    sget-object v0, Lcom/amazon/identity/auth/device/h;->m:Lcom/amazon/identity/auth/device/c;

    new-instance v10, Lcom/amazon/identity/auth/device/bn$2;

    move-object v1, v10

    move-object v2, p0

    move-object v5, p3

    move-object v9, p1

    invoke-direct/range {v1 .. v9}, Lcom/amazon/identity/auth/device/bn$2;-><init>(Lcom/amazon/identity/auth/device/bn;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;Ljava/lang/String;JLandroid/os/Bundle;)V

    const-string p1, "generatePreAuthorizedLinkCode"

    invoke-virtual {v0, v10, p2, p1}, Lcom/amazon/identity/auth/device/c;->a(Lcom/amazon/identity/auth/device/c$b;Lcom/amazon/identity/auth/device/api/Callback;Ljava/lang/String;)V

    return-void
.end method

.method public f(Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V
    .locals 9

    const-string v0, "link_code_domain"

    .line 505
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 506
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    sget-object v0, Lcom/amazon/identity/auth/device/bn;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    :cond_0
    const-string v0, "link_code"

    .line 511
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 512
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    const-string p1, "Required value MAPAccountManager.KEY_LINK_CODE is missing for the API authorizeLinkCode"

    .line 2745
    invoke-static {v2, p1, p2, v1}, Lcom/amazon/identity/auth/device/bn;->a(ILjava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;Landroid/os/Bundle;)V

    return-void

    :cond_1
    const-string v0, "com.amazon.dcp.sso.property.account.acctId"

    .line 520
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 521
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "Required value DirectedID(MAPAccountManager.KEY_AUTHORIZE_LINK_CODE_DIRECTED_ID) is missing for the API authorizeLinkCode"

    .line 3745
    invoke-static {v2, p1, p2, v1}, Lcom/amazon/identity/auth/device/bn;->a(ILjava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;Landroid/os/Bundle;)V

    return-void

    :cond_2
    const-string v0, "authorize the link code"

    const-string v1, "AuthorizePublicCode:CredentialError"

    .line 529
    invoke-direct {p0, v3, v0, v1, p2}, Lcom/amazon/identity/auth/device/bn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;)V

    .line 530
    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/bn;->hi:Z

    if-eqz v0, :cond_3

    return-void

    .line 536
    :cond_3
    sget-object v0, Lcom/amazon/identity/auth/device/h;->m:Lcom/amazon/identity/auth/device/c;

    new-instance v8, Lcom/amazon/identity/auth/device/bn$4;

    move-object v1, v8

    move-object v2, p0

    move-object v6, p1

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/amazon/identity/auth/device/bn$4;-><init>(Lcom/amazon/identity/auth/device/bn;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)V

    const-string p1, "authorizeLinkCode"

    invoke-virtual {v0, v8, p2, p1}, Lcom/amazon/identity/auth/device/c;->a(Lcom/amazon/identity/auth/device/c$b;Lcom/amazon/identity/auth/device/api/Callback;Ljava/lang/String;)V

    return-void
.end method
