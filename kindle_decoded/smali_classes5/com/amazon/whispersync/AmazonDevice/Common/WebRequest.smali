.class public Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;
.super Ljava/lang/Object;
.source "WebRequest.java"


# instance fields
.field private mAuthenticationRequired:Z

.field private mBody:[B

.field private mBodyLen:J

.field private mCompressionRequired:Z

.field private final mHeaderNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHost:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private mPathAndQueryString:Ljava/lang/String;

.field private mPort:Ljava/lang/String;

.field private mProtocol:Ljava/lang/String;

.field private mQueryParameters:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private mVerb:Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "http"

    .line 33
    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->mProtocol:Ljava/lang/String;

    .line 34
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;->HttpVerbGet:Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;

    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->mVerb:Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->mHeaders:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->mHeaderNames:Ljava/util/List;

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 39
    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->mBody:[B

    return-void
.end method

.method public static isValidUrl(Ljava/lang/String;)Z
    .locals 1

    .line 323
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    invoke-direct {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;-><init>()V

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->tryToParseUrl(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private tryToParseUrl(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "/"

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 328
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 335
    :cond_0
    :try_start_0
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->mProtocol:Ljava/lang/String;

    .line 337
    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->mHost:Ljava/lang/String;

    .line 339
    invoke-virtual {v2}, Ljava/net/URI;->getPort()I

    move-result p1

    const/4 v3, -0x1

    if-eq p1, v3, :cond_1

    .line 342
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->mPort:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 346
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->mPort:Ljava/lang/String;

    .line 349
    :goto_0
    invoke-virtual {v2}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->mPath:Ljava/lang/String;

    if-eqz p1, :cond_2

    const-string v3, ""

    .line 350
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->mPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 352
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->mPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->mPath:Ljava/lang/String;

    .line 355
    :cond_2
    invoke-virtual {v2}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->mQueryParameters:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tryToParseUrl: URL is malformed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return v1
.end method


# virtual methods
.method public addQueryParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "UTF-8"

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-string v2, ""

    .line 227
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    if-nez p2, :cond_0

    goto :goto_2

    .line 234
    :cond_0
    iget-object v3, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->mQueryParameters:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->mQueryParameters:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->mQueryParameters:Ljava/lang/String;

    goto :goto_0

    .line 240
    :cond_1
    iput-object v2, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->mQueryParameters:Ljava/lang/String;

    .line 245
    :goto_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->mQueryParameters:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "%s=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v1

    const/4 p1, 0x1

    invoke-static {p2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v4, p1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->mQueryParameters:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 250
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addQueryParameter: Could not add query parameter because of UnsupportedEncodingException: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_2
    :goto_2
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "addQueryParameter: could not add query parameter because the supplied arguments are invalid (null or empty name or null value)."

    .line 229
    invoke-static {p2, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public getAuthenticationRequired()Z
    .locals 1

    .line 168
    iget-boolean v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->mAuthenticationRequired:Z

    return v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 147
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->getBodyBytes()[B

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->getBodyLength()J

    move-result-wide v3

    long-to-int v4, v3

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v0, v4, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBody: UnsupportedEncodingException error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, ""

    return-object v0
.end method

.method public getBodyBytes()[B
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->mBody:[B

    return-object v0
.end method

.method public getBodyLength()J
    .locals 2

    .line 163
    iget-wide v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->mBodyLen:J

    return-wide v0
.end method

.method public getCompressionRequired()Z
    .locals 1

    .line 173
    iget-boolean v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->mCompressionRequired:Z

    return v0
.end method

.method public getHeaderByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->mHeaders:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getHeaderName(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_1

    .line 112
    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->getNumHeaders()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->mHeaderNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "getHeader: index is out of range"

    .line 114
    invoke-static {v0, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getHeaderValue(I)Ljava/lang/String;
    .locals 0

    .line 123
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->getHeaderName(I)Ljava/lang/String;

    move-result-object p1

    .line 125
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->getHeaderByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->mHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getNumHeaders()I
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->mHeaderNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPathAndQueryString()Ljava/lang/String;
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->mPath:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 51
    :goto_0
    iget-object v2, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->mQueryParameters:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->mQueryParameters:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 56
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->mPathAndQueryString:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->mQueryParameters:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 3

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    iget-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->mProtocol:Ljava/lang/String;

    const-string v2, ""

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->mHost:Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object v2, v1

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->mPort:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->mPort:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->getPathAndQueryString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVerb()Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->mVerb:Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;

    return-object v0
.end method

.method public getVerbAsString()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->mVerb:Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setAuthenticationRequired(Z)V
    .locals 0

    .line 302
    iput-boolean p1, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->mAuthenticationRequired:Z

    return-void
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    const-string v0, "UTF-8"

    .line 285
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 286
    array-length v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->setBody([BJ)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBody: UnsupportedEncodingException error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setBody([BJ)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->mBody:[B

    .line 297
    iput-wide p2, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->mBodyLen:J

    return-void
.end method

.method public setCompressionRequired(Z)V
    .locals 0

    .line 307
    iput-boolean p1, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->mCompressionRequired:Z

    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_2

    const-string v0, ""

    .line 262
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 270
    iget-object p2, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->mHeaderNames:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 271
    iget-object p2, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->mHeaders:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    const-string v0, "\n"

    const-string v1, "\n "

    .line 275
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 277
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->mHeaderNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->mHeaders:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    :goto_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string/jumbo p2, "setHeader: failed because the given header name was null or empty."

    .line 264
    invoke-static {p2, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->mHost:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 208
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 215
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URI;

    const-string v1, "http"

    const-string/jumbo v2, "www.amazon.com"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->mPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPath: Could not set path because of URISyntaxException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setPort(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 197
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->mPort:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 201
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->mPort:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setProtocol(Lcom/amazon/whispersync/AmazonDevice/Common/WebProtocol;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 180
    invoke-virtual {p1}, Lcom/amazon/whispersync/AmazonDevice/Common/WebProtocol;->getValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->mProtocol:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 184
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->mProtocol:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setUrl(Ljava/lang/String;)Z
    .locals 2

    .line 312
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->tryToParseUrl(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string/jumbo v1, "setUrl: url was malformed. Cannot be set."

    .line 314
    invoke-static {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public setVerb(Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->mVerb:Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;

    return-void
.end method
