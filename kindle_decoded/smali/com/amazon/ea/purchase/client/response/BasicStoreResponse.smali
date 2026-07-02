.class public Lcom/amazon/ea/purchase/client/response/BasicStoreResponse;
.super Ljava/lang/Object;
.source "BasicStoreResponse.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.ea.purchase.client.response.BasicStoreResponse"


# instance fields
.field private final cookies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation
.end field

.field private final httpResponse:Lorg/apache/http/HttpResponse;

.field public final json:Lorg/json/JSONObject;

.field public final success:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/HttpResponse;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpResponse;",
            "Ljava/util/List<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/amazon/ea/purchase/client/response/BasicStoreResponse;->httpResponse:Lorg/apache/http/HttpResponse;

    .line 53
    iput-object p2, p0, Lcom/amazon/ea/purchase/client/response/BasicStoreResponse;->cookies:Ljava/util/List;

    .line 56
    invoke-static {p1}, Lcom/amazon/ea/purchase/client/response/BasicStoreResponse;->getStatusCode(Lorg/apache/http/HttpResponse;)I

    move-result p2

    const-string v0, "content-type"

    .line 57
    invoke-static {p1, v0}, Lcom/amazon/ea/purchase/client/response/BasicStoreResponse;->getHeaderValue(Lorg/apache/http/HttpResponse;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc8

    if-ne p2, v1, :cond_0

    const-string p2, "application/json"

    .line 58
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/amazon/ea/purchase/client/response/BasicStoreResponse;->success:Z

    if-eqz p2, :cond_1

    .line 61
    invoke-static {p1}, Lcom/amazon/ea/purchase/client/response/BasicStoreResponse;->getEntity(Lorg/apache/http/HttpResponse;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :goto_1
    iput-object p1, p0, Lcom/amazon/ea/purchase/client/response/BasicStoreResponse;->json:Lorg/json/JSONObject;

    return-void
.end method

.method private static getEntity(Lorg/apache/http/HttpResponse;)Lorg/json/JSONObject;
    .locals 3

    const-string v0, "BasicStoreResponseGetEntity"

    .line 139
    invoke-static {v0}, Lcom/amazon/ea/metrics/M;->push(Ljava/lang/String;)V

    const-string v0, "Success"

    if-eqz p0, :cond_0

    .line 141
    :try_start_0
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const-string v1, "UTF-8"

    .line 142
    invoke-static {p0, v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const-string p0, ""

    :goto_1
    const/4 v1, 0x1

    .line 144
    invoke-static {v0, v1}, Lcom/amazon/ea/metrics/M;->setCount(Ljava/lang/String;I)V

    .line 145
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-object v1

    .line 147
    :goto_2
    :try_start_1
    sget-object v1, Lcom/amazon/ea/purchase/client/response/BasicStoreResponse;->TAG:Ljava/lang/String;

    const-string v2, "Exception parsing entity"

    invoke-static {v1, v2, p0}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    .line 148
    invoke-static {v0, p0}, Lcom/amazon/ea/metrics/M;->setCount(Ljava/lang/String;I)V

    .line 149
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-object p0

    :goto_3
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    .line 152
    throw p0
.end method

.method private static getHeaderElementValue(Lorg/apache/http/HttpResponse;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "BasicStoreResponseGetHeaderElementValue"

    .line 181
    invoke-static {v0}, Lcom/amazon/ea/metrics/M;->push(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 183
    :try_start_0
    invoke-interface {p0, p1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    move-object p0, v0

    :goto_0
    const/4 p1, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v3, "HttpResponseHeaderNull"

    .line 184
    invoke-static {v2, v3}, Lcom/amazon/ea/metrics/M;->condSet(ZLjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 198
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-object v0

    .line 188
    :cond_2
    :try_start_1
    invoke-interface {p0}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object p0

    array-length v2, p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x0

    :goto_2
    const-string v4, "Success"

    if-ge v3, v2, :cond_4

    :try_start_2
    aget-object v5, p0, v3

    .line 189
    invoke-interface {v5}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 190
    invoke-static {v4, p1}, Lcom/amazon/ea/metrics/M;->setCount(Ljava/lang/String;I)V

    .line 191
    invoke-interface {v5}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 198
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-object p0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 195
    :cond_4
    :try_start_3
    invoke-static {v4, v1}, Lcom/amazon/ea/metrics/M;->setCount(Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 198
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-object v0

    :goto_3
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    .line 199
    throw p0
.end method

.method private static getHeaderValue(Lorg/apache/http/HttpResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 165
    invoke-interface {p0, p1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    .line 166
    invoke-interface {p0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private static getStatusCode(Lorg/apache/http/HttpResponse;)I
    .locals 0

    if-eqz p0, :cond_0

    .line 127
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 128
    invoke-interface {p0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p0

    goto :goto_1

    :cond_1
    const/16 p0, 0x1a4

    :goto_1
    return p0
.end method


# virtual methods
.method public getCookieValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 70
    iget-object v0, p0, Lcom/amazon/ea/purchase/client/response/BasicStoreResponse;->cookies:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/cookie/Cookie;

    .line 74
    invoke-interface {v2}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 75
    invoke-interface {v2}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getJsonResult()Ljava/lang/String;
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/amazon/ea/purchase/client/response/BasicStoreResponse;->json:Lorg/json/JSONObject;

    const-string/jumbo v1, "mFAStatus"

    const-string/jumbo v2, "noChallenge"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "challengeFixup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "mfa-challenge-required"

    return-object v0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/amazon/ea/purchase/client/response/BasicStoreResponse;->json:Lorg/json/JSONObject;

    const-string/jumbo v1, "result"

    const-string/jumbo v2, "no-result-from-server"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxAge()Ljava/lang/Long;
    .locals 6

    const-string v0, "Success"

    const-string v1, "BasicStoreResponseGetMaxAge"

    .line 102
    invoke-static {v1}, Lcom/amazon/ea/metrics/M;->push(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 104
    :try_start_0
    iget-object v2, p0, Lcom/amazon/ea/purchase/client/response/BasicStoreResponse;->httpResponse:Lorg/apache/http/HttpResponse;

    const-string v3, "cache-control"

    const-string/jumbo v4, "max-age"

    invoke-static {v2, v3, v4}, Lcom/amazon/ea/purchase/client/response/BasicStoreResponse;->getHeaderElementValue(Lorg/apache/http/HttpResponse;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 105
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    const/4 v3, 0x1

    .line 107
    invoke-static {v0, v3}, Lcom/amazon/ea/metrics/M;->setCount(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-object v2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 110
    :try_start_1
    sget-object v3, Lcom/amazon/ea/purchase/client/response/BasicStoreResponse;->TAG:Ljava/lang/String;

    const-string v4, "Exception parsing max-age"

    invoke-static {v3, v4, v2}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    .line 111
    invoke-static {v0, v2}, Lcom/amazon/ea/metrics/M;->setCount(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-object v1

    :goto_1
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    .line 115
    throw v0
.end method
