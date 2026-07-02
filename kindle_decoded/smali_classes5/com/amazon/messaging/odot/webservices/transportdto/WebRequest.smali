.class public Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;
.super Ljava/lang/Object;
.source "WebRequest.java"


# static fields
.field private static TAG:Ljava/lang/String;


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

.field private mVerb:Lcom/amazon/messaging/odot/webservices/transportdto/HttpVerb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;

    invoke-static {v0}, Lcom/amazon/messaging/odot/util/OdotMessageUtil;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "http"

    .line 40
    iput-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->mProtocol:Ljava/lang/String;

    .line 41
    sget-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/HttpVerb;->HttpVerbGet:Lcom/amazon/messaging/odot/webservices/transportdto/HttpVerb;

    iput-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->mVerb:Lcom/amazon/messaging/odot/webservices/transportdto/HttpVerb;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->mHeaders:Ljava/util/Map;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->mHeaderNames:Ljava/util/List;

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 46
    iput-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->mBody:[B

    return-void
.end method


# virtual methods
.method public getAuthenticationRequired()Z
    .locals 1

    .line 151
    iget-boolean v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->mAuthenticationRequired:Z

    return v0
.end method

.method public getBodyBytes()[B
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->mBody:[B

    return-object v0
.end method

.method public getBodyLength()J
    .locals 2

    .line 147
    iget-wide v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->mBodyLen:J

    return-wide v0
.end method

.method public getCompressionRequired()Z
    .locals 1

    .line 155
    iget-boolean v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->mCompressionRequired:Z

    return v0
.end method

.method public getHeaderByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->mHeaders:Ljava/util/Map;

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

    .line 107
    invoke-virtual {p0}, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->getNumHeaders()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->mHeaderNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 108
    :cond_1
    :goto_0
    sget-object p1, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->TAG:Ljava/lang/String;

    const-string v0, "getHeader: index is out of range"

    invoke-static {p1, v0}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getHeaderValue(I)Ljava/lang/String;
    .locals 0

    .line 116
    invoke-virtual {p0, p1}, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->getHeaderName(I)Ljava/lang/String;

    move-result-object p1

    .line 118
    invoke-virtual {p0, p1}, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->getHeaderByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNumHeaders()I
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->mHeaderNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPathAndQueryString()Ljava/lang/String;
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->mPath:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 56
    :goto_0
    iget-object v2, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->mQueryParameters:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->mQueryParameters:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 60
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->mPathAndQueryString:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 3

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    iget-object v1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->mProtocol:Ljava/lang/String;

    const-string v2, ""

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-object v1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->mHost:Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object v2, v1

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget-object v1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->mPort:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->mPort:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->getPathAndQueryString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVerbAsString()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->mVerb:Lcom/amazon/messaging/odot/webservices/transportdto/HttpVerb;

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0}, Lcom/amazon/messaging/odot/webservices/transportdto/HttpVerb;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setAuthenticationRequired(Z)V
    .locals 0

    .line 252
    iput-boolean p1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->mAuthenticationRequired:Z

    return-void
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    const-string v0, "UTF-8"

    .line 239
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 240
    array-length v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->setBody([BJ)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 242
    sget-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBody: UnsupportedEncodingException error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setBody([BJ)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->mBody:[B

    .line 248
    iput-wide p2, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->mBodyLen:J

    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_2

    const-string v0, ""

    .line 220
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 226
    iget-object p2, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->mHeaderNames:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 227
    iget-object p2, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->mHeaders:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    const-string v0, "\n"

    const-string v1, "\n "

    .line 231
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 233
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->mHeaderNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->mHeaders:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 221
    :cond_2
    :goto_0
    sget-object p1, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "setHeader: failed because the given header name was null or empty."

    invoke-static {p1, p2}, Lcom/amazon/messaging/odot/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->mHost:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 180
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 185
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URI;

    const-string v1, "http"

    const-string/jumbo v2, "www.amazon.com"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {v0}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->mPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 188
    sget-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPath: Could not set path because of URISyntaxException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setProtocol(Lcom/amazon/messaging/odot/webservices/transportdto/WebProtocol;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 160
    invoke-virtual {p1}, Lcom/amazon/messaging/odot/webservices/transportdto/WebProtocol;->getValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->mProtocol:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 162
    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->mProtocol:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setVerb(Lcom/amazon/messaging/odot/webservices/transportdto/HttpVerb;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->mVerb:Lcom/amazon/messaging/odot/webservices/transportdto/HttpVerb;

    return-void
.end method
