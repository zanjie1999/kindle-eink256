.class public Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest;
.super Lcom/amazon/kindle/store/glide/request/GlideWebRequest;
.source "ReturnAsinRequest.java"


# static fields
.field private static final CONTENT_TYPE_JSON_FORMAT:Ljava/lang/String; = "application/json"

.field private static final CONTENT_TYPE_KEY:Ljava/lang/String; = "Content-Type"

.field private static final GLIDE_RETURN_REQUEST_FAILED:Ljava/lang/String; = "GlideReturnRequestFailed"

.field private static final GLIDE_RETURN_RESPONSE:Ljava/lang/String; = "GlideReturnResponse"

.field private static final RETRY_COUNT:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final asin:Ljava/lang/String;

.field private final callback:Lcom/amazon/kindle/krx/glide/IReturnOfferForAsinCallback;

.field private glideResponse:Ljava/lang/String;

.field private final refTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/IReturnOfferForAsinCallback;)V
    .locals 0

    .line 67
    invoke-direct {p0, p2}, Lcom/amazon/kindle/store/glide/request/GlideWebRequest;-><init>(Ljava/lang/String;)V

    .line 68
    iput-object p1, p0, Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest;->asin:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest;->refTag:Ljava/lang/String;

    .line 70
    iput-object p4, p0, Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest;->callback:Lcom/amazon/kindle/krx/glide/IReturnOfferForAsinCallback;

    .line 71
    invoke-direct {p0}, Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest;->glideResponse:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest;->glideResponse:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static convertResponseToKrxResponse(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;
    .locals 2

    .line 133
    invoke-static {p0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-static {p1}, Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest;->handleMalformedResponseCase(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;

    move-result-object p0

    return-object p0

    .line 137
    :cond_0
    invoke-static {p0}, Lcom/amazon/kindle/store/glide/deserialization/GlideParser;->parseReturnResponse(Ljava/lang/String;)Lcom/amazon/kindle/store/glide/model/GlideReturnResponse;

    move-result-object p0

    if-nez p0, :cond_1

    .line 139
    invoke-static {p1}, Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest;->handleMalformedResponseCase(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;

    move-result-object p0

    return-object p0

    .line 142
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/store/glide/model/GlideReturnResponse;->getStatus()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 144
    invoke-static {p1}, Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest;->handleMalformedResponseCase(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v1, "Error"

    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 148
    invoke-static {p0, p1}, Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest;->handleErrorCase(Lcom/amazon/kindle/store/glide/model/GlideReturnResponse;Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;

    move-result-object p0

    return-object p0

    :cond_3
    const-string v1, "Success"

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 152
    invoke-static {p1}, Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest;->handleMalformedResponseCase(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;

    move-result-object p0

    return-object p0

    .line 155
    :cond_4
    invoke-static {p0, p1}, Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest;->handleSuccessCase(Lcom/amazon/kindle/store/glide/model/GlideReturnResponse;Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;

    move-result-object p0

    return-object p0
.end method

.method static extractLink(Ljava/util/List;)Lcom/amazon/kindle/krx/glide/KRXGlideLink;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/store/glide/model/GlideErrorResult$GlideLink;",
            ">;)",
            "Lcom/amazon/kindle/krx/glide/KRXGlideLink;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 216
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 220
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/store/glide/model/GlideErrorResult$GlideLink;

    .line 221
    new-instance v0, Lcom/amazon/kindle/krx/glide/KRXGlideLink;

    invoke-virtual {p0}, Lcom/amazon/kindle/store/glide/model/GlideErrorResult$GlideLink;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kindle/store/glide/model/GlideErrorResult$GlideLink;->getRel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kindle/store/glide/model/GlideErrorResult$GlideLink;->getMethod()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/amazon/kindle/krx/glide/KRXGlideLink;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static handleErrorCase(Lcom/amazon/kindle/store/glide/model/GlideReturnResponse;Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;
    .locals 4

    .line 193
    sget-object v0, Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest;->TAG:Ljava/lang/String;

    const-string v1, "Glide return operation failed because of an error."

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GlideReturnResponse_Error_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Lcom/amazon/kindle/store/glide/model/GlideReturnResponse;->getErrorResult()Lcom/amazon/kindle/store/glide/model/GlideErrorResult;

    move-result-object p0

    if-nez p0, :cond_0

    .line 197
    new-instance p0, Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;

    sget-object p1, Lcom/amazon/kindle/krx/glide/ReturnOfferError;->UNKNOWN:Lcom/amazon/kindle/krx/glide/ReturnOfferError;

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v0}, Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/glide/ReturnOfferError;Lcom/amazon/kindle/krx/glide/KRXGlideLink;)V

    return-object p0

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/store/glide/model/GlideErrorResult;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    .line 200
    invoke-virtual {p0}, Lcom/amazon/kindle/store/glide/model/GlideErrorResult;->getLinks()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest;->extractLink(Ljava/util/List;)Lcom/amazon/kindle/krx/glide/KRXGlideLink;

    move-result-object p0

    .line 201
    new-instance v0, Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;

    sget-object v1, Lcom/amazon/kindle/krx/glide/ReturnOfferError;->GENERIC_ERROR:Lcom/amazon/kindle/krx/glide/ReturnOfferError;

    invoke-direct {v0, p1, v1, p0}, Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/glide/ReturnOfferError;Lcom/amazon/kindle/krx/glide/KRXGlideLink;)V

    return-object v0
.end method

.method private static handleMalformedResponseCase(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;
    .locals 4

    .line 205
    sget-object v0, Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest;->TAG:Ljava/lang/String;

    const-string v1, "Glide return operation encountered a malformed response."

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GlideReturnResponse_Error_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    new-instance p0, Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;

    sget-object v0, Lcom/amazon/kindle/krx/glide/ReturnOfferError;->UNKNOWN:Lcom/amazon/kindle/krx/glide/ReturnOfferError;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v1}, Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/glide/ReturnOfferError;Lcom/amazon/kindle/krx/glide/KRXGlideLink;)V

    return-object p0
.end method

.method static handleRequestFailed(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Lcom/amazon/kindle/krx/glide/IReturnOfferForAsinCallback;Ljava/lang/String;)V
    .locals 4

    .line 113
    sget-object v0, Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " happened."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GlideReturnRequestFailed_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    sget-object p2, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->CONNECTION_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    const/4 v0, 0x0

    if-eq p0, p2, :cond_2

    sget-object p2, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->NO_CONNECTION:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    if-ne p0, p2, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    sget-object p2, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->SERVER_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    if-ne p0, p2, :cond_1

    .line 118
    new-instance p0, Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;

    sget-object p2, Lcom/amazon/kindle/krx/glide/ReturnOfferError;->SERVER_ERROR:Lcom/amazon/kindle/krx/glide/ReturnOfferError;

    invoke-direct {p0, v0, p2, v0}, Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/glide/ReturnOfferError;Lcom/amazon/kindle/krx/glide/KRXGlideLink;)V

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/glide/IReturnOfferForAsinCallback;->onComplete(Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;)V

    goto :goto_1

    .line 120
    :cond_1
    new-instance p0, Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;

    sget-object p2, Lcom/amazon/kindle/krx/glide/ReturnOfferError;->UNKNOWN:Lcom/amazon/kindle/krx/glide/ReturnOfferError;

    invoke-direct {p0, v0, p2, v0}, Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/glide/ReturnOfferError;Lcom/amazon/kindle/krx/glide/KRXGlideLink;)V

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/glide/IReturnOfferForAsinCallback;->onComplete(Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;)V

    goto :goto_1

    .line 116
    :cond_2
    :goto_0
    new-instance p0, Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;

    sget-object p2, Lcom/amazon/kindle/krx/glide/ReturnOfferError;->CONNECTION_ERROR:Lcom/amazon/kindle/krx/glide/ReturnOfferError;

    invoke-direct {p0, v0, p2, v0}, Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/glide/ReturnOfferError;Lcom/amazon/kindle/krx/glide/KRXGlideLink;)V

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/glide/IReturnOfferForAsinCallback;->onComplete(Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;)V

    :goto_1
    return-void
.end method

.method static handleResponse(Ljava/lang/String;Lcom/amazon/kindle/krx/glide/IReturnOfferForAsinCallback;Ljava/lang/String;)V
    .locals 0

    .line 128
    invoke-static {p0, p2}, Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest;->convertResponseToKrxResponse(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;

    move-result-object p0

    .line 129
    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/glide/IReturnOfferForAsinCallback;->onComplete(Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;)V

    return-void
.end method

.method static handleSuccessCase(Lcom/amazon/kindle/store/glide/model/GlideReturnResponse;Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;
    .locals 5

    .line 159
    invoke-virtual {p0}, Lcom/amazon/kindle/store/glide/model/GlideReturnResponse;->getResources()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 160
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 166
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/store/glide/model/GlideReturnResource;

    .line 167
    invoke-virtual {p0}, Lcom/amazon/kindle/store/glide/model/GlideReturnResource;->getStates()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 168
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_1

    .line 174
    :cond_1
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/store/glide/model/GlideReturnResource$GlideState;

    if-nez p0, :cond_2

    .line 176
    invoke-static {p1}, Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest;->handleMalformedResponseCase(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;

    move-result-object p0

    return-object p0

    .line 179
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kindle/store/glide/model/GlideReturnResource$GlideState;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-virtual {p0}, Lcom/amazon/kindle/store/glide/model/GlideReturnResource$GlideState;->getLinks()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest;->extractLink(Ljava/util/List;)Lcom/amazon/kindle/krx/glide/KRXGlideLink;

    move-result-object v1

    .line 181
    invoke-virtual {p0}, Lcom/amazon/kindle/store/glide/model/GlideReturnResource$GlideState;->getResponseCode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/amazon/kindle/store/glide/model/GlideReturnResource$GlideState;->getResponseCode()Ljava/lang/String;

    move-result-object p0

    const-string v2, "OK"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    .line 187
    :cond_3
    sget-object p0, Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest;->TAG:Ljava/lang/String;

    const-string v2, "Glide return operation is successful."

    invoke-static {p0, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p0

    sget-object v2, Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GlideReturnResponse_Success_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    new-instance p0, Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/glide/ReturnOfferError;Lcom/amazon/kindle/krx/glide/KRXGlideLink;)V

    return-object p0

    .line 182
    :cond_4
    :goto_0
    sget-object p0, Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest;->TAG:Ljava/lang/String;

    const-string v2, "Glide return operation encountered an error."

    invoke-static {p0, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p0

    sget-object v2, Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GlideReturnResponse_Error_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    new-instance p0, Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;

    sget-object p1, Lcom/amazon/kindle/krx/glide/ReturnOfferError;->GENERIC_ERROR:Lcom/amazon/kindle/krx/glide/ReturnOfferError;

    invoke-direct {p0, v0, p1, v1}, Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/glide/ReturnOfferError;Lcom/amazon/kindle/krx/glide/KRXGlideLink;)V

    return-object p0

    .line 169
    :cond_5
    :goto_1
    invoke-static {p1}, Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest;->handleMalformedResponseCase(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;

    move-result-object p0

    return-object p0

    .line 161
    :cond_6
    :goto_2
    invoke-static {p1}, Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest;->handleMalformedResponseCase(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;

    move-result-object p0

    return-object p0
.end method

.method private init()V
    .locals 1

    .line 75
    invoke-direct {p0}, Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest;->setRequestURL()V

    const/4 v0, 0x1

    .line 76
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setAuthenticationRequired(Z)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 77
    sget-object v0, Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;->BLOCKING:Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setPriority(Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;)Lcom/amazon/kindle/webservices/IWebRequest;

    const/4 v0, 0x2

    .line 78
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setRetries(I)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 79
    new-instance v0, Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest$1;-><init>(Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest;)V

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setResponseHandler(Lcom/amazon/kindle/webservices/IResponseHandler;)Lcom/amazon/kindle/webservices/IWebRequest;

    return-void
.end method

.method private setRequestURL()V
    .locals 2

    .line 241
    invoke-virtual {p0}, Lcom/amazon/kindle/store/glide/request/GlideWebRequest;->getMarketPlace()Lcom/amazon/kcp/application/Marketplace;

    move-result-object v0

    .line 242
    invoke-static {v0}, Lcom/amazon/kindle/webservices/KindleWebServiceURLs;->returnOfferForAsinServiceURL(Lcom/amazon/kcp/application/Marketplace;)Lcom/amazon/kindle/webservices/WebserviceURL;

    move-result-object v0

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/amazon/kindle/webservices/WebserviceURL;->getFullURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest;->asin:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setUrl(Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 244
    iget-object v0, p0, Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest;->refTag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/store/glide/request/GlideWebRequest;->appendReftag(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected constructPayload()Lorg/json/JSONObject;
    .locals 1

    .line 225
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 230
    invoke-virtual {p0}, Lcom/amazon/kindle/store/glide/request/GlideWebRequest;->getBaseHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    .line 231
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getHttpVerb()Ljava/lang/String;
    .locals 1

    const-string v0, "POST"

    return-object v0
.end method

.method public onBeforeExecute()V
    .locals 1

    .line 90
    invoke-virtual {p0}, Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest;->constructPayload()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setPostFormData(Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    return-void
.end method

.method public onRequestComplete()Z
    .locals 4

    .line 95
    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest;->callback:Lcom/amazon/kindle/krx/glide/IReturnOfferForAsinCallback;

    iget-object v3, p0, Lcom/amazon/kindle/store/glide/request/GlideWebRequest;->clientId:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest;->handleRequestFailed(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Lcom/amazon/kindle/krx/glide/IReturnOfferForAsinCallback;Ljava/lang/String;)V

    return v1

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest;->glideResponse:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 101
    sget-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->APP_INTERNAL_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    iget-object v2, p0, Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest;->callback:Lcom/amazon/kindle/krx/glide/IReturnOfferForAsinCallback;

    iget-object v3, p0, Lcom/amazon/kindle/store/glide/request/GlideWebRequest;->clientId:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest;->handleRequestFailed(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Lcom/amazon/kindle/krx/glide/IReturnOfferForAsinCallback;Ljava/lang/String;)V

    return v1

    .line 106
    :cond_1
    iget-object v1, p0, Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest;->callback:Lcom/amazon/kindle/krx/glide/IReturnOfferForAsinCallback;

    iget-object v2, p0, Lcom/amazon/kindle/store/glide/request/GlideWebRequest;->clientId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest;->handleResponse(Ljava/lang/String;Lcom/amazon/kindle/krx/glide/IReturnOfferForAsinCallback;Ljava/lang/String;)V

    .line 107
    invoke-super {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->onRequestComplete()Z

    move-result v0

    return v0
.end method
