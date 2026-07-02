.class public Lcom/amazon/kindle/socialsharing/service/GsonRequest;
.super Lcom/android/volley/Request;
.source "GsonRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T::",
        "Lcom/amazon/kindle/socialsharing/service/IWithHeaders;",
        ">",
        "Lcom/android/volley/Request<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final BODY_CONTENT_TYPE:Ljava/lang/String; = "application/json"

.field private static final CLASS_TAG:Ljava/lang/String;

.field private static final LOG_FORMAT:Ljava/lang/String; = "%s: %s"

.field private static final LOG_TAG:Ljava/lang/String; = "SocialSharing"


# instance fields
.field private final gson:Lcom/google/gson/Gson;

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

.field private final isDebugBuild:Z

.field private final listener:Lcom/android/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final requestBody:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field private final responseClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lcom/amazon/kindle/socialsharing/service/GsonRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/socialsharing/service/GsonRequest;->CLASS_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "TS;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/volley/Response$Listener<",
            "TT;>;",
            "Lcom/android/volley/Response$ErrorListener;",
            "Z)V"
        }
    .end annotation

    .line 63
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    sget-object v1, Lcom/google/gson/FieldNamingPolicy;->LOWER_CASE_WITH_UNDERSCORES:Lcom/google/gson/FieldNamingPolicy;

    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->setFieldNamingPolicy(Lcom/google/gson/FieldNamingPolicy;)Lcom/google/gson/GsonBuilder;

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v3

    move-object v2, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    invoke-direct/range {v2 .. v11}, Lcom/amazon/kindle/socialsharing/service/GsonRequest;-><init>(Lcom/google/gson/Gson;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/google/gson/Gson;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            "I",
            "Ljava/lang/String;",
            "TS;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/volley/Response$Listener<",
            "TT;>;",
            "Lcom/android/volley/Response$ErrorListener;",
            "Z)V"
        }
    .end annotation

    .line 81
    invoke-direct {p0, p2, p3, p8}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 82
    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/service/GsonRequest;->gson:Lcom/google/gson/Gson;

    .line 83
    iput-object p4, p0, Lcom/amazon/kindle/socialsharing/service/GsonRequest;->requestBody:Ljava/lang/Object;

    .line 84
    iput-object p5, p0, Lcom/amazon/kindle/socialsharing/service/GsonRequest;->responseClazz:Ljava/lang/Class;

    .line 85
    iput-object p6, p0, Lcom/amazon/kindle/socialsharing/service/GsonRequest;->headers:Ljava/util/Map;

    .line 86
    iput-object p7, p0, Lcom/amazon/kindle/socialsharing/service/GsonRequest;->listener:Lcom/android/volley/Response$Listener;

    .line 87
    iput-boolean p9, p0, Lcom/amazon/kindle/socialsharing/service/GsonRequest;->isDebugBuild:Z

    return-void
.end method


# virtual methods
.method protected deliverResponse(Lcom/amazon/kindle/socialsharing/service/IWithHeaders;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/service/GsonRequest;->listener:Lcom/android/volley/Response$Listener;

    if-eqz v0, :cond_0

    .line 141
    invoke-interface {v0, p1}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p1, Lcom/amazon/kindle/socialsharing/service/IWithHeaders;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/socialsharing/service/GsonRequest;->deliverResponse(Lcom/amazon/kindle/socialsharing/service/IWithHeaders;)V

    return-void
.end method

.method public getBody()[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/service/GsonRequest;->requestBody:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 121
    :cond_0
    iget-object v2, p0, Lcom/amazon/kindle/socialsharing/service/GsonRequest;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 122
    iget-boolean v2, p0, Lcom/amazon/kindle/socialsharing/service/GsonRequest;->isDebugBuild:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const-string v6, "%s: %s"

    if-eqz v2, :cond_1

    new-array v2, v5, [Ljava/lang/Object;

    .line 123
    sget-object v7, Lcom/amazon/kindle/socialsharing/service/GsonRequest;->CLASS_TAG:Ljava/lang/String;

    aput-object v7, v2, v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "JSON request: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v3

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 128
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/volley/Request;->getParamsEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v2

    .line 130
    iget-boolean v7, p0, Lcom/amazon/kindle/socialsharing/service/GsonRequest;->isDebugBuild:Z

    if-eqz v7, :cond_2

    new-array v5, v5, [Ljava/lang/Object;

    .line 131
    sget-object v7, Lcom/amazon/kindle/socialsharing/service/GsonRequest;->CLASS_TAG:Ljava/lang/String;

    aput-object v7, v5, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to get binary for the JSON request: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "SocialSharing"

    invoke-static {v3, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-object v1
.end method

.method public getBodyContentType()Ljava/lang/String;
    .locals 2

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "application/json; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/volley/Request;->getParamsEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .line 92
    iget-boolean v0, p0, Lcom/amazon/kindle/socialsharing/service/GsonRequest;->isDebugBuild:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 93
    sget-object v2, Lcom/amazon/kindle/socialsharing/service/GsonRequest;->CLASS_TAG:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request headers: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kindle/socialsharing/service/GsonRequest;->headers:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "%s: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/service/GsonRequest;->headers:Ljava/util/Map;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lcom/android/volley/Request;->getHeaders()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "SocialSharing"

    const-string v1, "%s: %s"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 148
    :try_start_0
    new-instance v5, Ljava/lang/String;

    iget-object v6, p1, Lcom/android/volley/NetworkResponse;->data:[B

    const-string v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 149
    iget-boolean v6, p0, Lcom/amazon/kindle/socialsharing/service/GsonRequest;->isDebugBuild:Z

    if-eqz v6, :cond_0

    new-array v6, v4, [Ljava/lang/Object;

    .line 150
    sget-object v7, Lcom/amazon/kindle/socialsharing/service/GsonRequest;->CLASS_TAG:Ljava/lang/String;

    aput-object v7, v6, v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "JSON response: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 152
    :cond_0
    iget-object v6, p0, Lcom/amazon/kindle/socialsharing/service/GsonRequest;->gson:Lcom/google/gson/Gson;

    iget-object v7, p0, Lcom/amazon/kindle/socialsharing/service/GsonRequest;->responseClazz:Ljava/lang/Class;

    invoke-virtual {v6, v5, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kindle/socialsharing/service/IWithHeaders;

    if-eqz v5, :cond_1

    .line 153
    iget-object v6, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    if-eqz v6, :cond_1

    .line 154
    iget-object v6, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-interface {v5, v6}, Lcom/amazon/kindle/socialsharing/service/IWithHeaders;->setHeaders(Ljava/util/Map;)V

    .line 156
    :cond_1
    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-array v4, v4, [Ljava/lang/Object;

    .line 161
    sget-object v5, Lcom/amazon/kindle/socialsharing/service/GsonRequest;->CLASS_TAG:Ljava/lang/String;

    aput-object v5, v4, v3

    const-string v3, "Could not decode response."

    aput-object v3, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    new-instance v0, Lcom/android/volley/ParseError;

    invoke-direct {v0, p1}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    new-array v4, v4, [Ljava/lang/Object;

    .line 158
    sget-object v5, Lcom/amazon/kindle/socialsharing/service/GsonRequest;->CLASS_TAG:Ljava/lang/String;

    aput-object v5, v4, v3

    const-string v3, "The response was not a valid JSON object"

    aput-object v3, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    new-instance v0, Lcom/android/volley/ParseError;

    invoke-direct {v0, p1}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object p1

    return-object p1
.end method
