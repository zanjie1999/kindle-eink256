.class public final Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckWebRequest;
.super Lcom/amazon/kindle/deletecontent/api/DeleteContentBaseWebRequest;
.source "RefundEligibleCheckWebRequest.kt"


# instance fields
.field private final asinDetail:Lcom/amazon/kindle/deletecontent/api/DeleteContentAsinDetail;

.field private final callBack:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final responseHandler:Lcom/amazon/kindle/webservices/ResultResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/webservices/ResultResponseHandler<",
            "Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/deletecontent/api/DeleteContentAsinDetail;Lkotlin/jvm/functions/Function1;Lcom/amazon/kindle/webservices/ResultResponseHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/deletecontent/api/DeleteContentAsinDetail;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/amazon/kindle/webservices/ResultResponseHandler<",
            "Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accessToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cookies"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asinDetail"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callBack"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseHandler"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/deletecontent/api/DeleteContentBaseWebRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckWebRequest;->asinDetail:Lcom/amazon/kindle/deletecontent/api/DeleteContentAsinDetail;

    iput-object p5, p0, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckWebRequest;->callBack:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckWebRequest;->responseHandler:Lcom/amazon/kindle/webservices/ResultResponseHandler;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/deletecontent/api/DeleteContentAsinDetail;Lkotlin/jvm/functions/Function1;Lcom/amazon/kindle/webservices/ResultResponseHandler;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    .line 27
    new-instance p6, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponseHandler;

    invoke-direct {p6}, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponseHandler;-><init>()V

    :cond_0
    move-object v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckWebRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/deletecontent/api/DeleteContentAsinDetail;Lkotlin/jvm/functions/Function1;Lcom/amazon/kindle/webservices/ResultResponseHandler;)V

    return-void
.end method

.method private final handleRequestFailed(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Lkotlin/jvm/functions/Function1;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/download/KRXRequestErrorState;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 68
    sget-object v0, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckWebRequest$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 84
    new-instance p1, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;

    const/4 v2, 0x0

    .line 85
    new-instance v3, Lcom/amazon/kindle/deletecontent/api/DeleteContentError;

    sget-object v0, Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;->UNKNOWN:Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;

    const-string v1, "UNKNOWN"

    invoke-direct {v3, v0, v1}, Lcom/amazon/kindle/deletecontent/api/DeleteContentError;-><init>(Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    .line 84
    invoke-direct/range {v1 .. v6}, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;-><init>(ZLcom/amazon/kindle/deletecontent/api/DeleteContentError;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 79
    :cond_0
    new-instance p1, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;

    const/4 v8, 0x0

    .line 80
    new-instance v9, Lcom/amazon/kindle/deletecontent/api/DeleteContentError;

    sget-object v0, Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;->APP_INTERNAL_ERROR:Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;

    const-string v1, "APP_INTERNAL_ERROR"

    invoke-direct {v9, v0, v1}, Lcom/amazon/kindle/deletecontent/api/DeleteContentError;-><init>(Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;Ljava/lang/String;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, p1

    .line 79
    invoke-direct/range {v7 .. v12}, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;-><init>(ZLcom/amazon/kindle/deletecontent/api/DeleteContentError;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 74
    :cond_1
    new-instance p1, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;

    const/4 v1, 0x0

    .line 75
    new-instance v2, Lcom/amazon/kindle/deletecontent/api/DeleteContentError;

    sget-object v0, Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;->SERVER_ERROR:Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;

    const-string v3, "SERVER_ERROR"

    invoke-direct {v2, v0, v3}, Lcom/amazon/kindle/deletecontent/api/DeleteContentError;-><init>(Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    .line 74
    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;-><init>(ZLcom/amazon/kindle/deletecontent/api/DeleteContentError;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 69
    :cond_2
    new-instance p1, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;

    const/4 v7, 0x0

    .line 70
    new-instance v8, Lcom/amazon/kindle/deletecontent/api/DeleteContentError;

    sget-object v0, Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;->CONNECTION_ERROR:Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;

    const-string v1, "CONNECTION_ERROR"

    invoke-direct {v8, v0, v1}, Lcom/amazon/kindle/deletecontent/api/DeleteContentError;-><init>(Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, p1

    .line 69
    invoke-direct/range {v6 .. v11}, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;-><init>(ZLcom/amazon/kindle/deletecontent/api/DeleteContentError;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private final parseASINDetailsForRequestBody(Lcom/amazon/kindle/deletecontent/api/DeleteContentAsinDetail;)Lorg/json/JSONObject;
    .locals 3

    .line 31
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 32
    invoke-virtual {p1}, Lcom/amazon/kindle/deletecontent/api/DeleteContentAsinDetail;->getAsin()Ljava/lang/String;

    move-result-object v1

    const-string v2, "asin"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    invoke-virtual {p1}, Lcom/amazon/kindle/deletecontent/api/DeleteContentAsinDetail;->getCategory()Ljava/lang/String;

    move-result-object p1

    const-string v1, "category"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method


# virtual methods
.method public getResponseHandler()Lcom/amazon/kindle/webservices/IResponseHandler;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckWebRequest;->responseHandler:Lcom/amazon/kindle/webservices/ResultResponseHandler;

    return-object v0
.end method

.method public onBeforeExecute()V
    .locals 3

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "activity"

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "RefundEligibleCheck"

    .line 40
    invoke-static {v2}, Lcom/amazon/kindle/deletecontent/api/DeleteContentApiUtilsKt;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "activityInput"

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget-object v1, p0, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckWebRequest;->asinDetail:Lcom/amazon/kindle/deletecontent/api/DeleteContentAsinDetail;

    invoke-direct {p0, v1}, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckWebRequest;->parseASINDetailsForRequestBody(Lcom/amazon/kindle/deletecontent/api/DeleteContentAsinDetail;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "parseASINDetailsForReque\u2026dy(asinDetail).toString()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/amazon/kindle/deletecontent/api/DeleteContentApiUtilsKt;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setPostFormData(Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    return-void
.end method

.method public onRequestComplete()Z
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckWebRequest;->responseHandler:Lcom/amazon/kindle/webservices/ResultResponseHandler;

    if-eqz v0, :cond_2

    check-cast v0, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponseHandler;

    invoke-virtual {v0}, Lcom/amazon/kindle/webservices/ResultResponseHandler;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;

    .line 52
    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v0

    const-string v1, "errorState"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckWebRequest;->callBack:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0, v1}, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckWebRequest;->handleRequestFailed(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Lkotlin/jvm/functions/Function1;)V

    return v2

    :cond_0
    if-nez v0, :cond_1

    .line 58
    sget-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->APP_INTERNAL_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    iget-object v1, p0, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckWebRequest;->callBack:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0, v1}, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckWebRequest;->handleRequestFailed(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Lkotlin/jvm/functions/Function1;)V

    return v2

    .line 62
    :cond_1
    iget-object v1, p0, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckWebRequest;->callBack:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-super {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->onRequestComplete()Z

    move-result v0

    return v0

    .line 51
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type com.amazon.kindle.deletecontent.api.RefundEligibleCheckResponseHandler"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
