.class public Lcom/amazon/kindle/com/amazonaws/http/HttpRequestFactory;
.super Ljava/lang/Object;
.source "HttpRequestFactory.java"


# static fields
.field private static final DEFAULT_ENCODING:Ljava/lang/String; = "UTF-8"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private configureHeaders(Ljava/util/Map;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;",
            "Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;",
            "Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;",
            ")V"
        }
    .end annotation

    .line 129
    invoke-interface {p2}, Lcom/amazon/kindle/com/amazonaws/Request;->getEndpoint()Ljava/net/URI;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/util/HttpUtils;->isUsingNonDefaultPort(Ljava/net/URI;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v0, "Host"

    .line 134
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-interface {p2}, Lcom/amazon/kindle/com/amazonaws/Request;->getHeaders()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 138
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string p2, "Content-Type"

    .line 142
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 143
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "application/x-www-form-urlencoded; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "UTF-8"

    .line 145
    invoke-static {v1}, Lcom/amazon/kindle/com/amazonaws/util/StringUtils;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p3, :cond_4

    .line 150
    invoke-virtual {p3}, Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;->getContextUserAgent()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 152
    invoke-virtual {p3}, Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;->getContextUserAgent()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p4, p2}, Lcom/amazon/kindle/com/amazonaws/http/HttpRequestFactory;->createUserAgentString(Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "User-Agent"

    .line 151
    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method private createUserAgentString(Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 162
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;->getUserAgent()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 165
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;->getUserAgent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public createHttpRequest(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;)Lcom/amazon/kindle/com/amazonaws/http/HttpRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;",
            "Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;",
            "Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;",
            ")",
            "Lcom/amazon/kindle/com/amazonaws/http/HttpRequest;"
        }
    .end annotation

    .line 50
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getEndpoint()Ljava/net/URI;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getResourcePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/com/amazonaws/util/HttpUtils;->appendUri(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {p1}, Lcom/amazon/kindle/com/amazonaws/util/HttpUtils;->encodeParameters(Lcom/amazon/kindle/com/amazonaws/Request;)Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getHttpMethod()Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;

    move-result-object v3

    .line 66
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getContent()Ljava/io/InputStream;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 67
    :goto_0
    sget-object v6, Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;->POST:Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;

    if-ne v3, v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_3

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    :cond_4
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 76
    invoke-direct {p0, v2, p1, p3, p2}, Lcom/amazon/kindle/com/amazonaws/http/HttpRequestFactory;->configureHeaders(Ljava/util/Map;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;)V

    .line 78
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getContent()Ljava/io/InputStream;

    move-result-object p3

    .line 83
    sget-object v4, Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;->PATCH:Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;

    if-ne v3, v4, :cond_5

    .line 84
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;->POST:Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;

    .line 85
    sget-object v4, Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;->PATCH:Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "X-HTTP-Method-Override"

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_5
    sget-object v4, Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;->POST:Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;

    if-ne v3, v4, :cond_6

    .line 95
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getContent()Ljava/io/InputStream;

    move-result-object v4

    if-nez v4, :cond_6

    if-eqz v1, :cond_6

    .line 96
    sget-object p3, Lcom/amazon/kindle/com/amazonaws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p3

    .line 97
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 98
    array-length p3, p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string v4, "Content-Length"

    invoke-interface {v2, v4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p3, v1

    .line 104
    :cond_6
    invoke-virtual {p2}, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;->isEnableGzip()Z

    move-result p2

    const-string v1, "Accept-Encoding"

    if-eqz p2, :cond_7

    .line 105
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_7

    const-string p2, "gzip"

    .line 106
    invoke-interface {v2, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_7
    const-string p2, "identity"

    .line 108
    invoke-interface {v2, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :goto_3
    new-instance p2, Lcom/amazon/kindle/com/amazonaws/http/HttpRequest;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-direct {p2, v1, v0, v2, p3}, Lcom/amazon/kindle/com/amazonaws/http/HttpRequest;-><init>(Ljava/lang/String;Ljava/net/URI;Ljava/util/Map;Ljava/io/InputStream;)V

    .line 113
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/Request;->isStreaming()Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/amazon/kindle/com/amazonaws/http/HttpRequest;->setStreaming(Z)V

    return-object p2
.end method
