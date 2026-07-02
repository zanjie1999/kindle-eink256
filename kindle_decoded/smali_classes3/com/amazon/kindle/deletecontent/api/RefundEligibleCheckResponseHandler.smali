.class public final Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponseHandler;
.super Lcom/amazon/kindle/webservices/ResultResponseHandler;
.source "RefundEligibleCheckWebRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponseHandler$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kindle/webservices/ResultResponseHandler<",
        "Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRefundEligibleCheckWebRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RefundEligibleCheckWebRequest.kt\ncom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponseHandler\n+ 2 Utils.kt\ncom/amazon/kindle/deletecontent/util/UtilsKt\n*L\n1#1,170:1\n6#2:171\n6#2:172\n*E\n*S KotlinDebug\n*F\n+ 1 RefundEligibleCheckWebRequest.kt\ncom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponseHandler\n*L\n106#1:171\n108#1:172\n*E\n"
.end annotation


# static fields
.field private static final NO_ERROR_PROVIDED:Ljava/lang/String; = "EXACT_ERROR_NOT_PROVIDED_BY_SERVER"

.field private static final NO_ORDER_ID_ERROR:Ljava/lang/String; = "ELIGIBLE_BUT_NO_ORDER_ID"

.field private static final UNKNNOWN_REASON:Ljava/lang/String; = "UNKNWON"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponseHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponseHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/amazon/kindle/webservices/ResultResponseHandler;-><init>()V

    return-void
.end method

.method private final parseServerResponse(Lorg/json/JSONObject;)Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;
    .locals 12

    const-string v0, "success"

    .line 115
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz v2, :cond_5

    const-string v3, "isEligible"

    .line 117
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "result"

    .line 118
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v3, :cond_2

    const-string v3, "orderId"

    .line 120
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 121
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 122
    new-instance p1, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;

    const/4 v7, 0x0

    .line 123
    new-instance v8, Lcom/amazon/kindle/deletecontent/api/DeleteContentError;

    sget-object v0, Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;->SERVER_ERROR:Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;

    const-string v1, "ELIGIBLE_BUT_NO_ORDER_ID"

    invoke-direct {v8, v0, v1}, Lcom/amazon/kindle/deletecontent/api/DeleteContentError;-><init>(Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;Ljava/lang/String;)V

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, p1

    .line 122
    invoke-direct/range {v6 .. v11}, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;-><init>(ZLcom/amazon/kindle/deletecontent/api/DeleteContentError;ZLjava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 128
    :cond_1
    new-instance p1, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;-><init>(ZLcom/amazon/kindle/deletecontent/api/DeleteContentError;ZLjava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 135
    :cond_2
    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    .line 136
    new-instance p1, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "UNKNWON"

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;-><init>(ZLcom/amazon/kindle/deletecontent/api/DeleteContentError;ZLjava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 142
    :cond_4
    new-instance p1, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;-><init>(ZLcom/amazon/kindle/deletecontent/api/DeleteContentError;ZLjava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_5
    const-string v3, "error"

    .line 149
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "errorReason"

    .line 150
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_6

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_7

    .line 151
    new-instance p1, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;

    const/4 v4, 0x0

    .line 152
    new-instance v5, Lcom/amazon/kindle/deletecontent/api/DeleteContentError;

    sget-object v0, Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;->SERVER_ERROR:Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;

    const-string v1, "EXACT_ERROR_NOT_PROVIDED_BY_SERVER"

    invoke-direct {v5, v0, v1}, Lcom/amazon/kindle/deletecontent/api/DeleteContentError;-><init>(Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    .line 151
    invoke-direct/range {v3 .. v8}, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;-><init>(ZLcom/amazon/kindle/deletecontent/api/DeleteContentError;ZLjava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_7
    const-string v0, "UNSUPPORTED_MARKETPLACE"

    .line 158
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 159
    new-instance v0, Lcom/amazon/kindle/deletecontent/api/DeleteContentError;

    sget-object v1, Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;->UNSUPPORTED_MARKETPLACE:Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;

    invoke-direct {v0, v1, p1}, Lcom/amazon/kindle/deletecontent/api/DeleteContentError;-><init>(Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;Ljava/lang/String;)V

    goto :goto_3

    .line 161
    :cond_8
    new-instance v0, Lcom/amazon/kindle/deletecontent/api/DeleteContentError;

    sget-object v1, Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;->SERVER_ERROR:Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;

    invoke-direct {v0, v1, p1}, Lcom/amazon/kindle/deletecontent/api/DeleteContentError;-><init>(Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;Ljava/lang/String;)V

    :goto_3
    move-object v3, v0

    .line 163
    new-instance p1, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;-><init>(ZLcom/amazon/kindle/deletecontent/api/DeleteContentError;ZLjava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public onInputStream(Ljava/io/InputStream;)V
    .locals 4

    const-string v0, "T::class.java.name"

    const-class v1, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponseHandler;

    const-string v2, "inputStream"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    const-string v3, "UTF-8"

    invoke-static {p1, v3}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-direct {p0, v2}, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponseHandler;->parseServerResponse(Lorg/json/JSONObject;)Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/amazon/kindle/webservices/ResultResponseHandler;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :goto_0
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 172
    :catch_0
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "InputStream could not be parsed as JSON"

    .line 108
    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :catch_1
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "IOException thrown while converting inputstream of household data to JSONObject"

    .line 106
    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 110
    :goto_2
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v0
.end method
