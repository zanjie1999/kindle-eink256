.class public final Lcom/audible/license/VoucherManagerFactory;
.super Ljava/lang/Object;
.source "VoucherManagerFactory.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/license/VoucherManagerFactory$NetworkUtilBackedConnectivityAwareness;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getVoucherManager(Landroid/content/Context;Lcom/audible/mobile/identity/IdentityManager;Lcom/audible/mobile/metric/logger/MetricManager;Lkotlin/jvm/functions/Function1;Lcom/audible/license/metrics/VoucherMetricRecorder;Lcom/audible/license/repository/file/VoucherFileRepository;Ljava/io/File;Landroidx/room/RoomDatabase$Callback;)Lcom/audible/license/VoucherManager;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/audible/mobile/identity/IdentityManager;",
            "Lcom/audible/mobile/metric/logger/MetricManager;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/audible/mobile/domain/Asin;",
            "+",
            "Lcom/audible/mobile/domain/ACR;",
            ">;",
            "Lcom/audible/license/metrics/VoucherMetricRecorder;",
            "Lcom/audible/license/repository/file/VoucherFileRepository;",
            "Ljava/io/File;",
            "Landroidx/room/RoomDatabase$Callback;",
            ")",
            "Lcom/audible/license/VoucherManager;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    .line 89
    new-instance v5, Lcom/audible/license/VoucherManagerFactory$NetworkUtilBackedConnectivityAwareness;

    move-object/from16 v11, p0

    invoke-direct {v5, v11, v0}, Lcom/audible/license/VoucherManagerFactory$NetworkUtilBackedConnectivityAwareness;-><init>(Lcom/audible/license/VoucherManagerFactory;Landroid/content/Context;)V

    .line 90
    new-instance v6, Lcom/audible/license/metrics/VoucherMetricRecorder;

    invoke-direct {v6, v2}, Lcom/audible/license/metrics/VoucherMetricRecorder;-><init>(Lcom/audible/mobile/metric/logger/MetricManager;)V

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    if-eqz p5, :cond_0

    .line 99
    sget-object v6, Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl;->Companion:Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl$Companion;

    .line 100
    invoke-virtual {v6, v0, v1, v3, v4}, Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl$Companion;->getInstance(Landroid/content/Context;Lcom/audible/mobile/identity/IdentityManager;Ljava/io/File;Landroidx/room/RoomDatabase$Callback;)Lcom/audible/license/repository/db/VoucherMetadataRepository;

    move-result-object v3

    move-object/from16 v10, p5

    move-object v9, v3

    goto :goto_0

    .line 103
    :cond_0
    sget-object v3, Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl;->Companion:Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl$Companion;

    invoke-virtual {v3, v0, v1}, Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl$Companion;->getInstance(Landroid/content/Context;Lcom/audible/mobile/identity/IdentityManager;)Lcom/audible/license/repository/db/VoucherMetadataRepository;

    move-result-object v3

    move-object v9, v3

    move-object v10, v6

    .line 106
    :goto_0
    new-instance v3, Lcom/audible/license/repository/file/VoucherCipher;

    invoke-direct {v3, v1, v10}, Lcom/audible/license/repository/file/VoucherCipher;-><init>(Lcom/audible/mobile/identity/IdentityManager;Lcom/audible/license/metrics/VoucherMetricRecorder;)V

    .line 107
    new-instance v4, Lcom/audible/license/repository/file/VoucherParser;

    invoke-direct {v4, v10}, Lcom/audible/license/repository/file/VoucherParser;-><init>(Lcom/audible/license/metrics/VoucherMetricRecorder;)V

    .line 109
    new-instance v8, Lcom/audible/license/rules/VoucherRulesValidator;

    invoke-direct {v8, v1, v10}, Lcom/audible/license/rules/VoucherRulesValidator;-><init>(Lcom/audible/mobile/identity/IdentityManager;Lcom/audible/license/metrics/VoucherMetricRecorder;)V

    if-eqz p6, :cond_1

    move-object/from16 v14, p6

    goto :goto_1

    .line 115
    :cond_1
    new-instance v6, Lcom/audible/license/repository/file/VoucherFileRepositoryImpl;

    invoke-direct {v6, v0, v3, v4, v10}, Lcom/audible/license/repository/file/VoucherFileRepositoryImpl;-><init>(Landroid/content/Context;Lcom/audible/license/repository/file/VoucherCipher;Lcom/audible/license/repository/file/VoucherParser;Lcom/audible/license/metrics/VoucherMetricRecorder;)V

    move-object v14, v6

    .line 123
    :goto_1
    new-instance v0, Lcom/audible/license/util/ContentLicenseResponseParser;

    invoke-direct {v0, v3, v4, v8}, Lcom/audible/license/util/ContentLicenseResponseParser;-><init>(Lcom/audible/license/repository/file/VoucherCipher;Lcom/audible/license/repository/file/VoucherParser;Lcom/audible/license/rules/VoucherRulesValidator;)V

    .line 130
    new-instance v15, Lcom/audible/license/repository/acls/VoucherFetcherImpl;

    invoke-direct {v15, v1, v2, v0}, Lcom/audible/license/repository/acls/VoucherFetcherImpl;-><init>(Lcom/audible/mobile/identity/IdentityManager;Lcom/audible/mobile/metric/logger/MetricManager;Lcom/audible/license/util/ContentLicenseResponseParser;)V

    .line 132
    new-instance v7, Lcom/audible/license/events/broadcast/LicensingEventBroadcasterImpl;

    const/4 v0, 0x1

    const/4 v6, 0x0

    invoke-direct {v7, v6, v0, v6}, Lcom/audible/license/events/broadcast/LicensingEventBroadcasterImpl;-><init>(Ljava/util/concurrent/Executor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 134
    new-instance v4, Lcom/audible/license/repository/VoucherRepositoryImpl;

    .line 141
    new-instance v0, Lcom/audible/license/util/ContentLicenseErrorBroadcaster;

    .line 144
    sget-object v2, Lcom/audible/license/metrics/VoucherMetricSource;->VoucherRepository:Lcom/audible/license/metrics/VoucherMetricSource;

    .line 141
    invoke-direct {v0, v7, v10, v2}, Lcom/audible/license/util/ContentLicenseErrorBroadcaster;-><init>(Lcom/audible/license/events/broadcast/LicensingEventBroadcaster;Lcom/audible/license/metrics/VoucherMetricRecorder;Lcom/audible/mobile/metric/domain/Metric$Source;)V

    move-object v12, v4

    move-object v13, v9

    move-object/from16 v16, p4

    move-object/from16 v17, v10

    move-object/from16 v18, v7

    move-object/from16 v19, v0

    .line 134
    invoke-direct/range {v12 .. v19}, Lcom/audible/license/repository/VoucherRepositoryImpl;-><init>(Lcom/audible/license/repository/db/VoucherMetadataRepository;Lcom/audible/license/repository/file/VoucherFileRepository;Lcom/audible/license/repository/acls/VoucherFetcher;Lkotlin/jvm/functions/Function1;Lcom/audible/license/metrics/VoucherMetricRecorder;Lcom/audible/license/events/broadcast/LicensingEventBroadcaster;Lcom/audible/license/util/ContentLicenseErrorBroadcaster;)V

    .line 148
    new-instance v18, Lcom/audible/license/refresh/VoucherRefresherImpl;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xe0

    const/16 v16, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move-object v2, v4

    move-object v3, v9

    move-object/from16 p7, v4

    move-object v4, v5

    move-object v5, v10

    move-object v6, v12

    move-object v12, v7

    move-object v7, v13

    move-object v13, v8

    move-object v8, v14

    move-object v14, v9

    move v9, v15

    move-object v15, v10

    move-object/from16 v10, v16

    invoke-direct/range {v0 .. v10}, Lcom/audible/license/refresh/VoucherRefresherImpl;-><init>(Lcom/audible/mobile/identity/IdentityManager;Lcom/audible/license/repository/VoucherRepository;Lcom/audible/license/repository/db/VoucherMetadataRepository;Lcom/audible/mobile/util/ConnectivityAwareness;Lcom/audible/license/metrics/VoucherMetricRecorder;Ljava/util/concurrent/PriorityBlockingQueue;Lcom/audible/license/refresh/ComparableThreadPoolExecutor;Ljava/util/concurrent/ExecutorService;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 157
    new-instance v17, Lcom/audible/license/provider/VoucherProviderImpl;

    move-object/from16 p1, v17

    move-object/from16 p2, p7

    move-object/from16 p3, v18

    move-object/from16 p4, v13

    move-object/from16 p5, v12

    move-object/from16 p6, v15

    invoke-direct/range {p1 .. p6}, Lcom/audible/license/provider/VoucherProviderImpl;-><init>(Lcom/audible/license/repository/VoucherRepository;Lcom/audible/license/refresh/VoucherRefresher;Lcom/audible/license/rules/VoucherRulesValidator;Lcom/audible/license/events/broadcast/LicensingEventBroadcaster;Lcom/audible/license/metrics/VoucherMetricRecorder;)V

    .line 165
    new-instance v0, Lcom/audible/license/provider/DownloadMetadataProviderImpl;

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Lcom/audible/license/provider/DownloadMetadataProviderImpl;-><init>(Lcom/audible/license/repository/VoucherRepository;)V

    .line 167
    new-instance v2, Lcom/audible/license/provider/DrmMetadataProviderImpl;

    invoke-direct {v2, v14}, Lcom/audible/license/provider/DrmMetadataProviderImpl;-><init>(Lcom/audible/license/repository/db/VoucherMetadataRepository;)V

    .line 169
    new-instance v3, Lcom/audible/license/provider/ChapterInfoProviderImpl;

    invoke-direct {v3, v1}, Lcom/audible/license/provider/ChapterInfoProviderImpl;-><init>(Lcom/audible/license/repository/VoucherRepository;)V

    .line 171
    new-instance v4, Lcom/audible/license/backfill/VoucherBackfillDelegateImpl;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-direct {v4, v1, v6, v5, v6}, Lcom/audible/license/backfill/VoucherBackfillDelegateImpl;-><init>(Lcom/audible/license/repository/VoucherRepository;Ljava/util/concurrent/Executor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 174
    new-instance v5, Lcom/audible/license/repository/VoucherRepositoryDelegateImpl;

    invoke-direct {v5, v1, v14}, Lcom/audible/license/repository/VoucherRepositoryDelegateImpl;-><init>(Lcom/audible/license/repository/VoucherRepository;Lcom/audible/license/repository/db/VoucherMetadataRepository;)V

    .line 176
    new-instance v1, Lcom/audible/license/VoucherManagerImpl;

    move-object/from16 v16, v1

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-object/from16 v24, v12

    invoke-direct/range {v16 .. v24}, Lcom/audible/license/VoucherManagerImpl;-><init>(Lcom/audible/license/provider/VoucherProvider;Lcom/audible/license/refresh/VoucherRefresher;Lcom/audible/license/provider/DownloadMetadataProvider;Lcom/audible/license/provider/DrmMetadataProvider;Lcom/audible/license/provider/ChapterInfoProvider;Lcom/audible/license/backfill/VoucherBackfillDelegate;Lcom/audible/license/repository/VoucherRepositoryDelegate;Lcom/audible/license/events/broadcast/LicensingEventBroadcaster;)V

    return-object v1
.end method


# virtual methods
.method public final getDefaultVoucherManager(Landroid/content/Context;Lcom/audible/mobile/identity/IdentityManager;Lcom/audible/mobile/metric/logger/MetricManager;Lkotlin/jvm/functions/Function1;)Lcom/audible/license/VoucherManager;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/audible/mobile/identity/IdentityManager;",
            "Lcom/audible/mobile/metric/logger/MetricManager;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/audible/mobile/domain/Asin;",
            "+",
            "Lcom/audible/mobile/domain/ACR;",
            ">;)",
            "Lcom/audible/license/VoucherManager;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "identityManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metricManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mapAsinToAcr"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 42
    invoke-direct/range {v1 .. v9}, Lcom/audible/license/VoucherManagerFactory;->getVoucherManager(Landroid/content/Context;Lcom/audible/mobile/identity/IdentityManager;Lcom/audible/mobile/metric/logger/MetricManager;Lkotlin/jvm/functions/Function1;Lcom/audible/license/metrics/VoucherMetricRecorder;Lcom/audible/license/repository/file/VoucherFileRepository;Ljava/io/File;Landroidx/room/RoomDatabase$Callback;)Lcom/audible/license/VoucherManager;

    move-result-object p1

    return-object p1
.end method
