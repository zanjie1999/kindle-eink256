.class public final Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient$CurlBuilder;
.super Ljava/lang/Object;
.source "UrlHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "CurlBuilder"
.end annotation


# instance fields
.field private content:Ljava/lang/String;

.field private contentOverflow:Z

.field private final headers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private method:Ljava/lang/String;

.field private final url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient;Ljava/net/URL;)V
    .locals 1

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 365
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient$CurlBuilder;->method:Ljava/lang/String;

    .line 369
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient$CurlBuilder;->headers:Ljava/util/HashMap;

    .line 371
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient$CurlBuilder;->content:Ljava/lang/String;

    const/4 p1, 0x0

    .line 373
    iput-boolean p1, p0, Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient$CurlBuilder;->contentOverflow:Z

    if-eqz p2, :cond_0

    .line 385
    iput-object p2, p0, Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient$CurlBuilder;->url:Ljava/net/URL;

    return-void

    .line 383
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must have a valid url"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public build()Ljava/lang/String;
    .locals 4

    .line 458
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient$CurlBuilder;->isValid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "curl"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 462
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient$CurlBuilder;->method:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, " -X "

    .line 463
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient$CurlBuilder;->method:Ljava/lang/String;

    .line 464
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    :cond_0
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient$CurlBuilder;->headers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    const-string v3, " -H \""

    .line 467
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    .line 469
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    .line 471
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 473
    :cond_1
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient$CurlBuilder;->content:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, " -d \'"

    .line 474
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient$CurlBuilder;->content:Ljava/lang/String;

    .line 475
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    .line 476
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, " "

    .line 478
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient$CurlBuilder;->url:Ljava/net/URL;

    .line 479
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 459
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid state, cannot create curl command"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isValid()Z
    .locals 1

    .line 448
    iget-boolean v0, p0, Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient$CurlBuilder;->contentOverflow:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setContent(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient$CurlBuilder;
    .locals 0

    .line 424
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient$CurlBuilder;->content:Ljava/lang/String;

    return-object p0
.end method

.method public setContentOverflow(Z)Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient$CurlBuilder;
    .locals 0

    .line 440
    iput-boolean p1, p0, Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient$CurlBuilder;->contentOverflow:Z

    return-object p0
.end method

.method public setHeaders(Ljava/util/Map;)Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient$CurlBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient$CurlBuilder;"
        }
    .end annotation

    .line 410
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient$CurlBuilder;->headers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 411
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient$CurlBuilder;->headers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public setMethod(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient$CurlBuilder;
    .locals 0

    .line 397
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient$CurlBuilder;->method:Ljava/lang/String;

    return-object p0
.end method
