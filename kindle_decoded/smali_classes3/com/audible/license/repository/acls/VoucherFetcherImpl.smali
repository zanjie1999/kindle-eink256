.class public final Lcom/audible/license/repository/acls/VoucherFetcherImpl;
.super Ljava/lang/Object;
.source "VoucherFetcherImpl.kt"

# interfaces
.implements Lcom/audible/license/repository/acls/VoucherFetcher;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVoucherFetcherImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VoucherFetcherImpl.kt\ncom/audible/license/repository/acls/VoucherFetcherImpl\n*L\n1#1,179:1\n*E\n"
.end annotation


# instance fields
.field private final aclsMetricRecorder:Lcom/audible/license/metrics/VoucherMetricRecorder;

.field private final contentLicenseManager:Lcom/audible/mobile/contentlicense/networking/ContentLicenseManager;

.field private final contentLicenseResponseParser:Lcom/audible/license/util/ContentLicenseResponseParser;

.field private final identityManager:Lcom/audible/mobile/identity/IdentityManager;


# direct methods
.method public constructor <init>(Lcom/audible/mobile/identity/IdentityManager;Lcom/audible/mobile/contentlicense/networking/ContentLicenseManager;Lcom/audible/license/metrics/VoucherMetricRecorder;Lcom/audible/license/util/ContentLicenseResponseParser;)V
    .locals 1

    const-string v0, "identityManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentLicenseManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "aclsMetricRecorder"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentLicenseResponseParser"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/audible/license/repository/acls/VoucherFetcherImpl;->identityManager:Lcom/audible/mobile/identity/IdentityManager;

    iput-object p2, p0, Lcom/audible/license/repository/acls/VoucherFetcherImpl;->contentLicenseManager:Lcom/audible/mobile/contentlicense/networking/ContentLicenseManager;

    iput-object p3, p0, Lcom/audible/license/repository/acls/VoucherFetcherImpl;->aclsMetricRecorder:Lcom/audible/license/metrics/VoucherMetricRecorder;

    iput-object p4, p0, Lcom/audible/license/repository/acls/VoucherFetcherImpl;->contentLicenseResponseParser:Lcom/audible/license/util/ContentLicenseResponseParser;

    return-void
.end method

.method public constructor <init>(Lcom/audible/mobile/identity/IdentityManager;Lcom/audible/mobile/metric/logger/MetricManager;Lcom/audible/license/util/ContentLicenseResponseParser;)V
    .locals 2

    const-string v0, "identityManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metricManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentLicenseResponseParser"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance v0, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;

    invoke-direct {v0, p1, p2}, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;-><init>(Lcom/audible/mobile/identity/IdentityManager;Lcom/audible/mobile/metric/logger/MetricManager;)V

    .line 48
    new-instance v1, Lcom/audible/license/metrics/VoucherMetricRecorder;

    invoke-direct {v1, p2}, Lcom/audible/license/metrics/VoucherMetricRecorder;-><init>(Lcom/audible/mobile/metric/logger/MetricManager;)V

    .line 45
    invoke-direct {p0, p1, v0, v1, p3}, Lcom/audible/license/repository/acls/VoucherFetcherImpl;-><init>(Lcom/audible/mobile/identity/IdentityManager;Lcom/audible/mobile/contentlicense/networking/ContentLicenseManager;Lcom/audible/license/metrics/VoucherMetricRecorder;Lcom/audible/license/util/ContentLicenseResponseParser;)V

    return-void
.end method

.method public static final synthetic access$getAclsMetricRecorder$p(Lcom/audible/license/repository/acls/VoucherFetcherImpl;)Lcom/audible/license/metrics/VoucherMetricRecorder;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/audible/license/repository/acls/VoucherFetcherImpl;->aclsMetricRecorder:Lcom/audible/license/metrics/VoucherMetricRecorder;

    return-object p0
.end method

.method public static final synthetic access$getContentLicenseResponseParser$p(Lcom/audible/license/repository/acls/VoucherFetcherImpl;)Lcom/audible/license/util/ContentLicenseResponseParser;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/audible/license/repository/acls/VoucherFetcherImpl;->contentLicenseResponseParser:Lcom/audible/license/util/ContentLicenseResponseParser;

    return-object p0
.end method

