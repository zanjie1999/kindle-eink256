.class public Lcom/amazon/kindle/com/amazonaws/DefaultRequest;
.super Ljava/lang/Object;
.source "DefaultRequest.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/Request;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/com/amazonaws/Request<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private content:Ljava/io/InputStream;

.field private endpoint:Ljava/net/URI;

.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private httpMethod:Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;

.field private metrics:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;

.field private final originalRequest:Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;

.field private final parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private resourcePath:Ljava/lang/String;

.field private serviceName:Ljava/lang/String;

.field private streaming:Z

.field private timeOffset:I


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/amazon/kindle/com/amazonaws/DefaultRequest;->streaming:Z

    .line 47
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/DefaultRequest;->parameters:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/DefaultRequest;->headers:Ljava/util/Map;

    .line 65
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;->POST:Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/DefaultRequest;->httpMethod:Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;

    .line 86
    iput-object p2, p0, Lcom/amazon/kindle/com/amazonaws/DefaultRequest;->serviceName:Ljava/lang/String;

    .line 87
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/DefaultRequest;->originalRequest:Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/DefaultRequest;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/DefaultRequest;->parameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getAWSRequestMetrics()Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 314
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/DefaultRequest;->metrics:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;

    return-object v0
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/DefaultRequest;->content:Ljava/io/InputStream;

    return-object v0
.end method

.method public getEndpoint()Ljava/net/URI;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/DefaultRequest;->endpoint:Ljava/net/URI;

    return-object v0
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

    .line 126
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/DefaultRequest;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getHttpMethod()Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/DefaultRequest;->httpMethod:Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;

    return-object v0
.end method

.method public getOriginalRequest()Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/DefaultRequest;->originalRequest:Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;

    return-object v0
.end method

.method public getParameters()Ljava/util/Map;
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

    .line 159
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/DefaultRequest;->parameters:Ljava/util/Map;

    return-object v0
.end method

.method public getResourcePath()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/DefaultRequest;->resourcePath:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/DefaultRequest;->serviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeOffset()I
    .locals 1

    .line 251
    iget v0, p0, Lcom/amazon/kindle/com/amazonaws/DefaultRequest;->timeOffset:I

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .line 331
    iget-boolean v0, p0, Lcom/amazon/kindle/com/amazonaws/DefaultRequest;->streaming:Z

    return v0
.end method

.method public setAWSRequestMetrics(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/DefaultRequest;->metrics:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;

    if-nez v0, :cond_0

    .line 322
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/DefaultRequest;->metrics:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;

    return-void

    .line 324
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "AWSRequestMetrics has already been set on this request"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setContent(Ljava/io/InputStream;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/DefaultRequest;->content:Ljava/io/InputStream;

    return-void
.end method

.method public setEndpoint(Ljava/net/URI;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/DefaultRequest;->endpoint:Ljava/net/URI;

    return-void
.end method

.method public setHeaders(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/DefaultRequest;->headers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 234
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/DefaultRequest;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public setHttpMethod(Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/DefaultRequest;->httpMethod:Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;

    return-void
.end method

.method public setParameters(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/DefaultRequest;->parameters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 243
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/DefaultRequest;->parameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public setResourcePath(Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/DefaultRequest;->resourcePath:Ljava/lang/String;

    return-void
.end method

.method public setStreaming(Z)V
    .locals 0

    .line 336
    iput-boolean p1, p0, Lcom/amazon/kindle/com/amazonaws/DefaultRequest;->streaming:Z

    return-void
.end method

.method public setTimeOffset(I)V
    .locals 0

    .line 259
    iput p1, p0, Lcom/amazon/kindle/com/amazonaws/DefaultRequest;->timeOffset:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/DefaultRequest;->getHttpMethod()Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/DefaultRequest;->getEndpoint()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/DefaultRequest;->getResourcePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    if-nez v2, :cond_0

    .line 281
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 284
    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 285
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/DefaultRequest;->getParameters()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const-string v2, ", "

    const-string v3, ": "

    const-string v4, ") "

    if-nez v1, :cond_3

    const-string v1, "Parameters: ("

    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/DefaultRequest;->getParameters()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 293
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/DefaultRequest;->getParameters()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 294
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 296
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/DefaultRequest;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "Headers: ("

    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/DefaultRequest;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 302
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/DefaultRequest;->getHeaders()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 303
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 305
    :cond_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
