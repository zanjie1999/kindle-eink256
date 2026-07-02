.class public Lcom/amazon/kindle/inapp/notifications/http/GsonRequest;
.super Lcom/android/volley/Request;
.source "GsonRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/inapp/notifications/http/GsonRequest$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T::",
        "Lcom/amazon/kindle/inapp/notifications/http/IWithHeaders;",
        ">",
        "Lcom/android/volley/Request<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGsonRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GsonRequest.kt\ncom/amazon/kindle/inapp/notifications/http/GsonRequest\n*L\n1#1,183:1\n*E\n"
.end annotation


# static fields
# The value of this static final field might be set in the static constructor
.field private static final BODY_CONTENT_TYPE:Ljava/lang/String; = "application/json"

.field public static final Companion:Lcom/amazon/kindle/inapp/notifications/http/GsonRequest$Companion;

.field private static final DEFAULT_GSON:Lcom/google/gson/Gson;

.field private static final TAG:Ljava/lang/String;


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
    .locals 2

    new-instance v0, Lcom/amazon/kindle/inapp/notifications/http/GsonRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/inapp/notifications/http/GsonRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/inapp/notifications/http/GsonRequest;->Companion:Lcom/amazon/kindle/inapp/notifications/http/GsonRequest$Companion;

    const-string v1, "application/json"

    .line 177
    sput-object v1, Lcom/amazon/kindle/inapp/notifications/http/GsonRequest;->BODY_CONTENT_TYPE:Ljava/lang/String;

    .line 179
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/inapp/notifications/http/GsonRequest;->TAG:Ljava/lang/String;

    .line 180
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/amazon/kindle/inapp/notifications/http/GsonRequest;->DEFAULT_GSON:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>(Lcom/google/gson/Gson;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 1
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
            ")V"
        }
    .end annotation

    const-string v0, "gson"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseClazz"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorListener"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0, p2, p3, p8}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/http/GsonRequest;->gson:Lcom/google/gson/Gson;

    iput-object p4, p0, Lcom/amazon/kindle/inapp/notifications/http/GsonRequest;->requestBody:Ljava/lang/Object;

    iput-object p5, p0, Lcom/amazon/kindle/inapp/notifications/http/GsonRequest;->responseClazz:Ljava/lang/Class;

    iput-object p6, p0, Lcom/amazon/kindle/inapp/notifications/http/GsonRequest;->headers:Ljava/util/Map;

    iput-object p7, p0, Lcom/amazon/kindle/inapp/notifications/http/GsonRequest;->listener:Lcom/android/volley/Response$Listener;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/android/volley/Response$Listener<",
            "TT;>;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseClazz"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/http/GsonRequest;->Companion:Lcom/amazon/kindle/inapp/notifications/http/GsonRequest$Companion;

    invoke-static {v0}, Lcom/amazon/kindle/inapp/notifications/http/GsonRequest$Companion;->access$getDEFAULT_GSON$p(Lcom/amazon/kindle/inapp/notifications/http/GsonRequest$Companion;)Lcom/google/gson/Gson;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v6, p2

    move-object v8, p3

    move-object v9, p4

    .line 69
    invoke-direct/range {v1 .. v9}, Lcom/amazon/kindle/inapp/notifications/http/GsonRequest;-><init>(Lcom/google/gson/Gson;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TS;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/android/volley/Response$Listener<",
            "TT;>;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseClazz"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorListener"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/http/GsonRequest;->Companion:Lcom/amazon/kindle/inapp/notifications/http/GsonRequest$Companion;

    invoke-static {v0}, Lcom/amazon/kindle/inapp/notifications/http/GsonRequest$Companion;->access$getDEFAULT_GSON$p(Lcom/amazon/kindle/inapp/notifications/http/GsonRequest$Companion;)Lcom/google/gson/Gson;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v7, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/amazon/kindle/inapp/notifications/http/GsonRequest;-><init>(Lcom/google/gson/Gson;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public static final synthetic access$getBODY_CONTENT_TYPE$cp()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/http/GsonRequest;->BODY_CONTENT_TYPE:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getDEFAULT_GSON$cp()Lcom/google/gson/Gson;
    .locals 1

    .line 20
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/http/GsonRequest;->DEFAULT_GSON:Lcom/google/gson/Gson;

    return-object v0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/http/GsonRequest;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected deliverResponse(Lcom/amazon/kindle/inapp/notifications/http/IWithHeaders;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/http/GsonRequest;->listener:Lcom/android/volley/Response$Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p1, Lcom/amazon/kindle/inapp/notifications/http/IWithHeaders;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/inapp/notifications/http/GsonRequest;->deliverResponse(Lcom/amazon/kindle/inapp/notifications/http/IWithHeaders;)V

    return-void
.end method

.method public getBody()[B
    .locals 9

    .line 123
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/http/GsonRequest;->requestBody:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 127
    :cond_0
    iget-object v2, p0, Lcom/amazon/kindle/inapp/notifications/http/GsonRequest;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 128
    sget-object v2, Lcom/amazon/kindle/inapp/notifications/logging/Log;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/logging/Log;

    sget-object v3, Lcom/amazon/kindle/inapp/notifications/http/GsonRequest;->Companion:Lcom/amazon/kindle/inapp/notifications/http/GsonRequest$Companion;

    invoke-static {v3}, Lcom/amazon/kindle/inapp/notifications/http/GsonRequest$Companion;->access$getTAG$p(Lcom/amazon/kindle/inapp/notifications/http/GsonRequest$Companion;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "TAG"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "jsonString"

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Request to %s: %s"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "java.lang.String.format(format, *args)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v5}, Lcom/amazon/kindle/inapp/notifications/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :try_start_0
    invoke-virtual {p0}, Lcom/android/volley/Request;->getParamsEncoding()Ljava/lang/String;

    move-result-object v2

    const-string v3, "paramsEncoding"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    const-string v3, "Charset.forName(charsetName)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    const-string v3, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    .line 133
    sget-object v3, Lcom/amazon/kindle/inapp/notifications/logging/Log;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/logging/Log;

    sget-object v5, Lcom/amazon/kindle/inapp/notifications/http/GsonRequest;->Companion:Lcom/amazon/kindle/inapp/notifications/http/GsonRequest$Companion;

    invoke-static {v5}, Lcom/amazon/kindle/inapp/notifications/http/GsonRequest$Companion;->access$getTAG$p(Lcom/amazon/kindle/inapp/notifications/http/GsonRequest$Companion;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to get binary for JSON request: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v5, v0, v2}, Lcom/amazon/kindle/inapp/notifications/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    .line 128
    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBodyContentType()Ljava/lang/String;
    .locals 2

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/inapp/notifications/http/GsonRequest;->Companion:Lcom/amazon/kindle/inapp/notifications/http/GsonRequest$Companion;

    invoke-virtual {v1}, Lcom/amazon/kindle/inapp/notifications/http/GsonRequest$Companion;->getBODY_CONTENT_TYPE()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/volley/Request;->getParamsEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

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

    .line 106
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/http/GsonRequest;->headers:Ljava/util/Map;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/android/volley/Request;->getHeaders()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected final getJsonString(Lcom/android/volley/NetworkResponse;)Ljava/lang/String;
    .locals 2

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    iget-object p1, p1, Lcom/android/volley/NetworkResponse;->data:[B

    const-string v0, "response.data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v1, "Charset.forName(\"UTF-8\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "Response.error(ParseError(e))"

    const-string v1, "TAG"

    const-string v2, "response"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/inapp/notifications/http/GsonRequest;->getJsonString(Lcom/android/volley/NetworkResponse;)Ljava/lang/String;

    move-result-object v2

    .line 149
    sget-object v3, Lcom/amazon/kindle/inapp/notifications/logging/Log;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/logging/Log;

    sget-object v4, Lcom/amazon/kindle/inapp/notifications/http/GsonRequest;->Companion:Lcom/amazon/kindle/inapp/notifications/http/GsonRequest$Companion;

    invoke-static {v4}, Lcom/amazon/kindle/inapp/notifications/http/GsonRequest$Companion;->access$getTAG$p(Lcom/amazon/kindle/inapp/notifications/http/GsonRequest$Companion;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const-string v5, "Response for %s: %s"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    if-eqz v2, :cond_1

    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v7, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "java.lang.String.format(format, *args)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lcom/amazon/kindle/inapp/notifications/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v3, p0, Lcom/amazon/kindle/inapp/notifications/http/GsonRequest;->gson:Lcom/google/gson/Gson;

    iget-object v4, p0, Lcom/amazon/kindle/inapp/notifications/http/GsonRequest;->responseClazz:Ljava/lang/Class;

    invoke-virtual {v3, v2, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/inapp/notifications/http/IWithHeaders;

    if-eqz v2, :cond_0

    .line 151
    iget-object v3, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    if-eqz v3, :cond_0

    .line 152
    iget-object v3, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-interface {v2, v3}, Lcom/amazon/kindle/inapp/notifications/http/IWithHeaders;->setHeaders(Ljava/util/Map;)V

    .line 154
    :cond_0
    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object p1

    const-string v2, "Response.success(respons\u2026seCacheHeaders(response))"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 149
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {p1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 162
    sget-object v2, Lcom/amazon/kindle/inapp/notifications/logging/Log;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/logging/Log;

    sget-object v3, Lcom/amazon/kindle/inapp/notifications/http/GsonRequest;->Companion:Lcom/amazon/kindle/inapp/notifications/http/GsonRequest$Companion;

    invoke-static {v3}, Lcom/amazon/kindle/inapp/notifications/http/GsonRequest$Companion;->access$getTAG$p(Lcom/amazon/kindle/inapp/notifications/http/GsonRequest$Companion;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "IO Exception thrown when parsing network response"

    invoke-virtual {v2, v3, v1, p1}, Lcom/amazon/kindle/inapp/notifications/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 163
    new-instance v1, Lcom/android/volley/ParseError;

    invoke-direct {v1, p1}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :catch_1
    move-exception p1

    .line 159
    sget-object v2, Lcom/amazon/kindle/inapp/notifications/logging/Log;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/logging/Log;

    sget-object v3, Lcom/amazon/kindle/inapp/notifications/http/GsonRequest;->Companion:Lcom/amazon/kindle/inapp/notifications/http/GsonRequest$Companion;

    invoke-static {v3}, Lcom/amazon/kindle/inapp/notifications/http/GsonRequest$Companion;->access$getTAG$p(Lcom/amazon/kindle/inapp/notifications/http/GsonRequest$Companion;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "Could not decode response."

    invoke-virtual {v2, v3, v1, p1}, Lcom/amazon/kindle/inapp/notifications/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 160
    new-instance v1, Lcom/android/volley/ParseError;

    invoke-direct {v1, p1}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :catch_2
    move-exception p1

    .line 156
    sget-object v2, Lcom/amazon/kindle/inapp/notifications/logging/Log;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/logging/Log;

    sget-object v3, Lcom/amazon/kindle/inapp/notifications/http/GsonRequest;->Companion:Lcom/amazon/kindle/inapp/notifications/http/GsonRequest$Companion;

    invoke-static {v3}, Lcom/amazon/kindle/inapp/notifications/http/GsonRequest$Companion;->access$getTAG$p(Lcom/amazon/kindle/inapp/notifications/http/GsonRequest$Companion;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "The response was not a valid JSON object"

    invoke-virtual {v2, v3, v1, p1}, Lcom/amazon/kindle/inapp/notifications/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    new-instance v1, Lcom/android/volley/ParseError;

    invoke-direct {v1, p1}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
