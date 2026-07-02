.class public Lcom/facebook/Response;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/Response$PagedResults;,
        Lcom/facebook/Response$PagingInfo;,
        Lcom/facebook/Response$PagingDirection;
    }
.end annotation


# static fields
.field private static final BODY_KEY:Ljava/lang/String; = "body"

.field private static final CODE_KEY:Ljava/lang/String; = "code"

.field private static final INVALID_SESSION_FACEBOOK_ERROR_CODE:I = 0xbe

.field private static final RESPONSE_CACHE_TAG:Ljava/lang/String; = "ResponseCache"

.field private static final RESPONSE_LOG_TAG:Ljava/lang/String; = "Response"

.field private static responseCache:Lcom/facebook/internal/FileLruCache;


# instance fields
.field private final connection:Ljava/net/HttpURLConnection;

.field private final error:Lcom/facebook/FacebookRequestError;

.field private final graphObject:Lcom/facebook/model/GraphObject;

.field private final graphObjectList:Lcom/facebook/model/GraphObjectList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/model/GraphObjectList<",
            "Lcom/facebook/model/GraphObject;",
            ">;"
        }
    .end annotation
.end field

.field private final isFromCache:Z

.field private final rawResponse:Ljava/lang/String;

.field private final request:Lcom/facebook/Request;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V
    .locals 8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, p3

    .line 81
    invoke-direct/range {v0 .. v7}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Ljava/lang/String;Lcom/facebook/model/GraphObject;Lcom/facebook/model/GraphObjectList;ZLcom/facebook/FacebookRequestError;)V

    return-void
.end method

.method constructor <init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Ljava/lang/String;Lcom/facebook/model/GraphObject;Lcom/facebook/model/GraphObjectList;ZLcom/facebook/FacebookRequestError;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/Request;",
            "Ljava/net/HttpURLConnection;",
            "Ljava/lang/String;",
            "Lcom/facebook/model/GraphObject;",
            "Lcom/facebook/model/GraphObjectList<",
            "Lcom/facebook/model/GraphObject;",
            ">;Z",
            "Lcom/facebook/FacebookRequestError;",
            ")V"
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/facebook/Response;->request:Lcom/facebook/Request;

    .line 86
    iput-object p2, p0, Lcom/facebook/Response;->connection:Ljava/net/HttpURLConnection;

    .line 87
    iput-object p3, p0, Lcom/facebook/Response;->rawResponse:Ljava/lang/String;

    .line 88
    iput-object p4, p0, Lcom/facebook/Response;->graphObject:Lcom/facebook/model/GraphObject;

    .line 89
    iput-object p5, p0, Lcom/facebook/Response;->graphObjectList:Lcom/facebook/model/GraphObjectList;

    .line 90
    iput-boolean p6, p0, Lcom/facebook/Response;->isFromCache:Z

    .line 91
    iput-object p7, p0, Lcom/facebook/Response;->error:Lcom/facebook/FacebookRequestError;

    return-void
.end method

.method constructor <init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Ljava/lang/String;Lcom/facebook/model/GraphObject;Z)V
    .locals 8

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    .line 72
    invoke-direct/range {v0 .. v7}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Ljava/lang/String;Lcom/facebook/model/GraphObject;Lcom/facebook/model/GraphObjectList;ZLcom/facebook/FacebookRequestError;)V

    return-void
.end method

.method constructor <init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Ljava/lang/String;Lcom/facebook/model/GraphObjectList;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/Request;",
            "Ljava/net/HttpURLConnection;",
            "Ljava/lang/String;",
            "Lcom/facebook/model/GraphObjectList<",
            "Lcom/facebook/model/GraphObject;",
            ">;Z)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move v6, p5

    .line 77
    invoke-direct/range {v0 .. v7}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Ljava/lang/String;Lcom/facebook/model/GraphObject;Lcom/facebook/model/GraphObjectList;ZLcom/facebook/FacebookRequestError;)V

    return-void
.end method

