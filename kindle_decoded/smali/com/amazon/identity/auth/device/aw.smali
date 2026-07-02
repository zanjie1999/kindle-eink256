.class public Lcom/amazon/identity/auth/device/aw;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.aw"


# instance fields
.field private final dM:Lcom/amazon/identity/auth/device/kc;

.field private final dN:Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;

.field private final o:Lcom/amazon/identity/auth/device/ed;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/aw;->o:Lcom/amazon/identity/auth/device/ed;

    .line 48
    new-instance p1, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/aw;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {p1, v0}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;-><init>(Lcom/amazon/identity/auth/device/ed;)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/aw;->dN:Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;

    .line 50
    new-instance p1, Lcom/amazon/identity/auth/device/kc;

    invoke-direct {p1}, Lcom/amazon/identity/auth/device/kc;-><init>()V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/aw;->dM:Lcom/amazon/identity/auth/device/kc;

    return-void
.end method

.method private aw()Ljava/net/URL;
    .locals 2

    .line 151
    :try_start_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "https"

    .line 152
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 153
    invoke-static {}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->cc()Lcom/amazon/identity/auth/device/env/EnvironmentUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->cl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "FirsProxy"

    .line 154
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "getStoreCredentials"

    .line 155
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 157
    new-instance v1, Ljava/net/URL;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 161
    :catch_0
    sget-object v0, Lcom/amazon/identity/auth/device/aw;->TAG:Ljava/lang/String;

    const-string v1, "Cannot construct store credentials request"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private b(Ljava/net/HttpURLConnection;)Lcom/amazon/identity/auth/device/gb;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 107
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 108
    :try_start_1
    invoke-static {v1}, Lcom/amazon/identity/auth/device/ja;->a(Ljava/io/InputStream;)[B

    move-result-object v2

    .line 110
    new-instance v3, Lcom/amazon/identity/auth/device/mh;

    invoke-direct {v3}, Lcom/amazon/identity/auth/device/mh;-><init>()V

    .line 111
    array-length v4, v2

    int-to-long v4, v4

    invoke-virtual {v3, v2, v4, v5}, Lcom/amazon/identity/auth/device/mh;->c([BJ)Z

    .line 116
    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/mh;->iK()Lorg/w3c/dom/Document;

    move-result-object v3

    if-nez v3, :cond_0

    .line 119
    sget-object v2, Lcom/amazon/identity/auth/device/aw;->TAG:Ljava/lang/String;

    const-string v3, "Could not parse get Store credentials response XML"

    invoke-static {v2, v3}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    invoke-static {v1}, Lcom/amazon/identity/auth/device/ja;->a(Ljava/io/Closeable;)V

    return-object v0

    .line 123
    :cond_0
    :try_start_2
    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 124
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "response"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "cookies"

    .line 131
    invoke-static {v3, v0}, Lcom/amazon/identity/auth/device/mi;->a(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 132
    iget-object v2, p0, Lcom/amazon/identity/auth/device/aw;->dM:Lcom/amazon/identity/auth/device/kc;

    invoke-virtual {v2, v0}, Lcom/amazon/identity/auth/device/kc;->b(Lorg/w3c/dom/Element;)Ljava/util/List;

    move-result-object v0

    .line 134
    new-instance v2, Lcom/amazon/identity/auth/device/gb;

    invoke-direct {v2, v0}, Lcom/amazon/identity/auth/device/gb;-><init>(Ljava/util/List;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    invoke-static {v1}, Lcom/amazon/identity/auth/device/ja;->a(Ljava/io/Closeable;)V

    return-object v2

    .line 126
    :cond_2
    :goto_0
    :try_start_3
    sget-object v3, Lcom/amazon/identity/auth/device/aw;->TAG:Ljava/lang/String;

    const-string v4, "Get Store Credentials request form was invalid. Could not get cookies"

    invoke-static {v3, v4}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Store Credentials response: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 127
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v2}, Ljava/lang/String;-><init>([B)V

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 143
    invoke-static {v1}, Lcom/amazon/identity/auth/device/ja;->a(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_1
    :try_start_4
    const-string v2, "Get Kindle Store Credentials Service"

    .line 138
    invoke-static {p1, v2}, Lcom/amazon/identity/auth/device/cy;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    .line 139
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 143
    :goto_2
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ja;->a(Ljava/io/Closeable;)V

    .line 144
    throw p1
.end method


# virtual methods
.method public at(Ljava/lang/String;)Z
    .locals 3

    .line 55
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/aw;->au(Ljava/lang/String;)Lcom/amazon/identity/auth/device/gb;

    move-result-object v0

    if-nez v0, :cond_0

    .line 58
    sget-object p1, Lcom/amazon/identity/auth/device/aw;->TAG:Ljava/lang/String;

    const-string v0, "Cannot update store credential cookies"

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 62
    :cond_0
    new-instance v1, Lcom/amazon/identity/auth/device/fv;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, v2}, Lcom/amazon/identity/auth/device/fv;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 63
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/gb;->fb()Ljava/lang/String;

    move-result-object p1

    const-string v2, "com.amazon.dcp.sso.token.cookie.xmain"

    invoke-virtual {v1, v2, p1}, Lcom/amazon/identity/auth/device/fv;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/gb;->fc()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.amazon.dcp.sso.token.cookie.xmainAndXabcCookies"

    .line 64
    invoke-virtual {v1, v0, p1}, Lcom/amazon/identity/auth/device/fv;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object p1, p0, Lcom/amazon/identity/auth/device/aw;->dN:Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;

    invoke-virtual {p1, v1}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->a(Lcom/amazon/identity/auth/device/fv;)V

    const/4 p1, 0x1

    return p1
.end method

.method public au(Ljava/lang/String;)Lcom/amazon/identity/auth/device/gb;
    .locals 6

    const/4 v0, 0x0

    .line 75
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/aw;->aw()Ljava/net/URL;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 81
    :cond_0
    new-instance v2, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/aw;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {v2, v3, p1}, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 83
    sget-object p1, Lcom/amazon/identity/auth/device/api/AuthenticationType;->ADPAuthenticator:Lcom/amazon/identity/auth/device/api/AuthenticationType;

    .line 84
    invoke-virtual {v2, p1}, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;->newAuthenticationMethod(Lcom/amazon/identity/auth/device/api/AuthenticationType;)Lcom/amazon/identity/auth/device/api/AuthenticationMethod;

    move-result-object p1

    .line 86
    invoke-static {v1, p1}, Lcom/amazon/identity/auth/device/cy;->openConnection(Ljava/net/URL;Lcom/amazon/identity/auth/device/api/AuthenticationMethod;)Ljava/net/HttpURLConnection;

    move-result-object p1

    const-string v1, "GET"

    .line 87
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 89
    invoke-static {p1}, Lcom/amazon/identity/auth/device/framework/RetryLogic;->d(Ljava/net/HttpURLConnection;)I

    move-result v1

    .line 90
    sget-object v2, Lcom/amazon/identity/auth/device/aw;->TAG:Ljava/lang/String;

    const-string v3, "Received Response %d from Firs Proxy getStoreCredentials"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/aw;->b(Ljava/net/HttpURLConnection;)Lcom/amazon/identity/auth/device/gb;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 96
    sget-object v1, Lcom/amazon/identity/auth/device/aw;->TAG:Ljava/lang/String;

    const-string v2, "Could not get cookies because we could not reach get Store Cookies endpoint."

    invoke-static {v1, v2, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method
