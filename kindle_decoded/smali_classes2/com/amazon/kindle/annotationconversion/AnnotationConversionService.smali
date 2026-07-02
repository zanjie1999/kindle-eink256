.class public final Lcom/amazon/kindle/annotationconversion/AnnotationConversionService;
.super Ljava/lang/Object;
.source "AnnotationConversionService.java"

# interfaces
.implements Lcom/amazon/kindle/annotationconversion/IAnnotationConversionService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/annotationconversion/AnnotationConversionService$ValueHolder;
    }
.end annotation


# static fields
.field private static final MAX_BATCH_SIZE:I = 0xfa

.field private static final TAG:Ljava/lang/String;

.field private static final TYPE_MAP:Lcom/google/common/collect/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/BiMap<",
            "Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation$Type;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final webRequestManager:Lcom/amazon/kindle/webservices/IWebRequestManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 36
    const-class v0, Lcom/amazon/kindle/annotationconversion/AnnotationConversionService;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/annotationconversion/AnnotationConversionService;->TAG:Ljava/lang/String;

    .line 42
    new-instance v0, Lcom/google/common/collect/ImmutableBiMap$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableBiMap$Builder;-><init>()V

    sget-object v1, Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation$Type;->LAST_PAGE_READ:Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation$Type;

    const-string v2, "kindle.last_read"

    .line 44
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    .line 45
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableBiMap$Builder;->build()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/annotationconversion/AnnotationConversionService;->TYPE_MAP:Lcom/google/common/collect/BiMap;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/webservices/IWebRequestManager;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 58
    iput-object p1, p0, Lcom/amazon/kindle/annotationconversion/AnnotationConversionService;->webRequestManager:Lcom/amazon/kindle/webservices/IWebRequestManager;

    return-void

    .line 56
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "webRequestManager is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static annotationFromJson(Lorg/json/JSONObject;Lcom/amazon/kindle/krx/reader/IPositionFactory;)Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/annotationconversion/AnnotationConversionException;
        }
    .end annotation

    const-string v0, "annotationType"

    .line 239
    invoke-static {p0, v0}, Lcom/amazon/kindle/annotationconversion/AnnotationConversionService;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 243
    sget-object v1, Lcom/amazon/kindle/annotationconversion/AnnotationConversionService;->TYPE_MAP:Lcom/google/common/collect/BiMap;

    invoke-interface {v1}, Lcom/google/common/collect/BiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation$Type;

    if-eqz v0, :cond_3

    const-string v1, "startPosition"

    .line 248
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 252
    invoke-static {v1, p1}, Lcom/amazon/kindle/annotationconversion/AnnotationConversionService;->positionFromJson(Lorg/json/JSONObject;Lcom/amazon/kindle/krx/reader/IPositionFactory;)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    const-string v2, "endPosition"

    .line 254
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 256
    :cond_0
    invoke-static {v2, p1}, Lcom/amazon/kindle/annotationconversion/AnnotationConversionService;->positionFromJson(Lorg/json/JSONObject;Lcom/amazon/kindle/krx/reader/IPositionFactory;)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    .line 261
    :try_start_0
    invoke-static {v0, v1}, Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation;->valueOf(Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation$Type;Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation;

    move-result-object p0

    goto :goto_1

    .line 263
    :cond_1
    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation;->valueOf(Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation$Type;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object p0

    :catch_0
    move-exception p1

    .line 266
    new-instance v0, Lcom/amazon/kindle/annotationconversion/AnnotationConversionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected annotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/amazon/kindle/annotationconversion/AnnotationConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 250
    :cond_2
    new-instance p1, Lcom/amazon/kindle/annotationconversion/AnnotationConversionException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start position missing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/amazon/kindle/annotationconversion/AnnotationConversionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 245
    :cond_3
    new-instance p1, Lcom/amazon/kindle/annotationconversion/AnnotationConversionException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected annotation type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/amazon/kindle/annotationconversion/AnnotationConversionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 241
    :cond_4
    new-instance p1, Lcom/amazon/kindle/annotationconversion/AnnotationConversionException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Annotation type missing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/amazon/kindle/annotationconversion/AnnotationConversionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static computeContentLength(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    .line 316
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length p0, v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 318
    :catch_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    array-length p0, p0

    :goto_0
    return p0
.end method

.method private convertNextBatch(Ljava/util/Iterator;Lcom/amazon/kindle/annotationconversion/ContentIdentifier;Lcom/amazon/kindle/annotationconversion/ContentIdentifier;Lcom/amazon/kindle/krx/reader/IPositionFactory;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation;",
            ">;",
            "Lcom/amazon/kindle/annotationconversion/ContentIdentifier;",
            "Lcom/amazon/kindle/annotationconversion/ContentIdentifier;",
            "Lcom/amazon/kindle/krx/reader/IPositionFactory;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/annotationconversion/AnnotationConversionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 108
    invoke-static {}, Lcom/amazon/kindle/webservices/KindleWebServiceURLs;->getAnnotationMappingProxyServiceURL()Lcom/amazon/kindle/webservices/WebserviceURL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/webservices/WebserviceURL;->getFullURL()Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-static {p1, p2, p3}, Lcom/amazon/kindle/annotationconversion/AnnotationConversionService;->generateRequestBody(Ljava/util/Iterator;Lcom/amazon/kindle/annotationconversion/ContentIdentifier;Lcom/amazon/kindle/annotationconversion/ContentIdentifier;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 110
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 111
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Request body: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    :cond_0
    invoke-static {p1}, Lcom/amazon/kindle/annotationconversion/AnnotationConversionService;->computeContentLength(Ljava/lang/String;)I

    move-result p2

    .line 115
    new-instance p3, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {p3, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 116
    new-instance v2, Lcom/amazon/kindle/annotationconversion/AnnotationConversionService$1;

    invoke-direct {v2, p0, v0, p3}, Lcom/amazon/kindle/annotationconversion/AnnotationConversionService$1;-><init>(Lcom/amazon/kindle/annotationconversion/AnnotationConversionService;Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V

    .line 124
    new-instance v0, Lcom/amazon/kindle/annotationconversion/AnnotationConversionService$ValueHolder;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/amazon/kindle/annotationconversion/AnnotationConversionService$ValueHolder;-><init>(Lcom/amazon/kindle/annotationconversion/AnnotationConversionService$1;)V

    .line 125
    new-instance v3, Lcom/amazon/kindle/webservices/JSONResponseHandler;

    new-instance v4, Lcom/amazon/kindle/annotationconversion/AnnotationConversionService$2;

    invoke-direct {v4, p0, v0}, Lcom/amazon/kindle/annotationconversion/AnnotationConversionService$2;-><init>(Lcom/amazon/kindle/annotationconversion/AnnotationConversionService;Lcom/amazon/kindle/annotationconversion/AnnotationConversionService$ValueHolder;)V

    invoke-direct {v3, v4}, Lcom/amazon/kindle/webservices/JSONResponseHandler;-><init>(Lcom/amazon/kindle/webservices/JSONResponseHandler$JSONResponseObjectHandler;)V

    .line 133
    invoke-virtual {v2, v1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setAuthenticationRequired(Z)Lcom/amazon/kindle/webservices/IWebRequest;

    move-result-object v1

    .line 134
    invoke-interface {v1, v3}, Lcom/amazon/kindle/webservices/IWebRequest;->setResponseHandler(Lcom/amazon/kindle/webservices/IResponseHandler;)Lcom/amazon/kindle/webservices/IWebRequest;

    move-result-object v1

    const/4 v4, 0x2

    .line 135
    invoke-interface {v1, v4}, Lcom/amazon/kindle/webservices/IWebRequest;->setRetries(I)Lcom/amazon/kindle/webservices/IWebRequest;

    move-result-object v1

    .line 136
    invoke-interface {v1, p1}, Lcom/amazon/kindle/webservices/IWebRequest;->setPostFormData(Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    move-result-object p1

    .line 137
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "Content-Length"

    invoke-interface {p1, v1, p2}, Lcom/amazon/kindle/webservices/IWebRequest;->setHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    move-result-object p1

    const-string p2, "Content-Type"

    const-string v1, "application/json"

    .line 138
    invoke-interface {p1, p2, v1}, Lcom/amazon/kindle/webservices/IWebRequest;->setHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 140
    iget-object p1, p0, Lcom/amazon/kindle/annotationconversion/AnnotationConversionService;->webRequestManager:Lcom/amazon/kindle/webservices/IWebRequestManager;

    invoke-interface {p1, v2}, Lcom/amazon/kindle/webservices/IWebRequestManager;->addWebRequest(Lcom/amazon/kindle/webservices/IWebRequest;)Z

    .line 141
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 143
    invoke-virtual {v2}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getErrorDescriber()Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->getError()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object p1

    if-nez p1, :cond_2

    .line 149
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 150
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Response body: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v0, Lcom/amazon/kindle/annotationconversion/AnnotationConversionService$ValueHolder;->value:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    :cond_1
    iget-object p1, v0, Lcom/amazon/kindle/annotationconversion/AnnotationConversionService$ValueHolder;->value:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {p1, p4}, Lcom/amazon/kindle/annotationconversion/AnnotationConversionService;->parseResponseBody(Lorg/json/JSONObject;Lcom/amazon/kindle/krx/reader/IPositionFactory;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 145
    :cond_2
    new-instance p2, Lcom/amazon/kindle/annotationconversion/AnnotationConversionException;

    .line 146
    invoke-virtual {v3}, Lcom/amazon/kindle/webservices/BaseResponseHandler;->getHttpStatusCode()I

    move-result p3

    const-string p4, "Error executing web request"

    invoke-direct {p2, p4, p1, p3}, Lcom/amazon/kindle/annotationconversion/AnnotationConversionException;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;I)V

    throw p2
.end method

.method private static generateRequestBody(Ljava/util/Iterator;Lcom/amazon/kindle/annotationconversion/ContentIdentifier;Lcom/amazon/kindle/annotationconversion/ContentIdentifier;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation;",
            ">;",
            "Lcom/amazon/kindle/annotationconversion/ContentIdentifier;",
            "Lcom/amazon/kindle/annotationconversion/ContentIdentifier;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 159
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 160
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/16 v2, 0xfa

    if-ge v1, v2, :cond_0

    .line 161
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-static {v1, v2}, Lcom/amazon/kindle/annotationconversion/AnnotationConversionService;->toJson(Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation;I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 164
    :cond_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "annotations"

    .line 165
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sourceContentIdentifier"

    .line 166
    invoke-static {p1}, Lcom/amazon/kindle/annotationconversion/AnnotationConversionService;->toJson(Lcom/amazon/kindle/annotationconversion/ContentIdentifier;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "destinationContentIdentifier"

    .line 167
    invoke-static {p2}, Lcom/amazon/kindle/annotationconversion/AnnotationConversionService;->toJson(Lcom/amazon/kindle/annotationconversion/ContentIdentifier;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 170
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method private static optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 310
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static parseResponseBody(Lorg/json/JSONObject;Lcom/amazon/kindle/krx/reader/IPositionFactory;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/amazon/kindle/krx/reader/IPositionFactory;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/annotationconversion/AnnotationConversionException;
        }
    .end annotation

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "annotationsCreated"

    .line 223
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    .line 225
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 226
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 228
    invoke-static {v2, p1}, Lcom/amazon/kindle/annotationconversion/AnnotationConversionService;->annotationFromJson(Lorg/json/JSONObject;Lcom/amazon/kindle/krx/reader/IPositionFactory;)Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static positionFromJson(Lorg/json/JSONObject;Lcom/amazon/kindle/krx/reader/IPositionFactory;)Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/annotationconversion/AnnotationConversionException;
        }
    .end annotation

    const-string v0, "longPosition"

    .line 276
    invoke-static {p0, v0}, Lcom/amazon/kindle/annotationconversion/AnnotationConversionService;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 277
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    const-string v2, ", "

    if-nez v1, :cond_1

    .line 278
    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromString(Ljava/lang/String;)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 280
    :cond_0
    new-instance v0, Lcom/amazon/kindle/annotationconversion/AnnotationConversionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Position factory failed to create position from string: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amazon/kindle/annotationconversion/AnnotationConversionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_0
    const-string v0, "shortPosition"

    .line 286
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 293
    :try_start_1
    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 298
    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    if-eqz v0, :cond_2

    :goto_0
    return-object v0

    .line 300
    :cond_2
    new-instance v0, Lcom/amazon/kindle/annotationconversion/AnnotationConversionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Position factory failed to create position from int: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amazon/kindle/annotationconversion/AnnotationConversionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :catch_0
    new-instance p1, Lcom/amazon/kindle/annotationconversion/AnnotationConversionException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Short position does not fit int: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/amazon/kindle/annotationconversion/AnnotationConversionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 288
    :catch_1
    new-instance p1, Lcom/amazon/kindle/annotationconversion/AnnotationConversionException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Short position missing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/amazon/kindle/annotationconversion/AnnotationConversionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static toJson(Lcom/amazon/kindle/annotationconversion/ContentIdentifier;)Lorg/json/JSONObject;
    .locals 3

    .line 210
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "asin"

    .line 211
    invoke-virtual {p0}, Lcom/amazon/kindle/annotationconversion/ContentIdentifier;->getAsin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "embeddedId"

    .line 212
    invoke-virtual {p0}, Lcom/amazon/kindle/annotationconversion/ContentIdentifier;->getGuid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 215
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private static toJson(Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation;I)Lorg/json/JSONObject;
    .locals 3

    .line 177
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "annotationId"

    .line 178
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "annotationType"

    .line 179
    sget-object v1, Lcom/amazon/kindle/annotationconversion/AnnotationConversionService;->TYPE_MAP:Lcom/google/common/collect/BiMap;

    invoke-virtual {p0}, Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation;->getType()Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation$Type;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "startPosition"

    .line 180
    invoke-virtual {p0}, Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation;->getStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/annotationconversion/AnnotationConversionService;->toJson(Lcom/amazon/kindle/krx/reader/IPosition;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    invoke-virtual {p0}, Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation;->getEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "endPosition"

    .line 183
    invoke-static {p0}, Lcom/amazon/kindle/annotationconversion/AnnotationConversionService;->toJson(Lcom/amazon/kindle/krx/reader/IPosition;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p0

    .line 187
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method private static toJson(Lcom/amazon/kindle/krx/reader/IPosition;)Lorg/json/JSONObject;
    .locals 3

    .line 194
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 195
    invoke-interface {p0}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object v1

    .line 196
    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string p0, "longPosition"

    .line 197
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const-string v1, "shortPosition"

    .line 199
    invoke-interface {p0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception p0

    .line 203
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public convert(Ljava/util/List;Lcom/amazon/kindle/annotationconversion/ContentIdentifier;Lcom/amazon/kindle/annotationconversion/ContentIdentifier;Lcom/amazon/kindle/krx/reader/IPositionFactory;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation;",
            ">;",
            "Lcom/amazon/kindle/annotationconversion/ContentIdentifier;",
            "Lcom/amazon/kindle/annotationconversion/ContentIdentifier;",
            "Lcom/amazon/kindle/krx/reader/IPositionFactory;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/annotationconversion/AnnotationConversionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 67
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const-string v1, "convert(), sourceAnnotations: %s, sourceContent: %s, targetContent: %s, positionFactory: %s"

    .line 68
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    if-eqz p1, :cond_7

    if-eqz p2, :cond_6

    if-eqz p3, :cond_5

    if-eqz p4, :cond_4

    .line 85
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 87
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/amazon/kindle/annotationconversion/AnnotationConversionService;->convertNextBatch(Ljava/util/Iterator;Lcom/amazon/kindle/annotationconversion/ContentIdentifier;Lcom/amazon/kindle/annotationconversion/ContentIdentifier;Lcom/amazon/kindle/krx/reader/IPositionFactory;)Ljava/util/List;

    move-result-object v1

    .line 88
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/amazon/kindle/annotationconversion/AnnotationConversionService;->convertNextBatch(Ljava/util/Iterator;Lcom/amazon/kindle/annotationconversion/ContentIdentifier;Lcom/amazon/kindle/annotationconversion/ContentIdentifier;Lcom/amazon/kindle/krx/reader/IPositionFactory;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 92
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p2, p1, :cond_3

    .line 97
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 98
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "convert(), result: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_2
    return-object v1

    .line 93
    :cond_3
    new-instance p1, Lcom/amazon/kindle/annotationconversion/AnnotationConversionException;

    const-string p2, "Annotation mapping proxy service returned unexpected number of annotations"

    invoke-direct {p1, p2}, Lcom/amazon/kindle/annotationconversion/AnnotationConversionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 82
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "positionFactory is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "targetContent is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 76
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "sourceContent is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "sourceAnnotations is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