.method static constructErrorResponses(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/Request;",
            ">;",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/FacebookException;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/Response;",
            ">;"
        }
    .end annotation

    .line 459
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 460
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 462
    new-instance v3, Lcom/facebook/Response;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/Request;

    new-instance v5, Lcom/facebook/FacebookRequestError;

    invoke-direct {v5, p1, p2}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v3, v4, p1, v5}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    .line 463
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static createResponseFromObject(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Ljava/lang/Object;ZLjava/lang/Object;)Lcom/facebook/Response;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 420
    instance-of v0, p2, Lorg/json/JSONObject;

    if-eqz v0, :cond_4

    .line 421
    check-cast p2, Lorg/json/JSONObject;

    .line 423
    invoke-static {p2, p4, p1}, Lcom/facebook/FacebookRequestError;->checkResponseAndCreateError(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;)Lcom/facebook/FacebookRequestError;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 426
    invoke-virtual {p4}, Lcom/facebook/FacebookRequestError;->getErrorCode()I

    move-result p2

    const/16 p3, 0xbe

    if-ne p2, p3, :cond_0

    .line 427
    invoke-virtual {p0}, Lcom/facebook/Request;->getSession()Lcom/facebook/Session;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 429
    invoke-virtual {p2}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    .line 432
    :cond_0
    new-instance p2, Lcom/facebook/Response;

    invoke-direct {p2, p0, p1, p4}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    return-object p2

    :cond_1
    const-string p4, "body"

    const-string v0, "FACEBOOK_NON_JSON_RESULT"

    .line 435
    invoke-static {p2, p4, v0}, Lcom/facebook/internal/Utility;->getStringPropertyAsJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 437
    instance-of p4, p2, Lorg/json/JSONObject;

    if-eqz p4, :cond_2

    .line 438
    move-object p4, p2

    check-cast p4, Lorg/json/JSONObject;

    invoke-static {p4}, Lcom/facebook/model/GraphObject$Factory;->create(Lorg/json/JSONObject;)Lcom/facebook/model/GraphObject;

    move-result-object v4

    .line 439
    new-instance p4, Lcom/facebook/Response;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Ljava/lang/String;Lcom/facebook/model/GraphObject;Z)V

    return-object p4

    .line 440
    :cond_2
    instance-of p4, p2, Lorg/json/JSONArray;

    if-eqz p4, :cond_3

    .line 441
    move-object p4, p2

    check-cast p4, Lorg/json/JSONArray;

    const-class v0, Lcom/facebook/model/GraphObject;

    invoke-static {p4, v0}, Lcom/facebook/model/GraphObject$Factory;->createList(Lorg/json/JSONArray;Ljava/lang/Class;)Lcom/facebook/model/GraphObjectList;

    move-result-object v5

    .line 443
    new-instance p4, Lcom/facebook/Response;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, p4

    move-object v2, p0

    move-object v3, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Ljava/lang/String;Lcom/facebook/model/GraphObjectList;Z)V

    return-object p4

    .line 446
    :cond_3
    sget-object p2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 449
    :cond_4
    sget-object p4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p2, p4, :cond_5

    .line 450
    new-instance p4, Lcom/facebook/Response;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Ljava/lang/String;Lcom/facebook/model/GraphObject;Z)V

    return-object p4

    .line 452
    :cond_5
    new-instance p0, Lcom/facebook/FacebookException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Got unexpected object type in response, class: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static createResponsesFromObject(Ljava/net/HttpURLConnection;Ljava/util/List;Ljava/lang/Object;Z)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/List<",
            "Lcom/facebook/Request;",
            ">;",
            "Ljava/lang/Object;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/facebook/Response;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/FacebookException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 369
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 370
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 374
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/Request;

    .line 379
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "body"

    .line 380
    invoke-virtual {v4, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p0, :cond_0

    .line 381
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    goto :goto_0

    :cond_0
    const/16 v5, 0xc8

    :goto_0
    const-string v6, "code"

    .line 382
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 384
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 385
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    .line 392
    new-instance v5, Lcom/facebook/Response;

    new-instance v6, Lcom/facebook/FacebookRequestError;

    invoke-direct {v6, p0, v4}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v5, v3, p0, v6}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_1
    move-exception v4

    .line 390
    new-instance v5, Lcom/facebook/Response;

    new-instance v6, Lcom/facebook/FacebookRequestError;

    invoke-direct {v6, p0, v4}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v5, v3, p0, v6}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    move-object v5, p2

    .line 396
    :goto_2
    instance-of v3, v5, Lorg/json/JSONArray;

    if-eqz v3, :cond_3

    check-cast v5, Lorg/json/JSONArray;

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ne v3, v0, :cond_3

    .line 403
    :goto_3
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 404
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/Request;

    .line 406
    :try_start_1
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 407
    invoke-static {v0, p0, v3, p3, p2}, Lcom/facebook/Response;->createResponseFromObject(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Ljava/lang/Object;ZLjava/lang/Object;)Lcom/facebook/Response;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/facebook/FacebookException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_4

    :catch_2
    move-exception v3

    .line 411
    new-instance v4, Lcom/facebook/Response;

    new-instance v6, Lcom/facebook/FacebookRequestError;

    invoke-direct {v6, p0, v3}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v4, v0, p0, v6}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :catch_3
    move-exception v3

    .line 409
    new-instance v4, Lcom/facebook/Response;

    new-instance v6, Lcom/facebook/FacebookRequestError;

    invoke-direct {v6, p0, v3}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v4, v0, p0, v6}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    return-object v1

    .line 397
    :cond_3
    new-instance p0, Lcom/facebook/FacebookException;

    const-string p1, "Unexpected number of results"

    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 398
    throw p0
