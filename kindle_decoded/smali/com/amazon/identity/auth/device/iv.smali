.class public Lcom/amazon/identity/auth/device/iv;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field public static final rk:Ljava/lang/String;


# instance fields
.field private final aS:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AmazonWebView/MAPClientLib/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lcom/amazon/identity/auth/device/hs;->gu()Lcom/amazon/identity/auth/device/hs;

    move-result-object v1

    iget v1, v1, Lcom/amazon/identity/auth/device/hs;->qF:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/Android/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/iv;->rk:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser;-><init>()V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/iv;->aS:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser;

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Ljava/net/HttpURLConnection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/token/MAPCookie;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/ej;",
            ")",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-virtual {p0, p1, p2, p5, p7}, Lcom/amazon/identity/auth/device/iv;->a(Landroid/content/Context;Ljava/net/URL;Ljava/util/List;Lcom/amazon/identity/auth/device/ej;)Ljava/net/HttpURLConnection;

    move-result-object p5

    const-string p7, "Content-Type"

    .line 66
    invoke-virtual {p5, p7, p3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p1

    invoke-static {p1, p6}, Lcom/amazon/identity/auth/device/ho;->n(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p3, "x-amzn-identity-auth-domain"

    .line 69
    invoke-virtual {p5, p3, p1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Starting request to endpoint "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "RequestHelper"

    invoke-static {p2, p1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object p4, p1, p2

    const-string p2, "Request body: %s"

    .line 72
    invoke-static {p2, p1}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    invoke-virtual {p5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    .line 74
    new-instance p2, Ljava/io/OutputStreamWriter;

    const-string p3, "UTF-8"

    invoke-direct {p2, p1, p3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 77
    :try_start_0
    invoke-virtual {p2, p4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ja;->a(Ljava/io/Closeable;)V

    .line 83
    invoke-static {p2}, Lcom/amazon/identity/auth/device/ja;->a(Ljava/io/Closeable;)V

    return-object p5

    :catchall_0
    move-exception p3

    .line 82
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ja;->a(Ljava/io/Closeable;)V

    .line 83
    invoke-static {p2}, Lcom/amazon/identity/auth/device/ja;->a(Ljava/io/Closeable;)V

    .line 84
    throw p3
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/net/URL;Lcom/amazon/identity/auth/device/ji$b;Ljava/util/List;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Ljava/net/HttpURLConnection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/net/URL;",
            "Lcom/amazon/identity/auth/device/ji$b;",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/token/MAPCookie;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/ej;",
            ")",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/ji$b;->gW()Ljava/lang/String;

    move-result-object v4

    const-string v3, "application/x-www-form-urlencoded"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 98
    invoke-direct/range {v0 .. v7}, Lcom/amazon/identity/auth/device/iv;->a(Landroid/content/Context;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;Ljava/net/URL;Ljava/util/List;Lcom/amazon/identity/auth/device/ej;)Ljava/net/HttpURLConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/net/URL;",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/token/MAPCookie;",
            ">;",
            "Lcom/amazon/identity/auth/device/ej;",
            ")",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    new-instance v0, Lcom/amazon/identity/auth/device/dm;

    invoke-direct {v0, p1}, Lcom/amazon/identity/auth/device/dm;-><init>(Landroid/content/Context;)V

    .line 126
    invoke-static {p2, v0, p4, p1}, Lcom/amazon/identity/auth/device/cy;->a(Ljava/net/URL;Lcom/amazon/identity/auth/device/framework/RetryLogic;Lcom/amazon/identity/auth/device/ej;Landroid/content/Context;)Ljava/net/HttpURLConnection;

    move-result-object p1

    const/4 p2, 0x1

    .line 139
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    if-eqz p3, :cond_0

    .line 141
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p4

    if-lez p4, :cond_0

    .line 143
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/amazon/identity/auth/device/token/MAPCookie;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 145
    invoke-virtual {p4}, Lcom/amazon/identity/auth/device/token/MAPCookie;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p4}, Lcom/amazon/identity/auth/device/token/MAPCookie;->getValue()Ljava/lang/String;

    move-result-object p4

    aput-object p4, v0, p2

    const-string p4, "%s=%s"

    invoke-static {p4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    const-string v0, "Cookie"

    invoke-virtual {p1, v0, p4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p2, "POST"

    .line 149
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 152
    sget-object p2, Lcom/amazon/identity/auth/device/iv;->rk:Ljava/lang/String;

    const-string p3, "User-Agent"

    invoke-virtual {p1, p3, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public a(Landroid/content/Context;Ljava/net/URL;Lorg/json/JSONObject;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Ljava/net/HttpURLConnection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/net/URL;",
            "Lorg/json/JSONObject;",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/token/MAPCookie;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/ej;",
            ")",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v3, "application/json"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    move-object v6, p5

    move-object v7, p7

    .line 112
    invoke-direct/range {v0 .. v7}, Lcom/amazon/identity/auth/device/iv;->a(Landroid/content/Context;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Integer;)Z
    .locals 0

    .line 159
    invoke-static {p1}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser;->a(Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method
