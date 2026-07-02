.class public Lcom/amazon/identity/auth/device/ma;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.ma"


# instance fields
.field private final hO:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rU:Ljava/lang/String;

.field private uA:Ljava/lang/String;

.field private uB:Ljava/lang/String;

.field private uC:Ljava/lang/String;

.field private uD:Ljava/lang/String;

.field private uE:Lcom/amazon/identity/kcpsdk/common/HttpVerb;

.field private uF:[B

.field private uG:Z

.field private uH:Ljava/lang/String;

.field private final uy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private uz:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "http"

    .line 44
    iput-object v0, p0, Lcom/amazon/identity/auth/device/ma;->uz:Ljava/lang/String;

    .line 45
    sget-object v0, Lcom/amazon/identity/kcpsdk/common/HttpVerb;->HttpVerbGet:Lcom/amazon/identity/kcpsdk/common/HttpVerb;

    iput-object v0, p0, Lcom/amazon/identity/auth/device/ma;->uE:Lcom/amazon/identity/kcpsdk/common/HttpVerb;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/ma;->hO:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/ma;->uy:Ljava/util/List;

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 50
    iput-object v0, p0, Lcom/amazon/identity/auth/device/ma;->uF:[B

    return-void
.end method

.method private eK(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "/"

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const-string v2, ""

    .line 326
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 333
    :cond_0
    :try_start_0
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v3}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/ma;->uz:Ljava/lang/String;

    .line 335
    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/ma;->uA:Ljava/lang/String;

    .line 337
    invoke-virtual {v3}, Ljava/net/URI;->getPort()I

    move-result p1

    const/4 v4, -0x1

    if-eq p1, v4, :cond_1

    .line 340
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/ma;->uB:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 344
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ma;->uB:Ljava/lang/String;

    .line 347
    :goto_0
    invoke-virtual {v3}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/ma;->uC:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 348
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/amazon/identity/auth/device/ma;->uC:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 350
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amazon/identity/auth/device/ma;->uC:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/ma;->uC:Ljava/lang/String;

    .line 353
    :cond_2
    invoke-virtual {v3}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/ma;->uD:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 358
    sget-object v0, Lcom/amazon/identity/auth/device/ma;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "tryToParseUrl: URL is malformed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return v1
.end method

.method public static isValidUrl(Ljava/lang/String;)Z
    .locals 1

    .line 321
    new-instance v0, Lcom/amazon/identity/auth/device/ma;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/ma;-><init>()V

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/ma;->eK(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Lcom/amazon/identity/auth/device/framework/RetryLogic;Landroid/content/Context;Lcom/amazon/identity/auth/device/ej;)Ljava/net/HttpURLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ma;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-static {v0, p1, p3, p2}, Lcom/amazon/identity/auth/device/dy;->a(Ljava/net/URL;Lcom/amazon/identity/auth/device/framework/RetryLogic;Lcom/amazon/identity/auth/device/ej;Landroid/content/Context;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/amazon/identity/kcpsdk/common/HttpVerb;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ma;->uE:Lcom/amazon/identity/kcpsdk/common/HttpVerb;

    return-void
.end method

.method public a(Lcom/amazon/identity/kcpsdk/common/WebProtocol;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 183
    invoke-virtual {p1}, Lcom/amazon/identity/kcpsdk/common/WebProtocol;->getValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/ma;->uz:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 187
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ma;->uz:Ljava/lang/String;

    return-void
.end method

.method public aw(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "UTF-8"

    if-eqz p1, :cond_2

    const-string v1, ""

    .line 230
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 238
    :cond_0
    iget-object v2, p0, Lcom/amazon/identity/auth/device/ma;->uD:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/identity/auth/device/ma;->uD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/identity/auth/device/ma;->uD:Ljava/lang/String;

    goto :goto_0

    .line 244
    :cond_1
    iput-object v1, p0, Lcom/amazon/identity/auth/device/ma;->uD:Ljava/lang/String;

    .line 249
    :goto_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/identity/auth/device/ma;->uD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%s=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 250
    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    const/4 p1, 0x1

    invoke-static {p2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, p1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/ma;->uD:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 254
    sget-object p2, Lcom/amazon/identity/auth/device/ma;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addQueryParameter: Could not add query parameter because of UnsupportedEncodingException: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 254
    invoke-static {p2, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 232
    :cond_2
    :goto_1
    sget-object p1, Lcom/amazon/identity/auth/device/ma;->TAG:Ljava/lang/String;

    const-string p2, "addQueryParameter: could not add query parameter because the supplied arguments are invalid (null or empty name or null value)."

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dK(Ljava/lang/String;)Z
    .locals 1

    .line 310
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/ma;->eK(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 312
    sget-object p1, Lcom/amazon/identity/auth/device/ma;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "setUrl: url was malformed. Cannot be set."

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public eI(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ma;->hO:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public eJ(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    const-string v0, "UTF-8"

    .line 289
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 290
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/ma;->j([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 294
    sget-object v0, Lcom/amazon/identity/auth/device/ma;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setBody: UnsupportedEncodingException error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getUrl()Ljava/lang/String;
    .locals 3

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    iget-object v1, p0, Lcom/amazon/identity/auth/device/ma;->uz:Ljava/lang/String;

    const-string v2, ""

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-object v1, p0, Lcom/amazon/identity/auth/device/ma;->uA:Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object v2, v1

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget-object v1, p0, Lcom/amazon/identity/auth/device/ma;->uB:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amazon/identity/auth/device/ma;->uB:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ma;->iA()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/ma;->rU:Ljava/lang/String;

    return-object v0
.end method

.method public iA()Ljava/lang/String;
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ma;->uC:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 62
    :goto_0
    iget-object v2, p0, Lcom/amazon/identity/auth/device/ma;->uD:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "?"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amazon/identity/auth/device/ma;->uD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 67
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/ma;->uH:Ljava/lang/String;

    return-object v0
.end method

.method public iB()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ma;->uD:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public iC()Lcom/amazon/identity/kcpsdk/common/HttpVerb;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ma;->uE:Lcom/amazon/identity/kcpsdk/common/HttpVerb;

    return-object v0
.end method

.method public iD()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ma;->uE:Lcom/amazon/identity/kcpsdk/common/HttpVerb;

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0}, Lcom/amazon/identity/kcpsdk/common/HttpVerb;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public iE()I
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ma;->uy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public iF()[B
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ma;->uF:[B

    return-object v0
.end method

.method public iG()Z
    .locals 1

    .line 176
    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/ma;->uG:Z

    return v0
.end method

.method public iH()V
    .locals 1

    const/16 v0, 0x1bb

    .line 200
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/ma;->uB:Ljava/lang/String;

    return-void
.end method

.method public j([B)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ma;->uF:[B

    return-void
.end method

.method public m(Z)V
    .locals 0

    .line 305
    iput-boolean p1, p0, Lcom/amazon/identity/auth/device/ma;->uG:Z

    return-void
.end method

.method public o(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_1

    .line 129
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ma;->iE()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ma;->uy:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 131
    :cond_1
    :goto_0
    sget-object p1, Lcom/amazon/identity/auth/device/ma;->TAG:Ljava/lang/String;

    const-string v0, "getHeader: index is out of range"

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public p(I)Ljava/lang/String;
    .locals 0

    .line 140
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/ma;->o(I)Ljava/lang/String;

    move-result-object p1

    .line 142
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/ma;->eI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_2

    const-string v0, ""

    .line 266
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 274
    iget-object p2, p0, Lcom/amazon/identity/auth/device/ma;->uy:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 275
    iget-object p2, p0, Lcom/amazon/identity/auth/device/ma;->hO:Ljava/util/Map;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    const-string v0, "\n"

    const-string v1, "\n "

    .line 279
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 281
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ma;->uy:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ma;->hO:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 268
    :cond_2
    :goto_0
    sget-object p1, Lcom/amazon/identity/auth/device/ma;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "setHeader: failed because the given header name was null or empty."

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ma;->uA:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 4

    const-string v0, ""

    .line 211
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 213
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 218
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URI;

    const-string v1, "http"

    const-string/jumbo v2, "www.amazon.com"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-virtual {v0}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/ma;->uC:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 223
    sget-object v0, Lcom/amazon/identity/auth/device/ma;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setPath: Could not set path because of URISyntaxException: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