.method private final getContentLicense(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/contentlicense/networking/request/Quality;Lcom/audible/mobile/domain/ACR;Lcom/audible/mobile/contentlicense/networking/request/DrmType;Z)Lio/reactivex/Single;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/domain/Asin;",
            "Lcom/audible/mobile/contentlicense/networking/request/Quality;",
            "Lcom/audible/mobile/domain/ACR;",
            "Lcom/audible/mobile/contentlicense/networking/request/DrmType;",
            "Z)",
            "Lio/reactivex/Single<",
            "Lkotlin/Triple<",
            "Lcom/audible/license/repository/db/VoucherMetadata;",
            "Lcom/audible/license/model/EncryptedVoucher;",
            "Lcom/audible/license/model/ExtraContentLicenseInfo;",
            ">;>;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/audible/license/repository/acls/VoucherFetcherImpl;->identityManager:Lcom/audible/mobile/identity/IdentityManager;

    invoke-interface {v0}, Lcom/audible/mobile/identity/IdentityManager;->getActiveAccountCustomerId()Lcom/audible/mobile/domain/CustomerId;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "identityManager.activeAc\u2026tomerId can not be null\")"

    .line 112
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/audible/license/repository/acls/VoucherFetcherImpl;->aclsMetricRecorder:Lcom/audible/license/metrics/VoucherMetricRecorder;

    .line 115
    sget-object v2, Lcom/audible/license/metrics/VoucherMetricSource;->VoucherFetcher:Lcom/audible/license/metrics/VoucherMetricSource;

    .line 116
    sget-object v3, Lcom/audible/license/metrics/MetricNames;->VoucherFetcherTimer:Lcom/audible/license/metrics/MetricNames;

    .line 114
    invoke-virtual {v1, v2, v3, p1}, Lcom/audible/license/metrics/VoucherMetricRecorder;->getAndStartTimerMetric(Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;Lcom/audible/mobile/domain/Asin;)Lcom/audible/mobile/metric/domain/TimerMetric;

    move-result-object v1

    .line 121
    iget-object v3, p0, Lcom/audible/license/repository/acls/VoucherFetcherImpl;->contentLicenseManager:Lcom/audible/mobile/contentlicense/networking/ContentLicenseManager;

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    .line 120
    invoke-direct/range {v2 .. v8}, Lcom/audible/license/repository/acls/VoucherFetcherImpl;->getContentLicenseHelper(Lcom/audible/mobile/contentlicense/networking/ContentLicenseManager;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/contentlicense/networking/request/Quality;Lcom/audible/mobile/domain/ACR;Lcom/audible/mobile/contentlicense/networking/request/DrmType;Z)Lio/reactivex/Single;

    move-result-object p1

    .line 129
    new-instance p2, Lcom/audible/license/repository/acls/VoucherFetcherImpl$getContentLicense$1;

    invoke-direct {p2, p0, v0}, Lcom/audible/license/repository/acls/VoucherFetcherImpl$getContentLicense$1;-><init>(Lcom/audible/license/repository/acls/VoucherFetcherImpl;Lcom/audible/mobile/domain/CustomerId;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    .line 133
    sget-object p2, Lcom/audible/license/repository/acls/VoucherFetcherImpl$getContentLicense$2;->INSTANCE:Lcom/audible/license/repository/acls/VoucherFetcherImpl$getContentLicense$2;

    invoke-virtual {p1, p2}, Lio/reactivex/Single;->onErrorResumeNext(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    .line 144
    new-instance p2, Lcom/audible/license/repository/acls/VoucherFetcherImpl$getContentLicense$3;

    invoke-direct {p2, p0, v1}, Lcom/audible/license/repository/acls/VoucherFetcherImpl$getContentLicense$3;-><init>(Lcom/audible/license/repository/acls/VoucherFetcherImpl;Lcom/audible/mobile/metric/domain/TimerMetric;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Single;->doOnSuccess(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object p1

    .line 147
    new-instance p2, Lcom/audible/license/repository/acls/VoucherFetcherImpl$getContentLicense$4;

    invoke-direct {p2, v1}, Lcom/audible/license/repository/acls/VoucherFetcherImpl$getContentLicense$4;-><init>(Lcom/audible/mobile/metric/domain/TimerMetric;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Single;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object p1

    const-string p2, "contentLicense.map {\n   \u2026clsTimer.stop()\n        }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 112
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "customerId can not be null"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic getContentLicense$default(Lcom/audible/license/repository/acls/VoucherFetcherImpl;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/contentlicense/networking/request/Quality;Lcom/audible/mobile/domain/ACR;Lcom/audible/mobile/contentlicense/networking/request/DrmType;ZILjava/lang/Object;)Lio/reactivex/Single;
    .locals 6

    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_0

    const/4 p4, 0x0

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    const/4 p5, 0x0

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    move v5, p5

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 107
    invoke-direct/range {v0 .. v5}, Lcom/audible/license/repository/acls/VoucherFetcherImpl;->getContentLicense(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/contentlicense/networking/request/Quality;Lcom/audible/mobile/domain/ACR;Lcom/audible/mobile/contentlicense/networking/request/DrmType;Z)Lio/reactivex/Single;

    move-result-object p0

    return-object p0
.end method

.method private final getContentLicenseHelper(Lcom/audible/mobile/contentlicense/networking/ContentLicenseManager;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/contentlicense/networking/request/Quality;Lcom/audible/mobile/domain/ACR;Lcom/audible/mobile/contentlicense/networking/request/DrmType;Z)Lio/reactivex/Single;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/contentlicense/networking/ContentLicenseManager;",
            "Lcom/audible/mobile/domain/Asin;",
            "Lcom/audible/mobile/contentlicense/networking/request/Quality;",
            "Lcom/audible/mobile/domain/ACR;",
            "Lcom/audible/mobile/contentlicense/networking/request/DrmType;",
            "Z)",
            "Lio/reactivex/Single<",
            "Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;",
            ">;"
        }
    .end annotation

    if-eqz p5, :cond_0

    .line 166
    invoke-static/range {p5 .. p5}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/audible/mobile/contentlicense/networking/request/DrmType;

    const/4 v1, 0x0

    sget-object v2, Lcom/audible/mobile/contentlicense/networking/request/DrmType;->ADRM:Lcom/audible/mobile/contentlicense/networking/request/DrmType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/audible/mobile/contentlicense/networking/request/DrmType;->MPEG:Lcom/audible/mobile/contentlicense/networking/request/DrmType;

    aput-object v2, v0, v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    move-object v3, v0

    .line 167
    sget-object v4, Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;->DOWNLOAD:Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/16 v15, 0x1000

    const/16 v16, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v12, p6

    .line 164
    invoke-static/range {v1 .. v16}, Lcom/audible/mobile/contentlicense/networking/ContentLicenseManager$DefaultImpls;->getContentLicense$default(Lcom/audible/mobile/contentlicense/networking/ContentLicenseManager;Lcom/audible/mobile/domain/Asin;Ljava/util/List;Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;Lcom/audible/mobile/contentlicense/networking/request/RightsValidation;Lcom/audible/mobile/contentlicense/networking/request/Quality;Lcom/audible/mobile/domain/ACR;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;ZZZILjava/lang/Object;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public fetchVoucherByAcr(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;Lcom/audible/mobile/contentlicense/networking/request/DrmType;)Lio/reactivex/Single;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/domain/Asin;",
            "Lcom/audible/mobile/domain/ACR;",
            "Lcom/audible/mobile/contentlicense/networking/request/DrmType;",
            ")",
            "Lio/reactivex/Single<",
            "Lkotlin/Triple<",
            "Lcom/audible/license/repository/db/VoucherMetadata;",
            "Lcom/audible/license/model/EncryptedVoucher;",
            "Lcom/audible/license/model/DownloadMetadata;",
            ">;>;"
        }
    .end annotation

    const-string v0, "asin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "acr"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    .line 57
    invoke-static/range {v1 .. v8}, Lcom/audible/license/repository/acls/VoucherFetcherImpl;->getContentLicense$default(Lcom/audible/license/repository/acls/VoucherFetcherImpl;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/contentlicense/networking/request/Quality;Lcom/audible/mobile/domain/ACR;Lcom/audible/mobile/contentlicense/networking/request/DrmType;ZILjava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    sget-object p2, Lcom/audible/license/repository/acls/VoucherFetcherImpl$fetchVoucherByAcr$1;->INSTANCE:Lcom/audible/license/repository/acls/VoucherFetcherImpl$fetchVoucherByAcr$1;

    invoke-virtual {p1, p2}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    const-string p2, "getContentLicense(asin =\u2026a\n            )\n        }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
