.class public final Lcom/amazon/kindle/store/glide/request/GetOffersForAsinRequest;
.super Lcom/amazon/kindle/store/glide/request/GlideWebRequest;
.source "GetOffersForAsinRequest.java"


# static fields
.field private static final ASIN_DELIMITER:Ljava/lang/CharSequence;

.field private static final GLIDE_GET_OFFER_REQUEST_FAILED:Ljava/lang/String; = "GlideGetOfferRequestFailed"

.field private static final GLIDE_GET_OFFER_RESPONSE:Ljava/lang/String; = "GlideGetOfferResponse"

.field private static final RETRY_COUNTS:I = 0x2

.field private static final SINGLE_ASIN_LENGTH:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final asins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final callback:Lcom/amazon/kindle/krx/glide/IGetOffersForAsinCallback;

.field private glideResponse:Ljava/lang/String;

.field private final refTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lcom/amazon/kindle/store/glide/request/GetOffersForAsinRequest;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/store/glide/request/GetOffersForAsinRequest;->TAG:Ljava/lang/String;

    const-string v0, ","

    .line 61
    sput-object v0, Lcom/amazon/kindle/store/glide/request/GetOffersForAsinRequest;->ASIN_DELIMITER:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/IGetOffersForAsinCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/krx/glide/IGetOffersForAsinCallback;",
            ")V"
        }
    .end annotation

    .line 96
    invoke-direct {p0, p2}, Lcom/amazon/kindle/store/glide/request/GlideWebRequest;-><init>(Ljava/lang/String;)V

    .line 97
    iput-object p1, p0, Lcom/amazon/kindle/store/glide/request/GetOffersForAsinRequest;->asins:Ljava/util/List;

    .line 98
    iput-object p3, p0, Lcom/amazon/kindle/store/glide/request/GetOffersForAsinRequest;->refTag:Ljava/lang/String;

    .line 99
    iput-object p4, p0, Lcom/amazon/kindle/store/glide/request/GetOffersForAsinRequest;->callback:Lcom/amazon/kindle/krx/glide/IGetOffersForAsinCallback;

    .line 100
    invoke-direct {p0}, Lcom/amazon/kindle/store/glide/request/GetOffersForAsinRequest;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/store/glide/request/GetOffersForAsinRequest;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/amazon/kindle/store/glide/request/GetOffersForAsinRequest;->glideResponse:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/amazon/kindle/store/glide/request/GetOffersForAsinRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/amazon/kindle/store/glide/request/GetOffersForAsinRequest;->glideResponse:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 40
    sget-object v0, Lcom/amazon/kindle/store/glide/request/GetOffersForAsinRequest;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static convertResponseToKrxResponse(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;"
        }
    .end annotation

    .line 160
    invoke-static {p0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-static {p2}, Lcom/amazon/kindle/store/glide/request/GetOffersForAsinRequest;->handleMalformedResponseCase(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;

    move-result-object p0

    return-object p0

    .line 164
    :cond_0
    invoke-static {p0}, Lcom/amazon/kindle/store/glide/deserialization/GlideParser;->parseGetOfferResponse(Ljava/lang/String;)Lcom/amazon/kindle/store/glide/model/GlideGetOffersResponse;

    move-result-object p0

    if-nez p0, :cond_1

    .line 166
    invoke-static {p2}, Lcom/amazon/kindle/store/glide/request/GetOffersForAsinRequest;->handleMalformedResponseCase(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;

    move-result-object p0

    return-object p0

    .line 169
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/store/glide/model/GlideGetOffersResponse;->getStatus()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 171
    invoke-static {p2}, Lcom/amazon/kindle/store/glide/request/GetOffersForAsinRequest;->handleMalformedResponseCase(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v1, "Error"

    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 175
    invoke-static {p0, p2}, Lcom/amazon/kindle/store/glide/request/GetOffersForAsinRequest;->handleErrorCase(Lcom/amazon/kindle/store/glide/model/GlideGetOffersResponse;Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;

    move-result-object p0

    return-object p0

    :cond_3
    const-string v1, "Success"

    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 179
    invoke-static {p2}, Lcom/amazon/kindle/store/glide/request/GetOffersForAsinRequest;->handleMalformedResponseCase(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;

    move-result-object p0

    return-object p0

    .line 182
    :cond_4
    invoke-static {p0, p1, p2}, Lcom/amazon/kindle/store/glide/request/GetOffersForAsinRequest;->handleSuccessCase(Lcom/amazon/kindle/store/glide/model/GlideGetOffersResponse;Ljava/util/List;Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;

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

    if-eqz p0, :cond_0

    .line 236
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 238
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/store/glide/model/GlideErrorResult$GlideLink;

    .line 239
    new-instance v0, Lcom/amazon/kindle/krx/glide/KRXGlideLink;

    invoke-virtual {p0}, Lcom/amazon/kindle/store/glide/model/GlideErrorResult$GlideLink;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kindle/store/glide/model/GlideErrorResult$GlideLink;->getRel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kindle/store/glide/model/GlideErrorResult$GlideLink;->getMethod()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/amazon/kindle/krx/glide/KRXGlideLink;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static handleErrorCase(Lcom/amazon/kindle/store/glide/model/GlideGetOffersResponse;Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;
    .locals 4

    .line 212
    sget-object v0, Lcom/amazon/kindle/store/glide/request/GetOffersForAsinRequest;->TAG:Ljava/lang/String;

    const-string v1, "Error occurred during glide get offer operation."

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/store/glide/request/GetOffersForAsinRequest;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GlideGetOfferResponse_Error_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0}, Lcom/amazon/kindle/store/glide/model/GlideGetOffersResponse;->getErrorResult()Lcom/amazon/kindle/store/glide/model/GlideErrorResult;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/amazon/kindle/store/glide/model/GlideErrorResult;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    .line 218
    invoke-virtual {p0}, Lcom/amazon/kindle/store/glide/model/GlideErrorResult;->getLinks()Ljava/util/List;

    move-result-object p0

    .line 219
    invoke-static {p0}, Lcom/amazon/kindle/store/glide/request/GetOffersForAsinRequest;->extractLink(Ljava/util/List;)Lcom/amazon/kindle/krx/glide/KRXGlideLink;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, p1

    .line 221
    :goto_0
    new-instance v0, Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget-object v2, Lcom/amazon/kindle/krx/glide/GetOfferError;->TECH_ERROR:Lcom/amazon/kindle/krx/glide/GetOfferError;

    invoke-direct {v0, v1, v2, p1, p0}, Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;-><init>(Ljava/util/Map;Lcom/amazon/kindle/krx/glide/GetOfferError;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/KRXGlideLink;)V

    return-object v0
.end method

.method private static handleMalformedResponseCase(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;
    .locals 4

    .line 225
    sget-object v0, Lcom/amazon/kindle/store/glide/request/GetOffersForAsinRequest;->TAG:Ljava/lang/String;

    const-string v1, "Glide get offer operation encountered a malformed response."

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/store/glide/request/GetOffersForAsinRequest;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GlideGetOfferResponse_Error_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    new-instance p0, Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/amazon/kindle/krx/glide/GetOfferError;->UNKNOWN:Lcom/amazon/kindle/krx/glide/GetOfferError;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;-><init>(Ljava/util/Map;Lcom/amazon/kindle/krx/glide/GetOfferError;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/KRXGlideLink;)V

    return-object p0
.end method

.method static handleRequestFailed(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Lcom/amazon/kindle/krx/glide/IGetOffersForAsinCallback;Ljava/lang/String;)V
    .locals 4

    .line 137
    sget-object v0, Lcom/amazon/kindle/store/glide/request/GetOffersForAsinRequest;->TAG:Ljava/lang/String;

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

    .line 138
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/store/glide/request/GetOffersForAsinRequest;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GlideGetOfferRequestFailed_"

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

    .line 139
    sget-object p2, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->CONNECTION_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    const/4 v0, 0x0

    if-eq p0, p2, :cond_2

    sget-object p2, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->NO_CONNECTION:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    if-ne p0, p2, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    sget-object p2, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->SERVER_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    if-ne p0, p2, :cond_1

    .line 142
    new-instance p0, Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/amazon/kindle/krx/glide/GetOfferError;->SERVER_ERROR:Lcom/amazon/kindle/krx/glide/GetOfferError;

    invoke-direct {p0, p2, v1, v0, v0}, Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;-><init>(Ljava/util/Map;Lcom/amazon/kindle/krx/glide/GetOfferError;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/KRXGlideLink;)V

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/glide/IGetOffersForAsinCallback;->onComplete(Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;)V

    goto :goto_1

    .line 144
    :cond_1
    new-instance p0, Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/amazon/kindle/krx/glide/GetOfferError;->UNKNOWN:Lcom/amazon/kindle/krx/glide/GetOfferError;

    invoke-direct {p0, p2, v1, v0, v0}, Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;-><init>(Ljava/util/Map;Lcom/amazon/kindle/krx/glide/GetOfferError;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/KRXGlideLink;)V

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/glide/IGetOffersForAsinCallback;->onComplete(Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;)V

    goto :goto_1

    .line 140
    :cond_2
    :goto_0
    new-instance p0, Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/amazon/kindle/krx/glide/GetOfferError;->CONNECTION_ERROR:Lcom/amazon/kindle/krx/glide/GetOfferError;

    invoke-direct {p0, p2, v1, v0, v0}, Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;-><init>(Ljava/util/Map;Lcom/amazon/kindle/krx/glide/GetOfferError;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/KRXGlideLink;)V

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/glide/IGetOffersForAsinCallback;->onComplete(Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;)V

    :goto_1
    return-void
.end method

.method static handleResponse(Ljava/lang/String;Ljava/util/List;Lcom/amazon/kindle/krx/glide/IGetOffersForAsinCallback;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazon/kindle/krx/glide/IGetOffersForAsinCallback;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 153
    invoke-static {p0, p1, p3}, Lcom/amazon/kindle/store/glide/request/GetOffersForAsinRequest;->convertResponseToKrxResponse(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;

    move-result-object p0

    .line 154
    invoke-interface {p2, p0}, Lcom/amazon/kindle/krx/glide/IGetOffersForAsinCallback;->onComplete(Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;)V

    return-void
.end method

.method static handleSuccessCase(Lcom/amazon/kindle/store/glide/model/GlideGetOffersResponse;Ljava/util/List;Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/store/glide/model/GlideGetOffersResponse;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;"
        }
    .end annotation

    .line 186
    sget-object v0, Lcom/amazon/kindle/store/glide/request/GetOffersForAsinRequest;->TAG:Ljava/lang/String;

    const-string v1, "Glide get offer operation is successful."

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/store/glide/request/GetOffersForAsinRequest;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GlideGetOfferResponse_Success_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-static {p0}, Lcom/amazon/kindle/store/glide/deserialization/GlideParser;->getOffersFromGlideResponse(Lcom/amazon/kindle/store/glide/model/GlideGetOffersResponse;)Ljava/util/Map;

    move-result-object p0

    .line 191
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    .line 192
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 193
    invoke-static {p2}, Lcom/amazon/kindle/store/glide/request/GetOffersForAsinRequest;->handleMalformedResponseCase(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;

    move-result-object p0

    return-object p0

    .line 196
    :cond_0
    new-instance p1, Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;

    invoke-direct {p1, p0, v1, v1, v1}, Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;-><init>(Ljava/util/Map;Lcom/amazon/kindle/krx/glide/GetOfferError;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/KRXGlideLink;)V

    return-object p1

    .line 200
    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 201
    new-instance p0, Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    sget-object p2, Lcom/amazon/kindle/krx/glide/GetOfferError;->NO_ASIN_OFFER_AVAILABLE:Lcom/amazon/kindle/krx/glide/GetOfferError;

    invoke-direct {p0, p1, p2, v1, v1}, Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;-><init>(Ljava/util/Map;Lcom/amazon/kindle/krx/glide/GetOfferError;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/KRXGlideLink;)V

    return-object p0

    .line 205
    :cond_2
    new-instance p1, Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;

    invoke-direct {p1, p0, v1, v1, v1}, Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;-><init>(Ljava/util/Map;Lcom/amazon/kindle/krx/glide/GetOfferError;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/KRXGlideLink;)V

    return-object p1
.end method

.method private init()V
    .locals 1

    .line 104
    invoke-direct {p0}, Lcom/amazon/kindle/store/glide/request/GetOffersForAsinRequest;->setRequestURL()V

    const/4 v0, 0x1

    .line 105
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setAuthenticationRequired(Z)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 106
    sget-object v0, Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;->BLOCKING:Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setPriority(Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;)Lcom/amazon/kindle/webservices/IWebRequest;

    const/4 v0, 0x2

    .line 107
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setRetries(I)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 108
    new-instance v0, Lcom/amazon/kindle/store/glide/request/GetOffersForAsinRequest$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/store/glide/request/GetOffersForAsinRequest$1;-><init>(Lcom/amazon/kindle/store/glide/request/GetOffersForAsinRequest;)V

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setResponseHandler(Lcom/amazon/kindle/webservices/IResponseHandler;)Lcom/amazon/kindle/webservices/IWebRequest;

    return-void
.end method

.method private setRequestURL()V
    .locals 3

    .line 250
    invoke-virtual {p0}, Lcom/amazon/kindle/store/glide/request/GlideWebRequest;->getMarketPlace()Lcom/amazon/kcp/application/Marketplace;

    move-result-object v0

    .line 251
    invoke-static {v0}, Lcom/amazon/kindle/webservices/KindleWebServiceURLs;->getOffersForAsinServiceURL(Lcom/amazon/kcp/application/Marketplace;)Lcom/amazon/kindle/webservices/WebserviceURL;

    move-result-object v0

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/amazon/kindle/webservices/WebserviceURL;->getFullURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/kindle/store/glide/request/GetOffersForAsinRequest;->ASIN_DELIMITER:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/amazon/kindle/store/glide/request/GetOffersForAsinRequest;->asins:Ljava/util/List;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setUrl(Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 253
    iget-object v0, p0, Lcom/amazon/kindle/store/glide/request/GetOffersForAsinRequest;->refTag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/store/glide/request/GlideWebRequest;->appendReftag(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
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

    .line 263
    invoke-virtual {p0}, Lcom/amazon/kindle/store/glide/request/GlideWebRequest;->getBaseHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getHttpVerb()Ljava/lang/String;
    .locals 1

    const-string v0, "GET"

    return-object v0
.end method

.method public onRequestComplete()Z
    .locals 4

    .line 119
    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/kindle/store/glide/request/GetOffersForAsinRequest;->callback:Lcom/amazon/kindle/krx/glide/IGetOffersForAsinCallback;

    iget-object v3, p0, Lcom/amazon/kindle/store/glide/request/GlideWebRequest;->clientId:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/amazon/kindle/store/glide/request/GetOffersForAsinRequest;->handleRequestFailed(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Lcom/amazon/kindle/krx/glide/IGetOffersForAsinCallback;Ljava/lang/String;)V

    return v1

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/store/glide/request/GetOffersForAsinRequest;->glideResponse:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 125
    sget-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->APP_INTERNAL_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    iget-object v2, p0, Lcom/amazon/kindle/store/glide/request/GetOffersForAsinRequest;->callback:Lcom/amazon/kindle/krx/glide/IGetOffersForAsinCallback;

    iget-object v3, p0, Lcom/amazon/kindle/store/glide/request/GlideWebRequest;->clientId:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/amazon/kindle/store/glide/request/GetOffersForAsinRequest;->handleRequestFailed(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Lcom/amazon/kindle/krx/glide/IGetOffersForAsinCallback;Ljava/lang/String;)V

    return v1

    .line 130
    :cond_1
    iget-object v1, p0, Lcom/amazon/kindle/store/glide/request/GetOffersForAsinRequest;->asins:Ljava/util/List;

    iget-object v2, p0, Lcom/amazon/kindle/store/glide/request/GetOffersForAsinRequest;->callback:Lcom/amazon/kindle/krx/glide/IGetOffersForAsinCallback;

    iget-object v3, p0, Lcom/amazon/kindle/store/glide/request/GlideWebRequest;->clientId:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/amazon/kindle/store/glide/request/GetOffersForAsinRequest;->handleResponse(Ljava/lang/String;Ljava/util/List;Lcom/amazon/kindle/krx/glide/IGetOffersForAsinCallback;Ljava/lang/String;)V

    .line 131
    invoke-super {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->onRequestComplete()Z

    move-result v0

    return v0
.end method
