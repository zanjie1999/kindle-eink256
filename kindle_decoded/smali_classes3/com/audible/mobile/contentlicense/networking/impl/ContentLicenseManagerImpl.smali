.class public Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;
.super Ljava/lang/Object;
.source "ContentLicenseManagerImpl.java"

# interfaces
.implements Lcom/audible/mobile/contentlicense/networking/ContentLicenseManager;


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private final contentLicenseService:Lcom/audible/mobile/contentlicense/networking/ContentLicenseService;

.field private final metricRecorder:Lcom/audible/mobile/contentlicense/networking/metrics/AclsMetricRecorder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    new-instance v0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    const-class v1, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;

    invoke-direct {v0, v1}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method constructor <init>(Lcom/audible/mobile/contentlicense/networking/retrofit/AudibleContentLicenseApiRetrofitFactory;Lcom/audible/mobile/metric/logger/MetricManager;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "metricManager cannot be null"

    .line 68
    invoke-static {p2, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    new-instance v0, Lcom/audible/mobile/networking/retrofit/ApiManager;

    invoke-static {p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/audible/mobile/framework/Factory;

    invoke-direct {v0, p1}, Lcom/audible/mobile/networking/retrofit/ApiManager;-><init>(Lcom/audible/mobile/framework/Factory;)V

    .line 70
    const-class p1, Lcom/audible/mobile/contentlicense/networking/ContentLicenseService;

    invoke-virtual {v0, p1}, Lcom/audible/mobile/networking/retrofit/ApiManager;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/mobile/contentlicense/networking/ContentLicenseService;

    iput-object p1, p0, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;->contentLicenseService:Lcom/audible/mobile/contentlicense/networking/ContentLicenseService;

    .line 71
    new-instance p1, Lcom/audible/mobile/contentlicense/networking/metrics/AclsMetricRecorder;

    invoke-direct {p1, p2}, Lcom/audible/mobile/contentlicense/networking/metrics/AclsMetricRecorder;-><init>(Lcom/audible/mobile/metric/logger/MetricManager;)V

    iput-object p1, p0, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;->metricRecorder:Lcom/audible/mobile/contentlicense/networking/metrics/AclsMetricRecorder;

    return-void
.end method

.method public constructor <init>(Lcom/audible/mobile/identity/IdentityManager;Lcom/audible/mobile/metric/logger/MetricManager;)V
    .locals 1

    .line 61
    new-instance v0, Lcom/audible/mobile/contentlicense/networking/retrofit/AudibleContentLicenseApiRetrofitFactory;

    invoke-static {p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/audible/mobile/identity/IdentityManager;

    invoke-direct {v0, p1}, Lcom/audible/mobile/contentlicense/networking/retrofit/AudibleContentLicenseApiRetrofitFactory;-><init>(Lcom/audible/mobile/identity/IdentityManager;)V

    invoke-direct {p0, v0, p2}, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;-><init>(Lcom/audible/mobile/contentlicense/networking/retrofit/AudibleContentLicenseApiRetrofitFactory;Lcom/audible/mobile/metric/logger/MetricManager;)V

    return-void
.end method

.method static synthetic access$000()Lorg/slf4j/Logger;
    .locals 1

    .line 51
    sget-object v0, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;->LOGGER:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;)Lcom/audible/mobile/contentlicense/networking/metrics/AclsMetricRecorder;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;->metricRecorder:Lcom/audible/mobile/contentlicense/networking/metrics/AclsMetricRecorder;

    return-object p0
.end method

.method static synthetic access$200(Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;Lcom/audible/mobile/metric/domain/Metric$Name;Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;Lcom/audible/mobile/contentlicense/networking/model/ContentLicenseResponse;Lcom/audible/mobile/domain/Asin;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;->recordCounterMetricWithRequestId(Lcom/audible/mobile/metric/domain/Metric$Name;Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;Lcom/audible/mobile/contentlicense/networking/model/ContentLicenseResponse;Lcom/audible/mobile/domain/Asin;)V

    return-void
.end method

.method private recordCounterMetricWithRequestId(Lcom/audible/mobile/metric/domain/Metric$Name;Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;Lcom/audible/mobile/contentlicense/networking/model/ContentLicenseResponse;Lcom/audible/mobile/domain/Asin;)V
    .locals 2

    const-string v0, "metricName can\'t be null"

    .line 259
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "consumptionType can\'t be null"

    .line 260
    invoke-static {p2, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "contentLicenseResponse can\'t be null"

    .line 261
    invoke-static {p3, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 262
    invoke-virtual {p3}, Lcom/audible/mobile/contentlicense/networking/model/ContentLicenseResponse;->getContentLicense()Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;

    move-result-object v0

    const-string v1, "contentLicense can\'t be null"

    invoke-static {v0, v1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "asin can\'t be null"

    .line 263
    invoke-static {p4, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 264
    iget-object v0, p0, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;->metricRecorder:Lcom/audible/mobile/contentlicense/networking/metrics/AclsMetricRecorder;

    invoke-virtual {p3}, Lcom/audible/mobile/contentlicense/networking/model/ContentLicenseResponse;->getContentLicense()Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;

    move-result-object p3

    invoke-virtual {p3}, Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;->getRequestId()Lcom/audible/mobile/domain/RequestId;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/audible/mobile/contentlicense/networking/metrics/AclsMetricRecorder;->recordCounterMetricWithRequestId(Lcom/audible/mobile/metric/domain/Metric$Name;Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;Lcom/audible/mobile/domain/RequestId;Lcom/audible/mobile/domain/Asin;)V

    return-void
.end method


# virtual methods
.method public getContentLicense(Lcom/audible/mobile/domain/Asin;Ljava/util/List;Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;Lcom/audible/mobile/contentlicense/networking/request/RightsValidation;Lcom/audible/mobile/contentlicense/networking/request/Quality;Lcom/audible/mobile/domain/ACR;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;ZZZ)Lio/reactivex/Single;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/domain/Asin;",
            "Ljava/util/List<",
            "+",
            "Lcom/audible/mobile/contentlicense/networking/request/DrmType;",
            ">;",
            "Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;",
            "Lcom/audible/mobile/contentlicense/networking/request/RightsValidation;",
            "Lcom/audible/mobile/contentlicense/networking/request/Quality;",
            "Lcom/audible/mobile/domain/ACR;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "ZZZ)",
            "Lio/reactivex/Single<",
            "Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object/from16 v15, p3

    move-object/from16 v7, p6

    move-object/from16 v9, p8

    const-string v2, "asin can\'t be null"

    .line 90
    invoke-static {v1, v2}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    invoke-interface/range {p1 .. p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v4, "not a valid asin"

    invoke-static {v2, v4}, Lcom/audible/mobile/util/Assert;->validAsin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "supportedDrmTypes can\'t be null"

    .line 92
    invoke-static {v3, v2}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 93
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const-string v4, "supportedDrmTypes can\'t be empty"

    invoke-static {v2, v4}, Lcom/audible/mobile/util/Assert;->isFalse(ZLjava/lang/String;)V

    const-string v2, "consumptionType can\'t be null"

    .line 94
    invoke-static {v15, v2}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz v7, :cond_0

    .line 96
    sget-object v2, Lcom/audible/mobile/domain/ACR;->NONE:Lcom/audible/mobile/domain/ACR;

    invoke-virtual {v2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 97
    invoke-interface/range {p6 .. p6}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v4, "not a valid acr"

    invoke-static {v2, v4}, Lcom/audible/mobile/util/Assert;->validACR(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_0
    sget-object v2, Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;->DOWNLOAD:Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;

    if-ne v15, v2, :cond_1

    .line 101
    sget-object v2, Lcom/audible/mobile/contentlicense/networking/request/DrmType;->HLS:Lcom/audible/mobile/contentlicense/networking/request/DrmType;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "HLS is only supported for streaming"

    invoke-static {v2, v4}, Lcom/audible/mobile/util/Assert;->isFalse(ZLjava/lang/String;)V

    const-string v2, "adaptive bitrate can only be specified for streaming"

    .line 102
    invoke-static {v9, v2}, Lcom/audible/mobile/util/Assert;->isNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 103
    :cond_1
    sget-object v2, Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;->STREAMING:Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;

    if-ne v15, v2, :cond_2

    .line 104
    sget-object v2, Lcom/audible/mobile/contentlicense/networking/request/DrmType;->ADRM:Lcom/audible/mobile/contentlicense/networking/request/DrmType;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "ADRM is only supported for offline download"

    invoke-static {v2, v4}, Lcom/audible/mobile/util/Assert;->isFalse(ZLjava/lang/String;)V

    if-eqz v9, :cond_2

    const-string v2, "if adaptive bitrate is specified quality cannot be specified"

    move-object/from16 v6, p5

    .line 106
    invoke-static {v6, v2}, Lcom/audible/mobile/util/Assert;->isNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    :goto_0
    move-object/from16 v6, p5

    .line 110
    :goto_1
    sget-object v2, Lcom/audible/mobile/contentlicense/networking/request/DrmType;->PLAY_READY:Lcom/audible/mobile/contentlicense/networking/request/DrmType;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 114
    iget-object v2, v0, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;->metricRecorder:Lcom/audible/mobile/contentlicense/networking/metrics/AclsMetricRecorder;

    if-eqz p11, :cond_3

    sget-object v4, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;->ACLSWithChaptersMetricTimer:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    goto :goto_2

    :cond_3
    sget-object v4, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;->ACLSMetricTimer:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    :goto_2
    invoke-virtual {v2, v4, v15, v1}, Lcom/audible/mobile/contentlicense/networking/metrics/AclsMetricRecorder;->getAndStartTimerMetric(Lcom/audible/mobile/metric/domain/Metric$Name;Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;Lcom/audible/mobile/domain/Asin;)Lcom/audible/mobile/metric/domain/TimerMetric;

    move-result-object v14

    .line 116
    new-instance v13, Lcom/audible/mobile/contentlicense/networking/request/ContentLicenseRequest;

    move-object v2, v13

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move-object v15, v13

    move/from16 v13, p12

    move-object/from16 v16, v14

    move/from16 v14, p13

    invoke-direct/range {v2 .. v14}, Lcom/audible/mobile/contentlicense/networking/request/ContentLicenseRequest;-><init>(Ljava/util/List;Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;Lcom/audible/mobile/contentlicense/networking/request/RightsValidation;Lcom/audible/mobile/contentlicense/networking/request/Quality;Lcom/audible/mobile/domain/ACR;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;ZZZ)V

    .line 120
    iget-object v2, v0, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;->contentLicenseService:Lcom/audible/mobile/contentlicense/networking/ContentLicenseService;

    invoke-interface {v2, v1, v15}, Lcom/audible/mobile/contentlicense/networking/ContentLicenseService;->getContentLicense(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/contentlicense/networking/request/ContentLicenseRequest;)Lio/reactivex/Single;

    move-result-object v2

    new-instance v3, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl$3;

    invoke-direct {v3, v0, v4, v1}, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl$3;-><init>(Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;Lcom/audible/mobile/domain/Asin;)V

    .line 121
    invoke-virtual {v2, v3}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v2

    new-instance v3, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl$2;

    move-object/from16 v5, v16

    invoke-direct {v3, v0, v5}, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl$2;-><init>(Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;Lcom/audible/mobile/metric/domain/TimerMetric;)V

    .line 190
    invoke-virtual {v2, v3}, Lio/reactivex/Single;->doOnSuccess(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object v2

    new-instance v3, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl$1;

    invoke-direct {v3, v0, v5, v4, v1}, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl$1;-><init>(Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;Lcom/audible/mobile/metric/domain/TimerMetric;Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;Lcom/audible/mobile/domain/Asin;)V

    .line 196
    invoke-virtual {v2, v3}, Lio/reactivex/Single;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object v1

    return-object v1

    .line 111
    :cond_4
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Only ADRM, HLS and MPEG drm types are supported"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
