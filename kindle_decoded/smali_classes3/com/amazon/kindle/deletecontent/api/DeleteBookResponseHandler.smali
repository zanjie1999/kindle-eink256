.class public final Lcom/amazon/kindle/deletecontent/api/DeleteBookResponseHandler;
.super Lcom/amazon/kindle/webservices/ResultResponseHandler;
.source "DeleteWebRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/deletecontent/api/DeleteBookResponseHandler$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kindle/webservices/ResultResponseHandler<",
        "Lcom/amazon/kindle/deletecontent/api/DeleteAsinResponse;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeleteWebRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeleteWebRequest.kt\ncom/amazon/kindle/deletecontent/api/DeleteBookResponseHandler\n+ 2 Utils.kt\ncom/amazon/kindle/deletecontent/util/UtilsKt\n*L\n1#1,148:1\n6#2:149\n6#2:150\n*E\n*S KotlinDebug\n*F\n+ 1 DeleteWebRequest.kt\ncom/amazon/kindle/deletecontent/api/DeleteBookResponseHandler\n*L\n103#1:149\n105#1:150\n*E\n"
.end annotation


# static fields
.field private static final NO_ERROR_PROVIDED:Ljava/lang/String; = "EXACT_ERROR_NOT_PROVIDED_BY_SERVER"

.field private static final NO_RESULT_MAP_ERROR:Ljava/lang/String; = "SUCCESS_RESPONSE_WITH_EMPTY_RESULT_MAP"

.field private static final NULL_RESULT_MAP_REASON:Ljava/lang/String; = "SUCCESS_RESPONSE_WITH_NULL_RESULT_MAP"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/deletecontent/api/DeleteBookResponseHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/deletecontent/api/DeleteBookResponseHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/amazon/kindle/webservices/ResultResponseHandler;-><init>()V

    return-void
.end method

.method private final parseServerResponse(Lorg/json/JSONObject;)Lcom/amazon/kindle/deletecontent/api/DeleteAsinResponse;
    .locals 7

    const-string v0, "success"

    .line 112
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    const-string v3, "resultMap"

    .line 114
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 116
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 117
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    const-string v5, "resultMap.keys()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 118
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 119
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 121
    :cond_0
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 123
    new-instance p1, Lcom/amazon/kindle/deletecontent/api/DeleteAsinResponse;

    .line 125
    new-instance v0, Lcom/amazon/kindle/deletecontent/api/DeleteContentError;

    sget-object v3, Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;->SERVER_ERROR:Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;

    const-string v4, "SUCCESS_RESPONSE_WITH_EMPTY_RESULT_MAP"

    invoke-direct {v0, v3, v4}, Lcom/amazon/kindle/deletecontent/api/DeleteContentError;-><init>(Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;Ljava/lang/String;)V

    .line 123
    invoke-direct {p1, v2, v1, v0}, Lcom/amazon/kindle/deletecontent/api/DeleteAsinResponse;-><init>(Ljava/util/Map;ZLcom/amazon/kindle/deletecontent/api/DeleteContentError;)V

    return-object p1

    .line 127
    :cond_1
    new-instance p1, Lcom/amazon/kindle/deletecontent/api/DeleteAsinResponse;

    invoke-direct {p1, v3, v0, v2}, Lcom/amazon/kindle/deletecontent/api/DeleteAsinResponse;-><init>(Ljava/util/Map;ZLcom/amazon/kindle/deletecontent/api/DeleteContentError;)V

    return-object p1

    .line 132
    :cond_2
    new-instance p1, Lcom/amazon/kindle/deletecontent/api/DeleteAsinResponse;

    .line 134
    new-instance v0, Lcom/amazon/kindle/deletecontent/api/DeleteContentError;

    sget-object v3, Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;->SERVER_ERROR:Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;

    const-string v4, "SUCCESS_RESPONSE_WITH_NULL_RESULT_MAP"

    invoke-direct {v0, v3, v4}, Lcom/amazon/kindle/deletecontent/api/DeleteContentError;-><init>(Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;Ljava/lang/String;)V

    .line 132
    invoke-direct {p1, v2, v1, v0}, Lcom/amazon/kindle/deletecontent/api/DeleteAsinResponse;-><init>(Ljava/util/Map;ZLcom/amazon/kindle/deletecontent/api/DeleteContentError;)V

    return-object p1

    :cond_3
    const-string v3, "error"

    .line 137
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "errorReason"

    .line 138
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_4

    const/4 v1, 0x1

    :cond_4
    if-eqz v1, :cond_5

    .line 139
    new-instance p1, Lcom/amazon/kindle/deletecontent/api/DeleteAsinResponse;

    .line 141
    new-instance v1, Lcom/amazon/kindle/deletecontent/api/DeleteContentError;

    sget-object v3, Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;->SERVER_ERROR:Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;

    const-string v4, "EXACT_ERROR_NOT_PROVIDED_BY_SERVER"

    invoke-direct {v1, v3, v4}, Lcom/amazon/kindle/deletecontent/api/DeleteContentError;-><init>(Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;Ljava/lang/String;)V

    .line 139
    invoke-direct {p1, v2, v0, v1}, Lcom/amazon/kindle/deletecontent/api/DeleteAsinResponse;-><init>(Ljava/util/Map;ZLcom/amazon/kindle/deletecontent/api/DeleteContentError;)V

    return-object p1

    .line 143
    :cond_5
    new-instance v1, Lcom/amazon/kindle/deletecontent/api/DeleteAsinResponse;

    .line 145
    new-instance v3, Lcom/amazon/kindle/deletecontent/api/DeleteContentError;

    sget-object v4, Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;->SERVER_ERROR:Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;

    invoke-direct {v3, v4, p1}, Lcom/amazon/kindle/deletecontent/api/DeleteContentError;-><init>(Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;Ljava/lang/String;)V

    .line 143
    invoke-direct {v1, v2, v0, v3}, Lcom/amazon/kindle/deletecontent/api/DeleteAsinResponse;-><init>(Ljava/util/Map;ZLcom/amazon/kindle/deletecontent/api/DeleteContentError;)V

    return-object v1
.end method


# virtual methods
.method public onInputStream(Ljava/io/InputStream;)V
    .locals 4

    const-string v0, "T::class.java.name"

    const-class v1, Lcom/amazon/kindle/deletecontent/api/DeleteBookResponseHandler;

    const-string v2, "inputStream"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    const-string v3, "UTF-8"

    invoke-static {p1, v3}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-direct {p0, v2}, Lcom/amazon/kindle/deletecontent/api/DeleteBookResponseHandler;->parseServerResponse(Lorg/json/JSONObject;)Lcom/amazon/kindle/deletecontent/api/DeleteAsinResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/amazon/kindle/webservices/ResultResponseHandler;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :goto_0
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 150
    :catch_0
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "InputStream could not be parsed as JSON"

    .line 105
    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :catch_1
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "IOException thrown while converting inputstream of household data to JSONObject"

    .line 103
    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 107
    :goto_2
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v0
.end method
