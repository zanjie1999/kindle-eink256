.class public Lcom/amazon/identity/auth/device/jv;
.super Lcom/amazon/identity/auth/device/framework/RetryLogic;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.jv"


# instance fields
.field private jD:I

.field private mContext:Landroid/content/Context;

.field private rF:Lcom/amazon/identity/auth/device/ju;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/ju;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/framework/RetryLogic;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/amazon/identity/auth/device/jv;->jD:I

    .line 30
    iput-object p2, p0, Lcom/amazon/identity/auth/device/jv;->rF:Lcom/amazon/identity/auth/device/ju;

    .line 31
    iput-object p1, p0, Lcom/amazon/identity/auth/device/jv;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Ljava/net/HttpURLConnection;ILcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/framework/RetryLogic$a;
    .locals 6

    .line 39
    iget v0, p0, Lcom/amazon/identity/auth/device/jv;->jD:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/identity/auth/device/jv;->jD:I

    .line 41
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    .line 45
    :try_start_0
    invoke-static {v0}, Lcom/amazon/identity/auth/device/mm;->h(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/amazon/identity/auth/device/ej;->bz(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v2

    .line 49
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 50
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/ms;->iO()V

    const/4 v4, 0x0

    .line 53
    iget-object v5, p0, Lcom/amazon/identity/auth/device/jv;->rF:Lcom/amazon/identity/auth/device/ju;

    if-eqz v5, :cond_0

    .line 55
    iget-object v4, p0, Lcom/amazon/identity/auth/device/jv;->rF:Lcom/amazon/identity/auth/device/ju;

    invoke-interface {v4, p1}, Lcom/amazon/identity/auth/device/ju;->g(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v4

    .line 57
    :cond_0
    invoke-static {v0, v3, v4}, Lcom/amazon/identity/auth/device/mm;->a(Ljava/net/URL;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/amazon/identity/auth/device/ms;->eN(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/ms;->stop()V

    .line 61
    invoke-static {v3}, Lcom/amazon/identity/auth/device/framework/RetryLogic;->j(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 63
    invoke-static {v0}, Lcom/amazon/identity/auth/device/framework/RetryLogic;->b(Ljava/net/URL;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 67
    new-instance p1, Lcom/amazon/identity/auth/device/framework/RetryLogic$a;

    sget-object p2, Lcom/amazon/identity/auth/device/framework/RetryLogic$RetryErrorMessageFromServerSide;->BackoffError:Lcom/amazon/identity/auth/device/framework/RetryLogic$RetryErrorMessageFromServerSide;

    invoke-direct {p1, p2}, Lcom/amazon/identity/auth/device/framework/RetryLogic$a;-><init>(Lcom/amazon/identity/auth/device/framework/RetryLogic$RetryErrorMessageFromServerSide;)V

    return-object p1

    .line 69
    :cond_1
    sget-object p1, Lcom/amazon/identity/auth/device/jv;->TAG:Ljava/lang/String;

    const-string p2, "Got response code %d. Retrying"

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p1, p2, v2}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    new-instance p1, Lcom/amazon/identity/auth/device/framework/RetryLogic$a;

    sget-object p2, Lcom/amazon/identity/auth/device/framework/RetryLogic$RetryErrorMessageFromServerSide;->ServerInternalError:Lcom/amazon/identity/auth/device/framework/RetryLogic$RetryErrorMessageFromServerSide;

    invoke-direct {p1, p2}, Lcom/amazon/identity/auth/device/framework/RetryLogic$a;-><init>(Lcom/amazon/identity/auth/device/framework/RetryLogic$RetryErrorMessageFromServerSide;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 95
    :cond_2
    iget p1, p0, Lcom/amazon/identity/auth/device/jv;->jD:I

    invoke-static {p1, v0, p3}, Lcom/amazon/identity/auth/device/framework/RetryLogic;->a(ILjava/net/URL;Lcom/amazon/identity/auth/device/ej;)V

    if-lez p2, :cond_3

    .line 100
    invoke-static {v0}, Lcom/amazon/identity/auth/device/mm;->k(Ljava/net/URL;)Ljava/lang/String;

    move-result-object p1

    .line 101
    sget-object p2, Lcom/amazon/identity/auth/device/jv;->TAG:Ljava/lang/String;

    invoke-static {p2, p3, p1, p1}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_3
    new-instance p1, Lcom/amazon/identity/auth/device/framework/RetryLogic$a;

    invoke-direct {p1}, Lcom/amazon/identity/auth/device/framework/RetryLogic$a;-><init>()V

    return-object p1

    :catch_0
    move-exception p1

    .line 75
    iget-object p2, p0, Lcom/amazon/identity/auth/device/jv;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/amazon/identity/auth/device/mm;->aN(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 80
    iget p2, p0, Lcom/amazon/identity/auth/device/jv;->jD:I

    sub-int/2addr p2, v1

    iput p2, p0, Lcom/amazon/identity/auth/device/jv;->jD:I

    .line 83
    :cond_4
    sget-object p2, Lcom/amazon/identity/auth/device/jv;->TAG:Ljava/lang/String;

    const-string v1, "IOException : "

    invoke-static {p2, v1, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    invoke-static {v0}, Lcom/amazon/identity/auth/device/mm;->i(Ljava/net/URL;)Ljava/lang/String;

    move-result-object p2

    .line 86
    sget-object v1, Lcom/amazon/identity/auth/device/jv;->TAG:Ljava/lang/String;

    invoke-static {v1, p3, p2, p2}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object p2, p0, Lcom/amazon/identity/auth/device/jv;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/amazon/identity/auth/device/mm;->a(Ljava/net/URL;Ljava/io/IOException;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 89
    sget-object v0, Lcom/amazon/identity/auth/device/jv;->TAG:Ljava/lang/String;

    invoke-static {v0, p3, p2, p2}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    new-instance p2, Lcom/amazon/identity/auth/device/framework/RetryLogic$a;

    invoke-direct {p2, p1}, Lcom/amazon/identity/auth/device/framework/RetryLogic$a;-><init>(Ljava/io/IOException;)V

    return-object p2
.end method

.method public cR()I
    .locals 1

    .line 117
    iget v0, p0, Lcom/amazon/identity/auth/device/jv;->jD:I

    return v0
.end method

.method h(Ljava/net/HttpURLConnection;)V
    .locals 2

    .line 108
    iget v0, p0, Lcom/amazon/identity/auth/device/jv;->jD:I

    if-lez v0, :cond_0

    invoke-static {}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->cc()Lcom/amazon/identity/auth/device/env/EnvironmentUtils;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->bc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget v0, p0, Lcom/amazon/identity/auth/device/jv;->jD:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "x-amzn-identity-retry-attempt"

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
