.class public Lcom/amazon/identity/auth/device/dm;
.super Lcom/amazon/identity/auth/device/framework/RetryLogic;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.dm"


# instance fields
.field private final aS:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser;

.field private jD:I

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/framework/RetryLogic;-><init>()V

    .line 23
    new-instance v0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser;-><init>()V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/dm;->aS:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser;

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/amazon/identity/auth/device/dm;->jD:I

    .line 31
    iput-object p1, p0, Lcom/amazon/identity/auth/device/dm;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Ljava/net/HttpURLConnection;ILcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/framework/RetryLogic$a;
    .locals 5

    .line 40
    iget v0, p0, Lcom/amazon/identity/auth/device/dm;->jD:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/identity/auth/device/dm;->jD:I

    .line 42
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    .line 47
    :try_start_0
    invoke-static {v0}, Lcom/amazon/identity/auth/device/mm;->h(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/amazon/identity/auth/device/ej;->bz(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v1

    .line 50
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 51
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/ms;->iO()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 57
    :try_start_1
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ih;->f(Ljava/net/HttpURLConnection;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 61
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/mm;->a(Ljava/net/URL;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":JSONException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 62
    sget-object v4, Lcom/amazon/identity/auth/device/dm;->TAG:Ljava/lang/String;

    invoke-static {v4, p3, v3, v3}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    sget-object v3, Lcom/amazon/identity/auth/device/dm;->TAG:Ljava/lang/String;

    const-string v4, "Got JSONException while parsing response."

    invoke-static {v3, v4, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 67
    :goto_0
    iget-object v3, p0, Lcom/amazon/identity/auth/device/dm;->aS:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser;

    invoke-virtual {v3, p1}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser;->h(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    .line 68
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 70
    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/mm;->a(Ljava/net/URL;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazon/identity/auth/device/ms;->eN(Ljava/lang/String;)V

    goto :goto_1

    .line 74
    :cond_0
    invoke-static {v0, v2, v3}, Lcom/amazon/identity/auth/device/mm;->a(Ljava/net/URL;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazon/identity/auth/device/ms;->eN(Ljava/lang/String;)V

    .line 76
    :goto_1
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/ms;->stop()V

    .line 79
    invoke-static {v2}, Lcom/amazon/identity/auth/device/framework/RetryLogic;->j(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    invoke-static {v0}, Lcom/amazon/identity/auth/device/framework/RetryLogic;->b(Ljava/net/URL;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 84
    new-instance p1, Lcom/amazon/identity/auth/device/framework/RetryLogic$a;

    sget-object p2, Lcom/amazon/identity/auth/device/framework/RetryLogic$RetryErrorMessageFromServerSide;->BackoffError:Lcom/amazon/identity/auth/device/framework/RetryLogic$RetryErrorMessageFromServerSide;

    invoke-direct {p1, p2}, Lcom/amazon/identity/auth/device/framework/RetryLogic$a;-><init>(Lcom/amazon/identity/auth/device/framework/RetryLogic$RetryErrorMessageFromServerSide;)V

    return-object p1

    .line 87
    :cond_1
    new-instance p1, Lcom/amazon/identity/auth/device/framework/RetryLogic$a;

    sget-object p2, Lcom/amazon/identity/auth/device/framework/RetryLogic$RetryErrorMessageFromServerSide;->ServerInternalError:Lcom/amazon/identity/auth/device/framework/RetryLogic$RetryErrorMessageFromServerSide;

    invoke-direct {p1, p2}, Lcom/amazon/identity/auth/device/framework/RetryLogic$a;-><init>(Lcom/amazon/identity/auth/device/framework/RetryLogic$RetryErrorMessageFromServerSide;)V

    return-object p1

    :cond_2
    if-nez p1, :cond_3

    .line 93
    sget-object p1, Lcom/amazon/identity/auth/device/dm;->TAG:Ljava/lang/String;

    const-string p2, "Malformed exchange token json response detected. Should retry if still within retry limit."

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    new-instance p1, Lcom/amazon/identity/auth/device/framework/RetryLogic$a;

    sget-object p2, Lcom/amazon/identity/auth/device/framework/RetryLogic$RetryErrorMessageFromServerSide;->InvalidJSON:Lcom/amazon/identity/auth/device/framework/RetryLogic$RetryErrorMessageFromServerSide;

    invoke-direct {p1, p2}, Lcom/amazon/identity/auth/device/framework/RetryLogic$a;-><init>(Lcom/amazon/identity/auth/device/framework/RetryLogic$RetryErrorMessageFromServerSide;)V

    return-object p1

    :cond_3
    if-lez p2, :cond_4

    .line 101
    invoke-static {v0}, Lcom/amazon/identity/auth/device/mm;->k(Ljava/net/URL;)Ljava/lang/String;

    move-result-object p1

    .line 102
    sget-object p2, Lcom/amazon/identity/auth/device/dm;->TAG:Ljava/lang/String;

    invoke-static {p2, p3, p1, p1}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_4
    iget p1, p0, Lcom/amazon/identity/auth/device/dm;->jD:I

    invoke-static {p1, v0, p3}, Lcom/amazon/identity/auth/device/framework/RetryLogic;->a(ILjava/net/URL;Lcom/amazon/identity/auth/device/ej;)V

    .line 107
    new-instance p1, Lcom/amazon/identity/auth/device/framework/RetryLogic$a;

    invoke-direct {p1}, Lcom/amazon/identity/auth/device/framework/RetryLogic$a;-><init>()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    .line 112
    sget-object p2, Lcom/amazon/identity/auth/device/dm;->TAG:Ljava/lang/String;

    const-string v1, "IOException while calling exchange token endpoint. Will retry. Exception : "

    invoke-static {p2, v1, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    iget-object p2, p0, Lcom/amazon/identity/auth/device/dm;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/amazon/identity/auth/device/mm;->aN(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 119
    iget p2, p0, Lcom/amazon/identity/auth/device/dm;->jD:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/amazon/identity/auth/device/dm;->jD:I

    .line 122
    :cond_5
    invoke-static {v0}, Lcom/amazon/identity/auth/device/mm;->i(Ljava/net/URL;)Ljava/lang/String;

    move-result-object p2

    .line 123
    sget-object v1, Lcom/amazon/identity/auth/device/dm;->TAG:Ljava/lang/String;

    invoke-static {v1, p3, p2, p2}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object p2, p0, Lcom/amazon/identity/auth/device/dm;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/amazon/identity/auth/device/mm;->a(Ljava/net/URL;Ljava/io/IOException;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 126
    sget-object v0, Lcom/amazon/identity/auth/device/dm;->TAG:Ljava/lang/String;

    invoke-static {v0, p3, p2, p2}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    new-instance p2, Lcom/amazon/identity/auth/device/framework/RetryLogic$a;

    invoke-direct {p2, p1}, Lcom/amazon/identity/auth/device/framework/RetryLogic$a;-><init>(Ljava/io/IOException;)V

    return-object p2
.end method

.method public cR()I
    .locals 1

    .line 135
    iget v0, p0, Lcom/amazon/identity/auth/device/dm;->jD:I

    return v0
.end method
