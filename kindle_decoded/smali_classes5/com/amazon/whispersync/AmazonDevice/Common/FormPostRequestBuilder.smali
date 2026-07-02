.class public Lcom/amazon/whispersync/AmazonDevice/Common/FormPostRequestBuilder;
.super Ljava/lang/Object;
.source "FormPostRequestBuilder.java"


# static fields
.field private static final CONTENT_TYPE_HEADER:Ljava/lang/String; = "Content-Type"


# instance fields
.field private final mParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/FormPostRequestBuilder;->mParams:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "UTF-8"

    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/Common/FormPostRequestBuilder;->mParams:Ljava/util/Map;

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 22
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addField: Could not add form parameter because of UnsupportedEncodingException: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public buildRequest()Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;
    .locals 1

    .line 29
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    invoke-direct {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;-><init>()V

    .line 30
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/FormPostRequestBuilder;->updateRequest(Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;)V

    return-object v0
.end method

.method public updateRequest(Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;)V
    .locals 4

    .line 36
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;->HttpVerbPost:Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->setVerb(Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;)V

    const-string v0, "Content-Type"

    const-string v1, "application/x-www-form-urlencoded;charset=utf-8"

    .line 37
    invoke-virtual {p1, v0, v1}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    iget-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/Common/FormPostRequestBuilder;->mParams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    const-string v3, "&"

    .line 43
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    .line 46
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->setBody(Ljava/lang/String;)V

    return-void
.end method
