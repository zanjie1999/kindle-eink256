.class public Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;
.super Ljava/lang/Object;
.source "AudibleDrmAuthentication.java"


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private final activationDataRepository:Lcom/audible/mobile/activation/ActivationDataRepository;

.field private final identityManager:Lcom/audible/mobile/identity/IdentityManager;

.field private final metricLogger:Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricLogger;

.field private final sdk:Lcom/audible/sdk/AudibleSDK;

.field private final voucherProvider:Lcom/audible/license/provider/VoucherProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    const-class v1, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;

    invoke-direct {v0, v1}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/audible/sdk/AudibleSDK;Lcom/audible/mobile/identity/IdentityManager;Lcom/audible/license/provider/VoucherProvider;Lcom/audible/mobile/activation/ActivationDataRepository;Lcom/audible/mobile/metric/logger/MetricManager;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AudibleSDK must not be null"

    .line 69
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "IdentityManager must not be null"

    .line 70
    invoke-static {p2, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "ActivationDataRepository must not be null"

    .line 71
    invoke-static {p4, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    iput-object p1, p0, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;->sdk:Lcom/audible/sdk/AudibleSDK;

    .line 74
    iput-object p2, p0, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;->identityManager:Lcom/audible/mobile/identity/IdentityManager;

    .line 75
    iput-object p3, p0, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;->voucherProvider:Lcom/audible/license/provider/VoucherProvider;

    .line 76
    iput-object p4, p0, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;->activationDataRepository:Lcom/audible/mobile/activation/ActivationDataRepository;

    .line 77
    new-instance p1, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricLogger;

    invoke-static {p5}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p5, Lcom/audible/mobile/metric/logger/MetricManager;

    invoke-direct {p1, p5}, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricLogger;-><init>(Lcom/audible/mobile/metric/logger/MetricManager;)V

    iput-object p1, p0, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;->metricLogger:Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricLogger;

    return-void
.end method

.method private authenticateCdn(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;
    .locals 4

    .line 167
    iget-object v0, p0, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;->metricLogger:Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricLogger;

    invoke-virtual {v0, p1}, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricLogger;->setAsin(Lcom/audible/mobile/domain/Asin;)V

    .line 168
    iget-object v0, p0, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;->metricLogger:Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricLogger;

    invoke-virtual {v0, p2}, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricLogger;->setAcr(Lcom/audible/mobile/domain/ACR;)V

    .line 170
    iget-object p2, p0, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;->metricLogger:Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricLogger;

    invoke-virtual {p2}, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricLogger;->getAndStartAuthTimerMetric()Lcom/audible/mobile/metric/domain/TimerMetric;

    move-result-object p2

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;->voucherProvider:Lcom/audible/license/provider/VoucherProvider;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/audible/license/provider/VoucherProvider;->get(Lcom/audible/mobile/domain/Asin;Z)Lcom/audible/license/model/Voucher;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Lcom/audible/license/model/Voucher;->getKey()[B

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/audible/license/model/Voucher;->getIv()[B

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    iget-object v1, p0, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;->sdk:Lcom/audible/sdk/AudibleSDK;

    invoke-virtual {v0}, Lcom/audible/license/model/Voucher;->getKey()[B

    move-result-object v2

    invoke-virtual {v0}, Lcom/audible/license/model/Voucher;->getIv()[B

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/audible/sdk/AudibleSDK;->authenticateCdn([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->SUCCESS:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->FAILURE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    goto :goto_1

    .line 179
    :cond_2
    :goto_0
    sget-object v0, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "No authentication required! Assuming audio file is not encrypted."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 180
    sget-object p1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->SUCCESS:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;
    :try_end_0
    .catch Lcom/audible/license/exceptions/VoucherLoadException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 200
    sget-object v1, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "Failed to authenticate title {} using voucher."

    invoke-interface {v1, v2, p1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 201
    sget-object p1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->FAILURE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    goto :goto_2

    :catch_1
    move-exception v0

    .line 185
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/io/FileNotFoundException;

    if-eqz v1, :cond_3

    .line 186
    sget-object v1, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "Title {} voucher not found."

    invoke-interface {v1, v2, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 187
    sget-object p1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->VOUCHER_NOT_FOUND:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    goto :goto_2

    .line 188
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lcom/audible/license/exceptions/InvalidVoucherException;

    if-eqz v1, :cond_4

    .line 189
    sget-object v1, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Title {} voucher is invalid. {}."

    invoke-interface {v1, v3, p1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 190
    sget-object p1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->INVALID_VOUCHER:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    goto :goto_2

    .line 191
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/security/GeneralSecurityException;

    if-eqz v1, :cond_5

    .line 192
    sget-object v1, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to decrypt title {} voucher. {}."

    invoke-interface {v1, v3, p1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 193
    sget-object p1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->FAILED_TO_DECRYPT_VOUCHER:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    goto :goto_2

    .line 195
    :cond_5
    sget-object v1, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    const-string v3, "There was a problem loading or parsing the title {} voucher. {}."

    invoke-interface {v1, v3, p1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 196
    sget-object p1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->INVALID_VOUCHER:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    .line 206
    :goto_2
    sget-object v1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->SUCCESS:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    if-ne p1, v1, :cond_6

    .line 207
    iget-object v0, p0, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;->metricLogger:Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricLogger;

    sget-object v1, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;->EXO_DRM_CDN_AUTHENTICATION_SUCCESS:Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;

    invoke-virtual {v0, v1}, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricLogger;->recordCounterMetric(Lcom/audible/mobile/metric/domain/Metric$Name;)V

    .line 208
    iget-object v0, p0, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;->metricLogger:Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricLogger;

    invoke-virtual {v0, p2}, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricLogger;->recordTimerMetric(Lcom/audible/mobile/metric/domain/TimerMetric;)V

    goto :goto_3

    :cond_6
    if-eqz v0, :cond_7

    .line 211
    iget-object v1, p0, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;->metricLogger:Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricLogger;

    sget-object v2, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;->EXO_DRM_CDN_AUTHENTICATION_FAILURE_SDK:Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;

    invoke-virtual {v1, v2, v0}, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricLogger;->recordExceptionMetric(Lcom/audible/mobile/metric/domain/Metric$Name;Ljava/lang/Exception;)V

    .line 213
    :cond_7
    iget-object v0, p0, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;->metricLogger:Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricLogger;

    sget-object v1, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;->EXO_DRM_CDN_AUTHENTICATION_FAILURE:Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;

    invoke-virtual {v0, v1}, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricLogger;->recordCounterMetric(Lcom/audible/mobile/metric/domain/Metric$Name;)V

    .line 214
    invoke-interface {p2}, Lcom/audible/mobile/metric/domain/TimerMetric;->stop()V

    :goto_3
    return-object p1
.end method

.method private authenticateCds(Lcom/audible/mobile/identity/DeviceSerialNumber;)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;
    .locals 2

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;->activationDataRepository:Lcom/audible/mobile/activation/ActivationDataRepository;

    invoke-interface {v0}, Lcom/audible/mobile/activation/ActivationDataRepository;->queryActivationData()[B

    move-result-object v0

    if-eqz v0, :cond_2

    .line 229
    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    .line 235
    :cond_0
    iget-object v1, p0, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;->sdk:Lcom/audible/sdk/AudibleSDK;

    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/audible/sdk/AudibleSDK;->authenticate([BLjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 236
    sget-object p1, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;->LOGGER:Lorg/slf4j/Logger;

    const-string v0, "Exo drm authentication for CDS titles succeeded!"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 237
    iget-object p1, p0, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;->metricLogger:Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricLogger;

    sget-object v0, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;->EXO_DRM_CDS_AUTHENTICATION_SUCCESS:Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;

    invoke-virtual {p1, v0}, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricLogger;->recordCounterMetric(Lcom/audible/mobile/metric/domain/Metric$Name;)V

    .line 238
    sget-object p1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->SUCCESS:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    return-object p1

    .line 240
    :cond_1
    sget-object p1, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;->LOGGER:Lorg/slf4j/Logger;

    const-string v0, "Exo drm authentication for CDS titles failed"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 241
    iget-object p1, p0, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;->metricLogger:Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricLogger;

    sget-object v0, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;->EXO_DRM_CDS_AUTHENTICATION_FAILURE:Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;

    invoke-virtual {p1, v0}, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricLogger;->recordCounterMetric(Lcom/audible/mobile/metric/domain/Metric$Name;)V

    goto :goto_2

    .line 230
    :cond_2
    :goto_0
    sget-object p1, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;->LOGGER:Lorg/slf4j/Logger;

    const-string v0, "No activation data was provided"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 231
    iget-object p1, p0, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;->metricLogger:Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricLogger;

    sget-object v0, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;->EXO_DRM_AUTHENTICATION_FAILURE_ILLEGAL_ARGUMENTS:Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;

    invoke-virtual {p1, v0}, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricLogger;->recordCounterMetric(Lcom/audible/mobile/metric/domain/Metric$Name;)V

    .line 232
    sget-object p1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->FAILURE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;
    :try_end_0
    .catch Lcom/audible/sdk/DeviceNotActivatedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/audible/sdk/DeviceNotActivatedForThisFileException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 244
    :goto_1
    sget-object v0, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Exo drm authentication for CDS titles failed!"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 245
    iget-object v0, p0, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;->metricLogger:Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricLogger;

    sget-object v1, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;->EXO_DRM_CDS_AUTHENTICATION_FAILURE_SDK:Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;

    invoke-virtual {v0, v1, p1}, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricLogger;->recordExceptionMetric(Lcom/audible/mobile/metric/domain/Metric$Name;Ljava/lang/Exception;)V

    .line 248
    :goto_2
    sget-object p1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->FAILURE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    return-object p1
.end method


# virtual methods
.method public authenticate(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;
        }
    .end annotation

    const-string v0, "asin cannot be null"

    .line 89
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;->sdk:Lcom/audible/sdk/AudibleSDK;

    invoke-virtual {v0}, Lcom/audible/sdk/AudibleSDK;->getDRMType()Lcom/audible/sdk/AudibleSDK$DRMType;

    move-result-object v0

    sget-object v1, Lcom/audible/sdk/AudibleSDK$DRMType;->DRM_TYPE_UNPROTECTED:Lcom/audible/sdk/AudibleSDK$DRMType;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    sget-object p1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->SUCCESS:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    return-object p1

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;->identityManager:Lcom/audible/mobile/identity/IdentityManager;

    invoke-interface {v0}, Lcom/audible/mobile/identity/IdentityManager;->getDeviceSerialNumber()Lcom/audible/mobile/identity/DeviceSerialNumber;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 100
    invoke-interface {v0}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/audible/mobile/util/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 104
    :cond_1
    sget-object v1, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication$1;->$SwitchMap$com$audible$sdk$AudibleSDK$FileType:[I

    iget-object v2, p0, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;->sdk:Lcom/audible/sdk/AudibleSDK;

    invoke-virtual {v2}, Lcom/audible/sdk/AudibleSDK;->getFileType()Lcom/audible/sdk/AudibleSDK$FileType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 p1, 0x2

    if-eq v1, p1, :cond_2

    .line 112
    sget-object p1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->FAILURE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    goto :goto_1

    .line 109
    :cond_2
    invoke-direct {p0, v0}, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;->authenticateCds(Lcom/audible/mobile/identity/DeviceSerialNumber;)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    move-result-object p1

    goto :goto_1

    .line 106
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;->authenticateCdn(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    move-result-object p1

    goto :goto_1

    .line 101
    :cond_4
    :goto_0
    sget-object p2, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;->LOGGER:Lorg/slf4j/Logger;

    const-string v0, "ExoPlayer cannot authenticate title: {} with empty parameters!"

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    iget-object p1, p0, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;->metricLogger:Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricLogger;

    sget-object p2, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;->EXO_DRM_AUTHENTICATION_FAILURE_ILLEGAL_ARGUMENTS:Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;

    invoke-virtual {p1, p2}, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricLogger;->recordCounterMetric(Lcom/audible/mobile/metric/domain/Metric$Name;)V

    .line 103
    sget-object p1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->FAILURE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    :goto_1
    return-object p1
.end method

.method public validateVoucher(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;)Z
    .locals 4

    .line 129
    iget-object v0, p0, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;->sdk:Lcom/audible/sdk/AudibleSDK;

    invoke-virtual {v0}, Lcom/audible/sdk/AudibleSDK;->getFileType()Lcom/audible/sdk/AudibleSDK$FileType;

    move-result-object v0

    sget-object v1, Lcom/audible/sdk/AudibleSDK$FileType;->FILE_TYPE_AUDIBLE_CDN:Lcom/audible/sdk/AudibleSDK$FileType;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;->metricLogger:Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricLogger;

    invoke-virtual {v0, p1}, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricLogger;->setAsin(Lcom/audible/mobile/domain/Asin;)V

    .line 135
    iget-object v0, p0, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;->metricLogger:Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricLogger;

    invoke-virtual {v0, p2}, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricLogger;->setAcr(Lcom/audible/mobile/domain/ACR;)V

    .line 137
    iget-object p2, p0, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;->metricLogger:Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricLogger;

    invoke-virtual {p2}, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricLogger;->getAndStartAuthTimerMetric()Lcom/audible/mobile/metric/domain/TimerMetric;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 141
    :try_start_0
    iget-object v3, p0, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;->voucherProvider:Lcom/audible/license/provider/VoucherProvider;

    invoke-interface {v3, p1, v2}, Lcom/audible/license/provider/VoucherProvider;->get(Lcom/audible/mobile/domain/Asin;Z)Lcom/audible/license/model/Voucher;

    move-result-object v0
    :try_end_0
    .catch Lcom/audible/license/exceptions/VoucherLoadException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 143
    :catch_0
    sget-object p1, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "Failed to get the voucher locally."

    invoke-interface {p1, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :goto_0
    if-eqz v0, :cond_1

    .line 147
    iget-object p1, p0, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;->metricLogger:Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricLogger;

    sget-object v0, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;->EXO_DRM_CDN_AUTHENTICATION_SUCCESS:Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;

    invoke-virtual {p1, v0}, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricLogger;->recordCounterMetric(Lcom/audible/mobile/metric/domain/Metric$Name;)V

    .line 148
    iget-object p1, p0, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;->metricLogger:Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricLogger;

    invoke-virtual {p1, p2}, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricLogger;->recordTimerMetric(Lcom/audible/mobile/metric/domain/TimerMetric;)V

    return v1

    .line 151
    :cond_1
    iget-object p1, p0, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;->metricLogger:Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricLogger;

    sget-object v0, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;->EXO_DRM_CDN_AUTHENTICATION_FAILURE:Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;

    invoke-virtual {p1, v0}, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricLogger;->recordCounterMetric(Lcom/audible/mobile/metric/domain/Metric$Name;)V

    .line 152
    invoke-interface {p2}, Lcom/audible/mobile/metric/domain/TimerMetric;->stop()V

    return v2
.end method
