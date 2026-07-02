.class public final Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;
.super Lcom/amazon/kindle/store/glide/request/GlideWebRequest;
.source "AcquireOfferFromAsinRequest.java"


# static fields
.field private static final CONENT_TYPE_KEY:Ljava/lang/String; = "Content-Type"

.field private static final CONTENT_TYPE_JSON_FORMAT:Ljava/lang/String; = "application/json"

.field private static final CSRF_TOKEN_KEY:Ljava/lang/String; = "csrf"

.field private static final GLIDE_ACQUISITION_REQUEST_FAILED:Ljava/lang/String; = "GlideAcquisitionRequestFailed"

.field private static final GLIDE_ACQUISITION_RESPONSE:Ljava/lang/String; = "GlideAcquisitionResponse"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final RETRY_COUNT:I

.field private final callback:Lcom/amazon/kindle/krx/glide/IAcquireOfferFromAsinCallback;

.field private final csrfToken:Ljava/lang/String;

.field private glideResponse:Ljava/lang/String;

.field private final offerId:Ljava/lang/String;

.field private final refTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/IAcquireOfferFromAsinCallback;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/amazon/kindle/store/glide/request/GlideWebRequest;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 83
    iput p1, p0, Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;->RETRY_COUNT:I

    .line 94
    iput-object p2, p0, Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;->refTag:Ljava/lang/String;

    .line 95
    iput-object p3, p0, Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;->offerId:Ljava/lang/String;

    .line 96
    iput-object p4, p0, Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;->csrfToken:Ljava/lang/String;

    .line 97
    iput-object p5, p0, Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;->callback:Lcom/amazon/kindle/krx/glide/IAcquireOfferFromAsinCallback;

    .line 98
    invoke-direct {p0}, Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;)Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;->glideResponse:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;->glideResponse:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 38
    sget-object v0, Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private constructAcquisitionBody()Lorg/json/JSONObject;
    .locals 3

    .line 275
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "csrf"

    .line 277
    iget-object v2, p0, Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;->csrfToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 280
    :catch_0
    sget-object v1, Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;->TAG:Ljava/lang/String;

    const-string v2, "Failed to construct acquisition body!"

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method private static convertResponseToKrxResponse(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXAcquireOfferResponse;
    .locals 2

    .line 158
    invoke-static {p0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-static {p1}, Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;->handleMalformedResponseCase(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXAcquireOfferResponse;

    move-result-object p0

    return-object p0

    .line 162
    :cond_0
    invoke-static {p0}, Lcom/amazon/kindle/store/glide/deserialization/GlideParser;->parseAcquisitionResponse(Ljava/lang/String;)Lcom/amazon/kindle/store/glide/model/GlideAcquisitionResponse;

    move-result-object p0

    if-nez p0, :cond_1

    .line 164
    invoke-static {p1}, Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;->handleMalformedResponseCase(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXAcquireOfferResponse;

    move-result-object p0

    return-object p0

    .line 167
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/store/glide/model/GlideAcquisitionResponse;->getStatus()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 169
    invoke-static {p1}, Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;->handleMalformedResponseCase(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXAcquireOfferResponse;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v1, "Error"

    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 173
    invoke-static {p0, p1}, Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;->handleErrorCase(Lcom/amazon/kindle/store/glide/model/GlideAcquisitionResponse;Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXAcquireOfferResponse;

    move-result-object p0

    return-object p0

    :cond_3
    const-string v1, "Success"

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "Violation"

    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 178
    invoke-static {p1}, Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;->handleMalformedResponseCase(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXAcquireOfferResponse;

    move-result-object p0

    return-object p0

    .line 181
    :cond_4
    invoke-static {p0, v0, p1}, Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;->handleSuccessAndViolationCase(Lcom/amazon/kindle/store/glide/model/GlideAcquisitionResponse;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXAcquireOfferResponse;

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

    .line 265
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 267
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/store/glide/model/GlideErrorResult$GlideLink;

    .line 268
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

.method static handleErrorCase(Lcom/amazon/kindle/store/glide/model/GlideAcquisitionResponse;Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXAcquireOfferResponse;
    .locals 8

    .line 228
    invoke-virtual {p0}, Lcom/amazon/kindle/store/glide/model/GlideAcquisitionResponse;->getErrorResult()Lcom/amazon/kindle/store/glide/model/GlideErrorResult;

    move-result-object p0

    if-nez p0, :cond_0

    .line 230
    invoke-static {p1}, Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;->handleMalformedResponseCase(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXAcquireOfferResponse;

    move-result-object p0

    return-object p0

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/store/glide/model/GlideErrorResult;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    .line 234
    invoke-virtual {p0}, Lcom/amazon/kindle/store/glide/model/GlideErrorResult;->getLinks()Ljava/util/List;

    move-result-object v0

    .line 235
    invoke-static {v0}, Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;->extractLink(Ljava/util/List;)Lcom/amazon/kindle/krx/glide/KRXGlideLink;

    move-result-object v3

    .line 238
    invoke-virtual {p0}, Lcom/amazon/kindle/store/glide/model/GlideErrorResult;->getResponseCode()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    .line 240
    invoke-static {p1}, Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;->handleMalformedResponseCase(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXAcquireOfferResponse;

    move-result-object p0

    return-object p0

    .line 242
    :cond_1
    sget-object v0, Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;->TAG:Ljava/lang/String;

    const-string v2, "Glide acquisition operation failed because of an error."

    invoke-static {v0, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v2, Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GlideAcquisitionResponse_Error_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    sget-object p1, Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error occurred during acquisition operation. ResponseCode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "invalid_request"

    .line 245
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "csrf_validation_failure"

    .line 246
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "authentication_failure"

    .line 247
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    .line 250
    :cond_2
    new-instance p0, Lcom/amazon/kindle/store/glide/request/AcquireOfferResponse;

    sget-object v2, Lcom/amazon/kindle/krx/glide/AcquireOfferError;->UNKNOWN:Lcom/amazon/kindle/krx/glide/AcquireOfferError;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/amazon/kindle/store/glide/request/AcquireOfferResponse;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/glide/AcquireOfferError;Lcom/amazon/kindle/krx/glide/KRXGlideLink;Ljava/lang/String;JLjava/lang/String;)V

    return-object p0

    .line 248
    :cond_3
    :goto_0
    new-instance p0, Lcom/amazon/kindle/store/glide/request/AcquireOfferResponse;

    sget-object v2, Lcom/amazon/kindle/krx/glide/AcquireOfferError;->TECH_ERROR:Lcom/amazon/kindle/krx/glide/AcquireOfferError;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/amazon/kindle/store/glide/request/AcquireOfferResponse;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/glide/AcquireOfferError;Lcom/amazon/kindle/krx/glide/KRXGlideLink;Ljava/lang/String;JLjava/lang/String;)V

    return-object p0
.end method

.method private static handleMalformedResponseCase(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXAcquireOfferResponse;
    .locals 10

    .line 254
    sget-object v0, Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;->TAG:Ljava/lang/String;

    const-string v1, "Glide return operation encountered a malformed response."

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GlideAcquisitionResponse_Error_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    new-instance p0, Lcom/amazon/kindle/store/glide/request/AcquireOfferResponse;

    sget-object v4, Lcom/amazon/kindle/krx/glide/AcquireOfferError;->UNKNOWN:Lcom/amazon/kindle/krx/glide/AcquireOfferError;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/amazon/kindle/store/glide/request/AcquireOfferResponse;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/glide/AcquireOfferError;Lcom/amazon/kindle/krx/glide/KRXGlideLink;Ljava/lang/String;JLjava/lang/String;)V

    return-object p0
.end method

.method static handleRequestFailed(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Lcom/amazon/kindle/krx/glide/IAcquireOfferFromAsinCallback;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 136
    sget-object v2, Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " happened."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GlideAcquisitionRequestFailed_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    sget-object v2, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->CONNECTION_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->NO_CONNECTION:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    sget-object v2, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->SERVER_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    if-ne v0, v2, :cond_1

    .line 141
    new-instance v0, Lcom/amazon/kindle/store/glide/request/AcquireOfferResponse;

    const/4 v4, 0x0

    sget-object v5, Lcom/amazon/kindle/krx/glide/AcquireOfferError;->SERVER_ERROR:Lcom/amazon/kindle/krx/glide/AcquireOfferError;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Lcom/amazon/kindle/store/glide/request/AcquireOfferResponse;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/glide/AcquireOfferError;Lcom/amazon/kindle/krx/glide/KRXGlideLink;Ljava/lang/String;JLjava/lang/String;)V

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/glide/IAcquireOfferFromAsinCallback;->onComplete(Lcom/amazon/kindle/krx/glide/KRXAcquireOfferResponse;)V

    goto :goto_1

    .line 143
    :cond_1
    new-instance v0, Lcom/amazon/kindle/store/glide/request/AcquireOfferResponse;

    const/4 v12, 0x0

    sget-object v13, Lcom/amazon/kindle/krx/glide/AcquireOfferError;->UNKNOWN:Lcom/amazon/kindle/krx/glide/AcquireOfferError;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, -0x1

    const/16 v18, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v18}, Lcom/amazon/kindle/store/glide/request/AcquireOfferResponse;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/glide/AcquireOfferError;Lcom/amazon/kindle/krx/glide/KRXGlideLink;Ljava/lang/String;JLjava/lang/String;)V

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/glide/IAcquireOfferFromAsinCallback;->onComplete(Lcom/amazon/kindle/krx/glide/KRXAcquireOfferResponse;)V

    goto :goto_1

    .line 139
    :cond_2
    :goto_0
    new-instance v0, Lcom/amazon/kindle/store/glide/request/AcquireOfferResponse;

    const/4 v3, 0x0

    sget-object v4, Lcom/amazon/kindle/krx/glide/AcquireOfferError;->CONNECTION_ERROR:Lcom/amazon/kindle/krx/glide/AcquireOfferError;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/amazon/kindle/store/glide/request/AcquireOfferResponse;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/glide/AcquireOfferError;Lcom/amazon/kindle/krx/glide/KRXGlideLink;Ljava/lang/String;JLjava/lang/String;)V

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/glide/IAcquireOfferFromAsinCallback;->onComplete(Lcom/amazon/kindle/krx/glide/KRXAcquireOfferResponse;)V

    :goto_1
    return-void
.end method

.method static handleResponse(Ljava/lang/String;Lcom/amazon/kindle/krx/glide/IAcquireOfferFromAsinCallback;Ljava/lang/String;)V
    .locals 0

    .line 151
    invoke-static {p0, p2}, Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;->convertResponseToKrxResponse(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXAcquireOfferResponse;

    move-result-object p0

    .line 152
    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/glide/IAcquireOfferFromAsinCallback;->onComplete(Lcom/amazon/kindle/krx/glide/KRXAcquireOfferResponse;)V

    return-void
.end method

.method static handleSuccessAndViolationCase(Lcom/amazon/kindle/store/glide/model/GlideAcquisitionResponse;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXAcquireOfferResponse;
    .locals 8

    .line 185
    invoke-virtual {p0}, Lcom/amazon/kindle/store/glide/model/GlideAcquisitionResponse;->getResources()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 186
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 192
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/store/glide/model/GlideAcquisitionResource;

    .line 193
    invoke-virtual {p0}, Lcom/amazon/kindle/store/glide/model/GlideAcquisitionResource;->getStates()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 194
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_1

    .line 200
    :cond_1
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/store/glide/model/GlideAcquisitionResource$GlideState;

    if-nez p0, :cond_2

    .line 202
    invoke-static {p2}, Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;->handleMalformedResponseCase(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXAcquireOfferResponse;

    move-result-object p0

    return-object p0

    .line 205
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kindle/store/glide/model/GlideAcquisitionResource$GlideState;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    .line 206
    invoke-virtual {p0}, Lcom/amazon/kindle/store/glide/model/GlideAcquisitionResource$GlideState;->getLinks()Ljava/util/List;

    move-result-object v0

    .line 207
    invoke-static {v0}, Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;->extractLink(Ljava/util/List;)Lcom/amazon/kindle/krx/glide/KRXGlideLink;

    move-result-object v3

    .line 209
    invoke-virtual {p0}, Lcom/amazon/kindle/store/glide/model/GlideAcquisitionResource$GlideState;->getExecutionResult()Ljava/lang/String;

    move-result-object v7

    const-string v0, "Violation"

    .line 210
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 211
    sget-object p0, Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;->TAG:Ljava/lang/String;

    const-string p1, "Glide acquisition operation failed because of program violation."

    invoke-static {p0, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p0

    sget-object p1, Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GlideAcquisitionResponse_Violation_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    new-instance p0, Lcom/amazon/kindle/store/glide/request/AcquireOfferResponse;

    sget-object v2, Lcom/amazon/kindle/krx/glide/AcquireOfferError;->PROGRAM_VIOLATION_ERROR:Lcom/amazon/kindle/krx/glide/AcquireOfferError;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/amazon/kindle/store/glide/request/AcquireOfferResponse;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/glide/AcquireOfferError;Lcom/amazon/kindle/krx/glide/KRXGlideLink;Ljava/lang/String;JLjava/lang/String;)V

    return-object p0

    :cond_3
    const-string v0, "Success"

    .line 216
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 217
    invoke-virtual {p0}, Lcom/amazon/kindle/store/glide/model/GlideAcquisitionResource$GlideState;->getResponseCode()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 218
    invoke-virtual {p0}, Lcom/amazon/kindle/store/glide/model/GlideAcquisitionResource$GlideState;->getResponseCode()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    .line 222
    :cond_4
    sget-object p1, Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;->TAG:Ljava/lang/String;

    const-string v0, "Glide acquisition operation is successful."

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GlideAcquisitionResponse_Success_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    new-instance p1, Lcom/amazon/kindle/store/glide/request/AcquireOfferResponse;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/amazon/kindle/store/glide/model/GlideAcquisitionResource$GlideState;->getOrderId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/amazon/kindle/store/glide/model/GlideAcquisitionResource$GlideState;->getOrderItemId()J

    move-result-wide v5

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/amazon/kindle/store/glide/request/AcquireOfferResponse;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/glide/AcquireOfferError;Lcom/amazon/kindle/krx/glide/KRXGlideLink;Ljava/lang/String;JLjava/lang/String;)V

    return-object p1

    .line 219
    :cond_5
    :goto_0
    invoke-static {p2}, Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;->handleMalformedResponseCase(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXAcquireOfferResponse;

    move-result-object p0

    return-object p0

    .line 195
    :cond_6
    :goto_1
    invoke-static {p2}, Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;->handleMalformedResponseCase(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXAcquireOfferResponse;

    move-result-object p0

    return-object p0

    .line 187
    :cond_7
    :goto_2
    invoke-static {p2}, Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;->handleMalformedResponseCase(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXAcquireOfferResponse;

    move-result-object p0

    return-object p0
.end method

.method private init()V
    .locals 1

    .line 102
    invoke-direct {p0}, Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;->setRequestURL()V

    const/4 v0, 0x1

    .line 103
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setAuthenticationRequired(Z)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 104
    sget-object v0, Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;->BLOCKING:Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setPriority(Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 105
    invoke-direct {p0}, Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;->constructAcquisitionBody()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setPostFormData(Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    const/4 v0, 0x2

    .line 106
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setRetries(I)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 107
    new-instance v0, Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest$1;-><init>(Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;)V

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setResponseHandler(Lcom/amazon/kindle/webservices/IResponseHandler;)Lcom/amazon/kindle/webservices/IWebRequest;

    return-void
.end method

.method private setRequestURL()V
    .locals 2

    .line 299
    invoke-virtual {p0}, Lcom/amazon/kindle/store/glide/request/GlideWebRequest;->getMarketPlace()Lcom/amazon/kcp/application/Marketplace;

    move-result-object v0

    .line 300
    invoke-static {v0}, Lcom/amazon/kindle/webservices/KindleWebServiceURLs;->acquireOfferFromAsinServiceURL(Lcom/amazon/kcp/application/Marketplace;)Lcom/amazon/kindle/webservices/WebserviceURL;

    move-result-object v0

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/amazon/kindle/webservices/WebserviceURL;->getFullURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;->offerId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setUrl(Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 302
    iget-object v0, p0, Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;->refTag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/store/glide/request/GlideWebRequest;->appendReftag(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getUrl()Ljava/lang/String;

    return-void
.end method


# virtual methods
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

    .line 288
    invoke-virtual {p0}, Lcom/amazon/kindle/store/glide/request/GlideWebRequest;->getBaseHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    .line 289
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getHttpVerb()Ljava/lang/String;
    .locals 1

    const-string v0, "POST"

    return-object v0
.end method

.method public onRequestComplete()Z
    .locals 4

    .line 118
    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;->callback:Lcom/amazon/kindle/krx/glide/IAcquireOfferFromAsinCallback;

    iget-object v3, p0, Lcom/amazon/kindle/store/glide/request/GlideWebRequest;->clientId:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;->handleRequestFailed(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Lcom/amazon/kindle/krx/glide/IAcquireOfferFromAsinCallback;Ljava/lang/String;)V

    return v1

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;->glideResponse:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 124
    sget-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->APP_INTERNAL_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    iget-object v2, p0, Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;->callback:Lcom/amazon/kindle/krx/glide/IAcquireOfferFromAsinCallback;

    iget-object v3, p0, Lcom/amazon/kindle/store/glide/request/GlideWebRequest;->clientId:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;->handleRequestFailed(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Lcom/amazon/kindle/krx/glide/IAcquireOfferFromAsinCallback;Ljava/lang/String;)V

    return v1

    .line 129
    :cond_1
    iget-object v1, p0, Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;->callback:Lcom/amazon/kindle/krx/glide/IAcquireOfferFromAsinCallback;

    iget-object v2, p0, Lcom/amazon/kindle/store/glide/request/GlideWebRequest;->clientId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;->handleResponse(Ljava/lang/String;Lcom/amazon/kindle/krx/glide/IAcquireOfferFromAsinCallback;Ljava/lang/String;)V

    .line 130
    invoke-super {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->onRequestComplete()Z

    move-result v0

    return v0
.end method
