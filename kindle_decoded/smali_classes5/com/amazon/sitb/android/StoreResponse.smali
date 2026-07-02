.class public Lcom/amazon/sitb/android/StoreResponse;
.super Ljava/lang/Object;
.source "StoreResponse.java"


# static fields
.field public static final GENERAL_FAILURE:Lcom/amazon/sitb/android/StoreResponse;

.field private static final log:Lcom/amazon/sitb/android/ISamplingLogger;


# instance fields
.field private checkForEUMFA:Z

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

.field private final json:Lorg/json/JSONObject;

.field private final statusLine:Lorg/apache/http/StatusLine;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    invoke-static {}, Lcom/amazon/sitb/android/impl/LoggerManager;->getInstance()Lcom/amazon/sitb/android/impl/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/amazon/sitb/android/StoreResponse;

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/impl/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v0

    sput-object v0, Lcom/amazon/sitb/android/StoreResponse;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    .line 25
    new-instance v0, Lcom/amazon/sitb/android/StoreResponse;

    invoke-direct {v0}, Lcom/amazon/sitb/android/StoreResponse;-><init>()V

    sput-object v0, Lcom/amazon/sitb/android/StoreResponse;->GENERAL_FAILURE:Lcom/amazon/sitb/android/StoreResponse;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/amazon/sitb/android/StoreResponse;->httpResponse:Lorg/apache/http/HttpResponse;

    .line 36
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/sitb/android/StoreResponse;->cookies:Ljava/util/List;

    .line 37
    iput-object v0, p0, Lcom/amazon/sitb/android/StoreResponse;->statusLine:Lorg/apache/http/StatusLine;

    .line 38
    iput-object v0, p0, Lcom/amazon/sitb/android/StoreResponse;->json:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/HttpResponse;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpResponse;",
            "Ljava/util/List<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/amazon/sitb/android/StoreResponse;->httpResponse:Lorg/apache/http/HttpResponse;

    .line 47
    iput-object p2, p0, Lcom/amazon/sitb/android/StoreResponse;->cookies:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 48
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Lcom/amazon/sitb/android/StoreResponse;->statusLine:Lorg/apache/http/StatusLine;

    .line 49
    invoke-virtual {p0}, Lcom/amazon/sitb/android/StoreResponse;->isSuccess()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/sitb/android/StoreResponse;->parseEntity(Lorg/apache/http/HttpEntity;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :goto_1
    iput-object p1, p0, Lcom/amazon/sitb/android/StoreResponse;->json:Lorg/json/JSONObject;

    return-void
.end method

.method private getContentType()Ljava/lang/String;
    .locals 1

    const-string v0, "content-type"

    .line 178
    invoke-direct {p0, v0}, Lcom/amazon/sitb/android/StoreResponse;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getHeaderElementValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 222
    iget-object v0, p0, Lcom/amazon/sitb/android/StoreResponse;->httpResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 226
    invoke-interface {p1}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 228
    invoke-interface {v2}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v3

    .line 229
    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 231
    invoke-interface {v2}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getHeaderValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/amazon/sitb/android/StoreResponse;->httpResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 213
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method private static parseEntity(Lorg/apache/http/HttpEntity;)Lorg/json/JSONObject;
    .locals 2

    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "UTF-8"

    .line 188
    invoke-static {p0, v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    .line 189
    :goto_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 201
    sget-object v0, Lcom/amazon/sitb/android/StoreResponse;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v1, "RuntimeException in parseEntity"

    invoke-interface {v0, v1, p0}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception p0

    .line 197
    sget-object v0, Lcom/amazon/sitb/android/StoreResponse;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v1, "JSONException in parseEntity"

    invoke-interface {v0, v1, p0}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception p0

    .line 193
    sget-object v0, Lcom/amazon/sitb/android/StoreResponse;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v1, "IOException in parseEntity"

    invoke-interface {v0, v1, p0}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 204
    :goto_1
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-object p0
.end method


# virtual methods
.method public getCookieValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/amazon/sitb/android/StoreResponse;->cookies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/cookie/Cookie;

    .line 120
    invoke-interface {v1}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/amazon/sitb/android/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    invoke-interface {v1}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getJson()Lorg/json/JSONObject;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/amazon/sitb/android/StoreResponse;->json:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getJsonResult()Ljava/lang/String;
    .locals 4

    const-string v0, "mFAStatus"

    const-string v1, "no-result-from-server"

    .line 91
    :try_start_0
    iget-object v2, p0, Lcom/amazon/sitb/android/StoreResponse;->json:Lorg/json/JSONObject;

    if-eqz v2, :cond_0

    .line 93
    iget-object v2, p0, Lcom/amazon/sitb/android/StoreResponse;->json:Lorg/json/JSONObject;

    const-string/jumbo v3, "result"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 97
    iget-boolean v2, p0, Lcom/amazon/sitb/android/StoreResponse;->checkForEUMFA:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amazon/sitb/android/StoreResponse;->json:Lorg/json/JSONObject;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amazon/sitb/android/StoreResponse;->json:Lorg/json/JSONObject;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "true"

    invoke-static {v0, v2}, Lcom/amazon/sitb/android/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "mfa-challenge-required"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 105
    sget-object v2, Lcom/amazon/sitb/android/StoreResponse;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v3, "JSONException in getJsonResult"

    invoke-interface {v2, v3, v0}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-object v1
.end method

.method public getMaxAge()Ljava/lang/Long;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "cache-control"

    const-string v2, "max-age"

    .line 137
    invoke-direct {p0, v1, v2}, Lcom/amazon/sitb/android/StoreResponse;->getHeaderElementValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 143
    :cond_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    .line 145
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 149
    sget-object v2, Lcom/amazon/sitb/android/StoreResponse;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v3, "RuntimeException in getMaxAge"

    invoke-interface {v2, v3, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/amazon/sitb/android/StoreResponse;->statusLine:Lorg/apache/http/StatusLine;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x1a4

    :goto_0
    return v0
.end method

.method public isSuccess()Z
    .locals 2

    .line 70
    invoke-virtual {p0}, Lcom/amazon/sitb/android/StoreResponse;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/amazon/sitb/android/StoreResponse;->getContentType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/json"

    invoke-static {v0, v1}, Lcom/amazon/sitb/android/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setCheckForEUMFA(Z)V
    .locals 0

    .line 169
    iput-boolean p1, p0, Lcom/amazon/sitb/android/StoreResponse;->checkForEUMFA:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 58
    iget-object v0, p0, Lcom/amazon/sitb/android/StoreResponse;->statusLine:Lorg/apache/http/StatusLine;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/sitb/android/StoreResponse;->getStatusCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 59
    :goto_0
    iget-object v1, p0, Lcom/amazon/sitb/android/StoreResponse;->httpResponse:Lorg/apache/http/HttpResponse;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, "<none>"

    .line 60
    :goto_1
    invoke-static {}, Lcom/amazon/sitb/android/utils/BuildUtils;->isDebugBuild()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/sitb/android/StoreResponse;->cookies:Ljava/util/List;

    new-array v4, v3, [Lorg/apache/http/cookie/Cookie;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    const-string v2, "*** hidden ***"

    :goto_2
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    const/4 v0, 0x1

    .line 61
    iget-object v3, p0, Lcom/amazon/sitb/android/StoreResponse;->json:Lorg/json/JSONObject;

    aput-object v3, v4, v0

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const/4 v0, 0x3

    aput-object v2, v4, v0

    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/amazon/sitb/android/StoreResponse;->checkForEUMFA:Z

    .line 62
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v4, v0

    const-string v0, "StoreResponse: STATUS = %s; JSON = %s; HEADERS = %s; COOKIES = %s; Check For EUMFA = %s"

    .line 61
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
