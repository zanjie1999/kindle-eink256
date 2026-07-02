.class public Lcom/amazon/identity/auth/device/bd;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.bd"


# instance fields
.field private bO:Lcom/amazon/identity/auth/device/ej;

.field private gN:Ljava/lang/String;

.field private gO:Ljava/lang/String;

.field private gP:Ljava/net/HttpURLConnection;

.field private mAccessToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Set;Lcom/amazon/identity/auth/device/ej;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazon/identity/auth/device/ej;",
            ")V"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/amazon/identity/auth/device/bd;->mAccessToken:Ljava/lang/String;

    .line 70
    invoke-static {}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->cc()Lcom/amazon/identity/auth/device/env/EnvironmentUtils;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->x(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/bd;->gN:Ljava/lang/String;

    .line 71
    invoke-static {p2}, Lcom/amazon/identity/auth/device/ho;->F(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    .line 72
    invoke-static {}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->cc()Lcom/amazon/identity/auth/device/env/EnvironmentUtils;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->getPandaHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/bd;->gO:Ljava/lang/String;

    .line 73
    iput-object p4, p0, Lcom/amazon/identity/auth/device/bd;->bO:Lcom/amazon/identity/auth/device/ej;

    .line 74
    invoke-direct {p0, p3}, Lcom/amazon/identity/auth/device/bd;->e(Ljava/util/Set;)Ljava/net/HttpURLConnection;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/bd;->gP:Ljava/net/HttpURLConnection;

    return-void
.end method

.method private e(Ljava/util/Set;)Ljava/net/HttpURLConnection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .line 1133
    invoke-static {p1}, Lcom/amazon/identity/auth/device/hw;->f(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "/user/profile"

    goto :goto_1

    .line 1137
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1138
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1140
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, "&"

    .line 1142
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v2, "attributes="

    .line 1144
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1146
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "/user/profile?"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    const/4 v0, 0x1

    .line 99
    :try_start_0
    invoke-static {}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->cc()Lcom/amazon/identity/auth/device/env/EnvironmentUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/identity/auth/device/bd;->gO:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 109
    :try_start_1
    invoke-static {p1}, Lcom/amazon/identity/auth/device/cy;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const-string v1, "GET"

    .line 110
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const-string v0, "Authorization"

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bearer "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amazon/identity/auth/device/bd;->mAccessToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "User-Agent"

    .line 114
    sget-object v1, Lcom/amazon/identity/auth/device/iv;->rk:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "x-amzn-identity-auth-domain"

    .line 115
    iget-object v1, p0, Lcom/amazon/identity/auth/device/bd;->gN:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    sget-object v0, Lcom/amazon/identity/auth/device/bd;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PandaUserProfileRequest url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 122
    sget-object v0, Lcom/amazon/identity/auth/device/bd;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/bd;->bO:Lcom/amazon/identity/auth/device/ej;

    const-string v2, "IOException happens when trying to open Panda connection"

    const-string v3, "MAPUserProfileError:IOException"

    invoke-static {v0, v1, v2, v3, p1}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1

    :catch_1
    move-exception v1

    .line 103
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v0, v3

    const-string p1, "MalformedURLException when generating %s url. This should never happen."

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method a(Lorg/json/JSONObject;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 236
    invoke-static {p2}, Lcom/amazon/identity/auth/device/hw;->f(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    if-eqz p1, :cond_5

    .line 241
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 248
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 250
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 252
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 260
    :cond_3
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 261
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 263
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 268
    :catch_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0

    .line 243
    :cond_5
    :goto_1
    sget-object p1, Lcom/amazon/identity/auth/device/bd;->TAG:Ljava/lang/String;

    const-string p2, "ProfileJSON is null or empty"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bm()Lorg/json/JSONObject;
    .locals 6

    const/4 v0, 0x0

    .line 180
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/bd;->gP:Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 223
    iget-object v1, p0, Lcom/amazon/identity/auth/device/bd;->gP:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_0

    .line 225
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-object v0

    .line 186
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/amazon/identity/auth/device/bd;->gP:Ljava/net/HttpURLConnection;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/framework/RetryLogic;->e(Ljava/net/HttpURLConnection;)V

    .line 188
    iget-object v1, p0, Lcom/amazon/identity/auth/device/bd;->gP:Ljava/net/HttpURLConnection;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/framework/RetryLogic;->d(Ljava/net/HttpURLConnection;)I

    move-result v1

    .line 189
    sget-object v2, Lcom/amazon/identity/auth/device/bd;->TAG:Ljava/lang/String;

    const-string v3, "Response received from Panda user profile API. Response Code:"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    new-instance v2, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser;

    invoke-direct {v2}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser;-><init>()V

    .line 192
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser;->a(Ljava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 194
    sget-object v1, Lcom/amazon/identity/auth/device/bd;->TAG:Ljava/lang/String;

    const-string v2, "Error happens when calling Panda user profile api"

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    iget-object v1, p0, Lcom/amazon/identity/auth/device/bd;->gP:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_2

    .line 225
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    return-object v0

    .line 198
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/amazon/identity/auth/device/bd;->gP:Ljava/net/HttpURLConnection;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/ih;->f(Ljava/net/HttpURLConnection;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 201
    sget-object v2, Lcom/amazon/identity/auth/device/bd;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Panda user profile response json:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 223
    :cond_4
    iget-object v0, p0, Lcom/amazon/identity/auth/device/bd;->gP:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_5

    .line 225
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    return-object v1

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 215
    :try_start_3
    sget-object v2, Lcom/amazon/identity/auth/device/bd;->TAG:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/bd;->bO:Lcom/amazon/identity/auth/device/ej;

    const-string v4, "IOException happens when trying to call user profile"

    const-string v5, "MAPUserProfileError:IOException"

    invoke-static {v2, v3, v4, v5, v1}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 223
    iget-object v1, p0, Lcom/amazon/identity/auth/device/bd;->gP:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_6

    goto :goto_0

    :catch_1
    move-exception v1

    .line 207
    :try_start_4
    sget-object v2, Lcom/amazon/identity/auth/device/bd;->TAG:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/bd;->bO:Lcom/amazon/identity/auth/device/ej;

    const-string v4, "JSONException happens when trying to call user profile"

    const-string v5, "MAPUserProfileError:JSONException"

    invoke-static {v2, v3, v4, v5, v1}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 223
    iget-object v1, p0, Lcom/amazon/identity/auth/device/bd;->gP:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_6

    .line 225
    :goto_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    return-object v0

    .line 223
    :goto_1
    iget-object v1, p0, Lcom/amazon/identity/auth/device/bd;->gP:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_7

    .line 225
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 227
    :cond_7
    throw v0
.end method

.method public c(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 156
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/bd;->bm()Lorg/json/JSONObject;

    move-result-object v0

    .line 157
    invoke-virtual {p0, v0, p1}, Lcom/amazon/identity/auth/device/bd;->a(Lorg/json/JSONObject;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method
