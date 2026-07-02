.class public Lcom/audible/cdn/voucher/download/VoucherFetcher;
.super Ljava/lang/Object;
.source "VoucherFetcher.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final contentLicenseManager:Lcom/audible/mobile/contentlicense/networking/ContentLicenseManager;

.field private final voucherManager:Lcom/audible/cdn/voucher/VoucherManager;

.field private final voucherMetricRecorder:Lcom/audible/license/metrics/VoucherMetricRecorder;


# direct methods
.method constructor <init>(Lcom/audible/mobile/identity/IdentityManager;Lcom/audible/cdn/voucher/VoucherManager;Lcom/audible/mobile/contentlicense/networking/ContentLicenseManager;Lcom/audible/mobile/metric/logger/MetricManager;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "identityManager cannot be null"

    .line 71
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "voucherManager cannot be null"

    .line 72
    invoke-static {p2, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "contentLicenseManager cannot be null"

    .line 73
    invoke-static {p3, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "metricManager cannot be null"

    .line 74
    invoke-static {p4, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    iput-object p2, p0, Lcom/audible/cdn/voucher/download/VoucherFetcher;->voucherManager:Lcom/audible/cdn/voucher/VoucherManager;

    .line 77
    iput-object p3, p0, Lcom/audible/cdn/voucher/download/VoucherFetcher;->contentLicenseManager:Lcom/audible/mobile/contentlicense/networking/ContentLicenseManager;

    .line 78
    new-instance p1, Lcom/audible/license/metrics/VoucherMetricRecorder;

    invoke-direct {p1, p4}, Lcom/audible/license/metrics/VoucherMetricRecorder;-><init>(Lcom/audible/mobile/metric/logger/MetricManager;)V

    iput-object p1, p0, Lcom/audible/cdn/voucher/download/VoucherFetcher;->voucherMetricRecorder:Lcom/audible/license/metrics/VoucherMetricRecorder;

    return-void
.end method

.method public constructor <init>(Lcom/audible/mobile/identity/IdentityManager;Lcom/audible/cdn/voucher/VoucherManager;Lcom/audible/mobile/metric/logger/MetricManager;)V
    .locals 1

    .line 62
    new-instance v0, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;

    invoke-direct {v0, p1, p3}, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;-><init>(Lcom/audible/mobile/identity/IdentityManager;Lcom/audible/mobile/metric/logger/MetricManager;)V

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/audible/cdn/voucher/download/VoucherFetcher;-><init>(Lcom/audible/mobile/identity/IdentityManager;Lcom/audible/cdn/voucher/VoucherManager;Lcom/audible/mobile/contentlicense/networking/ContentLicenseManager;Lcom/audible/mobile/metric/logger/MetricManager;)V

    return-void
.end method

.method static synthetic access$000(Lcom/audible/cdn/voucher/download/VoucherFetcher;)Lcom/audible/license/metrics/VoucherMetricRecorder;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/audible/cdn/voucher/download/VoucherFetcher;->voucherMetricRecorder:Lcom/audible/license/metrics/VoucherMetricRecorder;

    return-object p0
.end method


# virtual methods
.method fetchVoucher(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/contentlicense/networking/request/Quality;Lcom/audible/mobile/domain/ACR;Ljava/lang/String;)Lio/reactivex/Single;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/domain/Asin;",
            "Lcom/audible/mobile/contentlicense/networking/request/Quality;",
            "Lcom/audible/mobile/domain/ACR;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/audible/license/model/DownloadMetadata;",
            ">;"
        }
    .end annotation

    const-string v0, "asin cannot be null"

    .line 153
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 155
    iget-object v0, p0, Lcom/audible/cdn/voucher/download/VoucherFetcher;->voucherMetricRecorder:Lcom/audible/license/metrics/VoucherMetricRecorder;

    sget-object v1, Lcom/audible/license/metrics/VoucherMetricSource;->VoucherFetcher:Lcom/audible/license/metrics/VoucherMetricSource;

    invoke-virtual {p0}, Lcom/audible/cdn/voucher/download/VoucherFetcher;->getTimerMetricName()Lcom/audible/mobile/metric/domain/Metric$Name;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/audible/license/metrics/VoucherMetricRecorder;->getAndStartTimerMetric(Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;Lcom/audible/mobile/domain/Asin;)Lcom/audible/mobile/metric/domain/TimerMetric;

    move-result-object v0

    .line 157
    iget-object v2, p0, Lcom/audible/cdn/voucher/download/VoucherFetcher;->contentLicenseManager:Lcom/audible/mobile/contentlicense/networking/ContentLicenseManager;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/audible/cdn/voucher/download/VoucherFetcher;->getContentLicense(Lcom/audible/mobile/contentlicense/networking/ContentLicenseManager;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/contentlicense/networking/request/Quality;Lcom/audible/mobile/domain/ACR;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p2

    new-instance p4, Lcom/audible/cdn/voucher/download/VoucherFetcher$4;

    invoke-direct {p4, p0, p1, p3}, Lcom/audible/cdn/voucher/download/VoucherFetcher$4;-><init>(Lcom/audible/cdn/voucher/download/VoucherFetcher;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;)V

    invoke-virtual {p2, p4}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    new-instance p2, Lcom/audible/cdn/voucher/download/VoucherFetcher$3;

    invoke-direct {p2, p0}, Lcom/audible/cdn/voucher/download/VoucherFetcher$3;-><init>(Lcom/audible/cdn/voucher/download/VoucherFetcher;)V

    .line 162
    invoke-virtual {p1, p2}, Lio/reactivex/Single;->onErrorResumeNext(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    new-instance p2, Lcom/audible/cdn/voucher/download/VoucherFetcher$2;

    invoke-direct {p2, p0, v0}, Lcom/audible/cdn/voucher/download/VoucherFetcher$2;-><init>(Lcom/audible/cdn/voucher/download/VoucherFetcher;Lcom/audible/mobile/metric/domain/TimerMetric;)V

    .line 171
    invoke-virtual {p1, p2}, Lio/reactivex/Single;->doOnSuccess(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object p1

    new-instance p2, Lcom/audible/cdn/voucher/download/VoucherFetcher$1;

    invoke-direct {p2, p0, v0}, Lcom/audible/cdn/voucher/download/VoucherFetcher$1;-><init>(Lcom/audible/cdn/voucher/download/VoucherFetcher;Lcom/audible/mobile/metric/domain/TimerMetric;)V

    .line 176
    invoke-virtual {p1, p2}, Lio/reactivex/Single;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public fetchVoucherBlocking(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/contentlicense/networking/request/Quality;)Lcom/audible/license/model/DownloadMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;,
            Lcom/audible/mobile/networking/retrofit/exception/WebServiceApiValidationException;,
            Lcom/audible/license/exceptions/ContentLicenseHttpException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/audible/cdn/voucher/download/VoucherFetcher;->fetchVoucherBlocking(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/contentlicense/networking/request/Quality;Lcom/audible/mobile/domain/ACR;Ljava/lang/String;)Lcom/audible/license/model/DownloadMetadata;

    move-result-object p1

    return-object p1
.end method

.method public fetchVoucherBlocking(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/contentlicense/networking/request/Quality;Lcom/audible/mobile/domain/ACR;Ljava/lang/String;)Lcom/audible/license/model/DownloadMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;,
            Lcom/audible/mobile/networking/retrofit/exception/WebServiceApiValidationException;,
            Lcom/audible/license/exceptions/ContentLicenseHttpException;
        }
    .end annotation

    const-string v0, "asin cannot be null"

    .line 111
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "quality cannot be null"

    .line 112
    invoke-static {p2, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 113
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/audible/cdn/voucher/download/VoucherFetcher;->fetchVoucher(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/contentlicense/networking/request/Quality;Lcom/audible/mobile/domain/ACR;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Single;->blockingGet()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/license/model/DownloadMetadata;

    return-object p1
.end method

.method protected getContentLicense(Lcom/audible/mobile/contentlicense/networking/ContentLicenseManager;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/contentlicense/networking/request/Quality;Lcom/audible/mobile/domain/ACR;Ljava/lang/String;)Lio/reactivex/Single;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/contentlicense/networking/ContentLicenseManager;",
            "Lcom/audible/mobile/domain/Asin;",
            "Lcom/audible/mobile/contentlicense/networking/request/Quality;",
            "Lcom/audible/mobile/domain/ACR;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;",
            ">;"
        }
    .end annotation

    .line 191
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 192
    sget-object v0, Lcom/audible/mobile/contentlicense/networking/request/DrmType;->ADRM:Lcom/audible/mobile/contentlicense/networking/request/DrmType;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    sget-object v0, Lcom/audible/mobile/contentlicense/networking/request/DrmType;->MPEG:Lcom/audible/mobile/contentlicense/networking/request/DrmType;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    sget-object v3, Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;->DOWNLOAD:Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p1

    move-object/from16 v1, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-interface/range {v0 .. v13}, Lcom/audible/mobile/contentlicense/networking/ContentLicenseManager;->getContentLicense(Lcom/audible/mobile/domain/Asin;Ljava/util/List;Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;Lcom/audible/mobile/contentlicense/networking/request/RightsValidation;Lcom/audible/mobile/contentlicense/networking/request/Quality;Lcom/audible/mobile/domain/ACR;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;ZZZ)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method protected getTimerMetricName()Lcom/audible/mobile/metric/domain/Metric$Name;
    .locals 1

    .line 242
    sget-object v0, Lcom/audible/license/metrics/MetricNames;->VoucherFetcherTimer:Lcom/audible/license/metrics/MetricNames;

    return-object v0
.end method

.method protected processContentLicense(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;)Lcom/audible/license/model/DownloadMetadata;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/license/exceptions/VoucherLoadException;
        }
    .end annotation

    const-string p2, "asin cannot be null"

    .line 222
    invoke-static {p1, p2}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p2, "contentLicense cannot be null"

    .line 223
    invoke-static {p3, p2}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 225
    iget-object p2, p0, Lcom/audible/cdn/voucher/download/VoucherFetcher;->voucherManager:Lcom/audible/cdn/voucher/VoucherManager;

    invoke-virtual {p3}, Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;->getLicense()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/audible/cdn/voucher/VoucherManager;->saveVoucher(Lcom/audible/mobile/domain/Asin;Ljava/lang/String;)V

    .line 226
    invoke-virtual {p3}, Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;->getContentMetadata()Lcom/audible/mobile/contentlicense/networking/model/ContentMetadata;

    move-result-object p1

    .line 227
    new-instance p2, Lcom/audible/license/model/DownloadMetadata;

    .line 228
    invoke-virtual {p1}, Lcom/audible/mobile/contentlicense/networking/model/ContentMetadata;->getContentUrl()Lcom/audible/mobile/contentlicense/networking/model/ContentUrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/audible/mobile/contentlicense/networking/model/ContentUrl;->getUrl()Landroid/net/Uri;

    move-result-object v1

    .line 229
    invoke-virtual {p1}, Lcom/audible/mobile/contentlicense/networking/model/ContentMetadata;->getContentReference()Lcom/audible/mobile/contentlicense/networking/model/ContentReference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/audible/mobile/contentlicense/networking/model/ContentReference;->getCodec()Ljava/lang/String;

    move-result-object v2

    .line 230
    invoke-virtual {p3}, Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;->getPdfUrl()Ljava/lang/String;

    move-result-object v3

    .line 231
    invoke-virtual {p3}, Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;->getAcr()Lcom/audible/mobile/domain/ACR;

    move-result-object v4

    .line 232
    invoke-virtual {p3}, Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;->getDrmType()Lcom/audible/mobile/contentlicense/networking/request/DrmType;

    move-result-object v5

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/audible/license/model/DownloadMetadata;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lcom/audible/mobile/domain/ACR;Lcom/audible/mobile/contentlicense/networking/request/DrmType;)V

    return-object p2
.end method

.method public refreshVoucherBlocking(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;,
            Lcom/audible/mobile/networking/retrofit/exception/WebServiceApiValidationException;,
            Lcom/audible/license/exceptions/ContentLicenseHttpException;
        }
    .end annotation

    const-string v0, "asin cannot be null"

    .line 131
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 132
    invoke-virtual {p0, p1, v0, p2, v0}, Lcom/audible/cdn/voucher/download/VoucherFetcher;->fetchVoucher(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/contentlicense/networking/request/Quality;Lcom/audible/mobile/domain/ACR;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Single;->blockingGet()Ljava/lang/Object;

    return-void
.end method