.end method

.method static createResponsesFromStream(Ljava/io/InputStream;Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/RequestBatch;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/facebook/Response;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/FacebookException;,
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 345
    invoke-static {p0}, Lcom/facebook/internal/Utility;->readStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    .line 346
    sget-object v0, Lcom/facebook/LoggingBehavior;->INCLUDE_RAW_RESPONSES:Lcom/facebook/LoggingBehavior;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const-string v2, "Response"

    const-string v3, "Response (raw)\n  Size: %d\n  Response:\n%s\n"

    invoke-static {v0, v2, v3, v1}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 350
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/Response;->createResponsesFromString(Ljava/lang/String;Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static createResponsesFromString(Ljava/lang/String;Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/RequestBatch;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/facebook/Response;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/FacebookException;,
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 355
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 356
    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    .line 358
    invoke-static {p1, p2, v0, p3}, Lcom/facebook/Response;->createResponsesFromObject(Ljava/net/HttpURLConnection;Ljava/util/List;Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object p1

    .line 359
    sget-object p3, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/facebook/RequestBatch;->getId()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p2, 0x1

    aput-object p0, v0, p2

    const/4 p0, 0x2

    aput-object p1, v0, p0

    const-string p0, "Response"

    const-string p2, "Response\n  Id: %s\n  Size: %d\n  Responses:\n%s\n"

    invoke-static {p3, p0, p2, v0}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1
.end method

.method static fromHttpConnection(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/RequestBatch;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/Response;",
            ">;"
        }
    .end annotation

    const-string v0, "Response <Error>: %s"

    const-string v1, "Response"

    .line 280
    instance-of v2, p1, Lcom/facebook/internal/CacheableRequestBatch;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    .line 281
    move-object v2, p1

    check-cast v2, Lcom/facebook/internal/CacheableRequestBatch;

    .line 282
    invoke-static {}, Lcom/facebook/Response;->getResponseCache()Lcom/facebook/internal/FileLruCache;

    move-result-object v6

    .line 283
    invoke-virtual {v2}, Lcom/facebook/internal/CacheableRequestBatch;->getCacheKeyOverride()Ljava/lang/String;

    move-result-object v7

    .line 284
    invoke-static {v7}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 285
    invoke-virtual {p1}, Lcom/facebook/RequestBatch;->size()I

    move-result v8

    if-ne v8, v5, :cond_0

    .line 287
    invoke-virtual {p1, v4}, Lcom/facebook/RequestBatch;->get(I)Lcom/facebook/Request;

    move-result-object v7

    invoke-virtual {v7}, Lcom/facebook/Request;->getUrlForSingleRequest()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 289
    :cond_0
    sget-object v8, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    const-string v9, "ResponseCache"

    const-string v10, "Not using cache for cacheable request because no key was specified"

    invoke-static {v8, v9, v10}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :cond_1
    :goto_0
    invoke-virtual {v2}, Lcom/facebook/internal/CacheableRequestBatch;->getForceRoundTrip()Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v6, :cond_3

    invoke-static {v7}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 297
    :try_start_0
    invoke-virtual {v6, v7}, Lcom/facebook/internal/FileLruCache;->get(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Lcom/facebook/FacebookException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_2

    .line 299
    :try_start_1
    invoke-static {v2, v3, p1, v5}, Lcom/facebook/Response;->createResponsesFromStream(Ljava/io/InputStream;Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;Z)Ljava/util/List;

    move-result-object p0
    :try_end_1
    .catch Lcom/facebook/FacebookException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 305
    invoke-static {v2}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    move-object v3, v2

    goto :goto_1

    :catch_0
    move-object v3, v2

    goto :goto_2

    :cond_2
    invoke-static {v2}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_1
    move-exception p0

    :goto_1
    invoke-static {v3}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    throw p0

    :catch_1
    :goto_2
    invoke-static {v3}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    :cond_3
    move-object v2, v3

    :goto_3
    move-object v3, v6

    goto :goto_4

    :cond_4
    move-object v2, v3

    move-object v7, v2

    .line 312
    :goto_4
    :try_start_2
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    const/16 v8, 0x190

    if-lt v6, v8, :cond_5

    .line 313
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    goto :goto_5

    .line 315
    :cond_5
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    if-eqz v3, :cond_6

    if-eqz v7, :cond_6

    if-eqz v2, :cond_6

    .line 317
    invoke-virtual {v3, v7, v2}, Lcom/facebook/internal/FileLruCache;->interceptAndPut(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v3

    if-eqz v3, :cond_6

    move-object v2, v3

    .line 324
    :cond_6
    :goto_5
    invoke-static {v2, p0, p1, v4}, Lcom/facebook/Response;->createResponsesFromStream(Ljava/io/InputStream;Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;Z)Ljava/util/List;

    move-result-object p0
    :try_end_2
    .catch Lcom/facebook/FacebookException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 338
    invoke-static {v2}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    return-object p0

    :catchall_2
    move-exception p0

    goto :goto_6

    :catch_2
    move-exception v3

    .line 335
    :try_start_3
    sget-object v6, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v4

    invoke-static {v6, v1, v0, v5}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 336
    new-instance v0, Lcom/facebook/FacebookException;

    invoke-direct {v0, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p1, p0, v0}, Lcom/facebook/Response;->constructErrorResponses(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 338
    invoke-static {v2}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    return-object p0

    :catch_3
    move-exception v3

    .line 332
    :try_start_4
    sget-object v6, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v4

    invoke-static {v6, v1, v0, v5}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 333
    new-instance v0, Lcom/facebook/FacebookException;

    invoke-direct {v0, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p1, p0, v0}, Lcom/facebook/Response;->constructErrorResponses(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 338
    invoke-static {v2}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    return-object p0

    :catch_4
    move-exception v3

    .line 329
    :try_start_5
    sget-object v6, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v4

    invoke-static {v6, v1, v0, v5}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    new-instance v0, Lcom/facebook/FacebookException;

    invoke-direct {v0, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p1, p0, v0}, Lcom/facebook/Response;->constructErrorResponses(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;

    move-result-object p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 338
    invoke-static {v2}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    return-object p0

    :catch_5
    move-exception v3

    .line 326
    :try_start_6
    sget-object v6, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v4

    invoke-static {v6, v1, v0, v5}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    invoke-static {p1, p0, v3}, Lcom/facebook/Response;->constructErrorResponses(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;

    move-result-object p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 338
    invoke-static {v2}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    return-object p0

    :goto_6
    invoke-static {v2}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method

.method static getResponseCache()Lcom/facebook/internal/FileLruCache;
    .locals 4

    .line 264
    sget-object v0, Lcom/facebook/Response;->responseCache:Lcom/facebook/internal/FileLruCache;

    if-nez v0, :cond_0

    .line 265
    invoke-static {}, Lcom/facebook/Session;->getStaticContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 267
    new-instance v1, Lcom/facebook/internal/FileLruCache;

    new-instance v2, Lcom/facebook/internal/FileLruCache$Limits;

    invoke-direct {v2}, Lcom/facebook/internal/FileLruCache$Limits;-><init>()V

    const-string v3, "ResponseCache"

    invoke-direct {v1, v0, v3, v2}, Lcom/facebook/internal/FileLruCache;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/internal/FileLruCache$Limits;)V

    sput-object v1, Lcom/facebook/Response;->responseCache:Lcom/facebook/internal/FileLruCache;

    .line 271
    :cond_0
    sget-object v0, Lcom/facebook/Response;->responseCache:Lcom/facebook/internal/FileLruCache;

    return-object v0
.end method


# virtual methods
.method public final getError()Lcom/facebook/FacebookRequestError;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/facebook/Response;->error:Lcom/facebook/FacebookRequestError;

    return-object v0
.end method

.method public final getGraphObject()Lcom/facebook/model/GraphObject;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/facebook/Response;->graphObject:Lcom/facebook/model/GraphObject;

    return-object v0
.end method

.method public final getGraphObjectAs(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/model/GraphObject;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/facebook/Response;->graphObject:Lcom/facebook/model/GraphObject;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    .line 126
    invoke-interface {v0, p1}, Lcom/facebook/model/GraphObject;->cast(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;

    move-result-object p1

    return-object p1

    .line 124
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Must pass in a valid interface that extends GraphObject"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getIsFromCache()Z
    .locals 1

    .line 260
    iget-boolean v0, p0, Lcom/facebook/Response;->isFromCache:Z

    return v0
.end method

.method public getRequest()Lcom/facebook/Request;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/facebook/Response;->request:Lcom/facebook/Request;

    return-object v0
.end method

.method public getRequestForPagedResults(Lcom/facebook/Response$PagingDirection;)Lcom/facebook/Request;
    .locals 4

    .line 205
    iget-object v0, p0, Lcom/facebook/Response;->graphObject:Lcom/facebook/model/GraphObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 206
    const-class v2, Lcom/facebook/Response$PagedResults;

    invoke-interface {v0, v2}, Lcom/facebook/model/GraphObject;->cast(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;

    move-result-object v0

    check-cast v0, Lcom/facebook/Response$PagedResults;

    .line 207
    invoke-interface {v0}, Lcom/facebook/Response$PagedResults;->getPaging()Lcom/facebook/Response$PagingInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 209
    sget-object v2, Lcom/facebook/Response$PagingDirection;->NEXT:Lcom/facebook/Response$PagingDirection;

    if-ne p1, v2, :cond_0

    .line 210
    invoke-interface {v0}, Lcom/facebook/Response$PagingInfo;->getNext()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 212
    :cond_0
    invoke-interface {v0}, Lcom/facebook/Response$PagingInfo;->getPrevious()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v1

    .line 216
    :goto_0
    invoke-static {p1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    :cond_2
    if-eqz p1, :cond_3

    .line 220
    iget-object v0, p0, Lcom/facebook/Response;->request:Lcom/facebook/Request;

    invoke-virtual {v0}, Lcom/facebook/Request;->getUrlForSingleRequest()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object v1

    .line 228
    :cond_3
    :try_start_0
    new-instance v0, Lcom/facebook/Request;

    iget-object v2, p0, Lcom/facebook/Response;->request:Lcom/facebook/Request;

    invoke-virtual {v2}, Lcom/facebook/Request;->getSession()Lcom/facebook/Session;

    move-result-object v2

    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2, v3}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    :try_start_0
    const-string v0, "%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 243
    iget-object v3, p0, Lcom/facebook/Response;->connection:Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/facebook/Response;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    goto :goto_0

    :cond_0
    const/16 v3, 0xc8

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v0, "unknown"

    .line 248
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{Response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " responseCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", graphObject: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/Response;->graphObject:Lcom/facebook/model/GraphObject;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", error: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/Response;->error:Lcom/facebook/FacebookRequestError;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isFromCache:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/facebook/Response;->isFromCache:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
