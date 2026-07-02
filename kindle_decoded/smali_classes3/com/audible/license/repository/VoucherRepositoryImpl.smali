.class public final Lcom/audible/license/repository/VoucherRepositoryImpl;
.super Ljava/lang/Object;
.source "VoucherRepositoryImpl.kt"

# interfaces
.implements Lcom/audible/license/repository/VoucherRepository;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVoucherRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VoucherRepositoryImpl.kt\ncom/audible/license/repository/VoucherRepositoryImpl\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,433:1\n151#2,2:434\n1648#3,2:436\n*E\n*S KotlinDebug\n*F\n+ 1 VoucherRepositoryImpl.kt\ncom/audible/license/repository/VoucherRepositoryImpl\n*L\n349#1,2:434\n407#1,2:436\n*E\n"
.end annotation


# instance fields
.field private final contentLicenseErrorBroadcaster:Lcom/audible/license/util/ContentLicenseErrorBroadcaster;

.field private final eventBroadcaster:Lcom/audible/license/events/broadcast/LicensingEventBroadcaster;

.field private final logger$delegate:Lkotlin/Lazy;

.field private mapAsinToAcr:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/audible/mobile/domain/Asin;",
            "+",
            "Lcom/audible/mobile/domain/ACR;",
            ">;"
        }
    .end annotation
.end field

.field private final voucherFetcher:Lcom/audible/license/repository/acls/VoucherFetcher;

.field private final voucherFileRepository:Lcom/audible/license/repository/file/VoucherFileRepository;

.field private final voucherMetadataRepository:Lcom/audible/license/repository/db/VoucherMetadataRepository;

.field private final voucherMetricRecorder:Lcom/audible/license/metrics/VoucherMetricRecorder;


# direct methods
.method public constructor <init>(Lcom/audible/license/repository/db/VoucherMetadataRepository;Lcom/audible/license/repository/file/VoucherFileRepository;Lcom/audible/license/repository/acls/VoucherFetcher;Lkotlin/jvm/functions/Function1;Lcom/audible/license/metrics/VoucherMetricRecorder;Lcom/audible/license/events/broadcast/LicensingEventBroadcaster;Lcom/audible/license/util/ContentLicenseErrorBroadcaster;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/license/repository/db/VoucherMetadataRepository;",
            "Lcom/audible/license/repository/file/VoucherFileRepository;",
            "Lcom/audible/license/repository/acls/VoucherFetcher;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/audible/mobile/domain/Asin;",
            "+",
            "Lcom/audible/mobile/domain/ACR;",
            ">;",
            "Lcom/audible/license/metrics/VoucherMetricRecorder;",
            "Lcom/audible/license/events/broadcast/LicensingEventBroadcaster;",
            "Lcom/audible/license/util/ContentLicenseErrorBroadcaster;",
            ")V"
        }
    .end annotation

    const-string v0, "voucherMetadataRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voucherFileRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voucherFetcher"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mapAsinToAcr"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voucherMetricRecorder"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventBroadcaster"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentLicenseErrorBroadcaster"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/audible/license/repository/VoucherRepositoryImpl;->voucherMetadataRepository:Lcom/audible/license/repository/db/VoucherMetadataRepository;

    iput-object p2, p0, Lcom/audible/license/repository/VoucherRepositoryImpl;->voucherFileRepository:Lcom/audible/license/repository/file/VoucherFileRepository;

    iput-object p3, p0, Lcom/audible/license/repository/VoucherRepositoryImpl;->voucherFetcher:Lcom/audible/license/repository/acls/VoucherFetcher;

    iput-object p4, p0, Lcom/audible/license/repository/VoucherRepositoryImpl;->mapAsinToAcr:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lcom/audible/license/repository/VoucherRepositoryImpl;->voucherMetricRecorder:Lcom/audible/license/metrics/VoucherMetricRecorder;

    iput-object p6, p0, Lcom/audible/license/repository/VoucherRepositoryImpl;->eventBroadcaster:Lcom/audible/license/events/broadcast/LicensingEventBroadcaster;

    iput-object p7, p0, Lcom/audible/license/repository/VoucherRepositoryImpl;->contentLicenseErrorBroadcaster:Lcom/audible/license/util/ContentLicenseErrorBroadcaster;

    .line 55
    invoke-static {p0}, Lcom/audible/mobile/logging/PIIAwareLoggerKt;->piiAwareLogger(Ljava/lang/Object;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/license/repository/VoucherRepositoryImpl;->logger$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getLogger()Lorg/slf4j/Logger;
    .locals 1

    iget-object v0, p0, Lcom/audible/license/repository/VoucherRepositoryImpl;->logger$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/slf4j/Logger;

    return-object v0
.end method

.method private final declared-synchronized handleVoucherPersistError(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;Ljava/lang/Throwable;)V
    .locals 12

    monitor-enter p0

    .line 162
    :try_start_0
    invoke-direct {p0}, Lcom/audible/license/repository/VoucherRepositoryImpl;->getLogger()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "New voucher is failed to fetch for Asin = {} with ACR = {}"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 p2, 0x2

    aput-object p3, v2, p2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    iget-object p2, p0, Lcom/audible/license/repository/VoucherRepositoryImpl;->voucherMetadataRepository:Lcom/audible/license/repository/db/VoucherMetadataRepository;

    invoke-interface {p2, p1}, Lcom/audible/license/repository/db/VoucherMetadataRepository;->getVoucherMetadata(Lcom/audible/mobile/domain/Asin;)Lcom/audible/license/repository/db/VoucherMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 170
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1ef

    const/4 v11, 0x0

    invoke-static/range {v0 .. v11}, Lcom/audible/license/repository/db/VoucherMetadata;->copy$default(Lcom/audible/license/repository/db/VoucherMetadata;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;Lcom/audible/mobile/domain/CustomerId;Lcom/audible/mobile/contentlicense/networking/request/DrmType;Ljava/util/Date;Ljava/util/Date;ZZLjava/lang/String;ILjava/lang/Object;)Lcom/audible/license/repository/db/VoucherMetadata;

    move-result-object p1

    .line 171
    iget-object p2, p0, Lcom/audible/license/repository/VoucherRepositoryImpl;->voucherMetadataRepository:Lcom/audible/license/repository/db/VoucherMetadataRepository;

    invoke-interface {p2, p1}, Lcom/audible/license/repository/db/VoucherMetadataRepository;->insert(Lcom/audible/license/repository/db/VoucherMetadata;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized invalidateDeniedVoucher(Lcom/audible/license/repository/db/VoucherMetadata;)V
    .locals 13

    monitor-enter p0

    .line 292
    :try_start_0
    iget-object v0, p0, Lcom/audible/license/repository/VoucherRepositoryImpl;->voucherMetadataRepository:Lcom/audible/license/repository/db/VoucherMetadataRepository;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1af

    const/4 v12, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v12}, Lcom/audible/license/repository/db/VoucherMetadata;->copy$default(Lcom/audible/license/repository/db/VoucherMetadata;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;Lcom/audible/mobile/domain/CustomerId;Lcom/audible/mobile/contentlicense/networking/request/DrmType;Ljava/util/Date;Ljava/util/Date;ZZLjava/lang/String;ILjava/lang/Object;)Lcom/audible/license/repository/db/VoucherMetadata;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/license/repository/db/VoucherMetadataRepository;->insert(Lcom/audible/license/repository/db/VoucherMetadata;)V

    .line 293
    iget-object v0, p0, Lcom/audible/license/repository/VoucherRepositoryImpl;->voucherFileRepository:Lcom/audible/license/repository/file/VoucherFileRepository;

    invoke-virtual {p1}, Lcom/audible/license/repository/db/VoucherMetadata;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/audible/license/repository/file/VoucherFileRepository;->deleteVoucher(Lcom/audible/mobile/domain/Asin;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized persistVoucher(Lcom/audible/mobile/domain/Asin;Lcom/audible/license/model/EncryptedVoucher;Lcom/audible/license/repository/db/VoucherMetadata;)V
    .locals 1

    monitor-enter p0

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/audible/license/repository/VoucherRepositoryImpl;->voucherMetadataRepository:Lcom/audible/license/repository/db/VoucherMetadataRepository;

    invoke-interface {v0, p3}, Lcom/audible/license/repository/db/VoucherMetadataRepository;->insert(Lcom/audible/license/repository/db/VoucherMetadata;)V

    .line 151
    iget-object v0, p0, Lcom/audible/license/repository/VoucherRepositoryImpl;->voucherFileRepository:Lcom/audible/license/repository/file/VoucherFileRepository;

    invoke-interface {v0, p1, p2}, Lcom/audible/license/repository/file/VoucherFileRepository;->saveVoucher(Lcom/audible/mobile/domain/Asin;Lcom/audible/license/model/EncryptedVoucher;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 153
    :try_start_1
    invoke-virtual {p3}, Lcom/audible/license/repository/db/VoucherMetadata;->getAcr()Lcom/audible/mobile/domain/ACR;

    move-result-object p3

    invoke-direct {p0, p1, p3, p2}, Lcom/audible/license/repository/VoucherRepositoryImpl;->handleVoucherPersistError(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 155
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized removeVoucherAndContent(Lcom/audible/mobile/domain/Asin;)V
    .locals 2

    monitor-enter p0

    .line 301
    :try_start_0
    iget-object v0, p0, Lcom/audible/license/repository/VoucherRepositoryImpl;->voucherMetadataRepository:Lcom/audible/license/repository/db/VoucherMetadataRepository;

    invoke-interface {v0, p1}, Lcom/audible/license/repository/db/VoucherMetadataRepository;->delete(Lcom/audible/mobile/domain/Asin;)V

    .line 304
    iget-object v0, p0, Lcom/audible/license/repository/VoucherRepositoryImpl;->eventBroadcaster:Lcom/audible/license/events/broadcast/LicensingEventBroadcaster;

    invoke-interface {v0, p1}, Lcom/audible/license/events/LicensingEventListener;->onContentRemovalRequest(Lcom/audible/mobile/domain/Asin;)V

    .line 305
    invoke-direct {p0}, Lcom/audible/license/repository/VoucherRepositoryImpl;->getLogger()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Voucher is removed for Asin = {}"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized findVoucherById(Lcom/audible/mobile/domain/Asin;)Lcom/audible/license/model/Voucher;
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "asin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/audible/license/repository/VoucherRepositoryImpl;->voucherMetadataRepository:Lcom/audible/license/repository/db/VoucherMetadataRepository;

    invoke-interface {v0, p1}, Lcom/audible/license/repository/db/VoucherMetadataRepository;->getVoucherMetadata(Lcom/audible/mobile/domain/Asin;)Lcom/audible/license/repository/db/VoucherMetadata;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/audible/license/repository/VoucherRepositoryImpl;->voucherMetricRecorder:Lcom/audible/license/metrics/VoucherMetricRecorder;

    .line 315
    sget-object v2, Lcom/audible/license/metrics/VoucherMetricSource;->VoucherRepository:Lcom/audible/license/metrics/VoucherMetricSource;

    .line 316
    sget-object v3, Lcom/audible/license/metrics/MetricNames;->VoucherMetadataNotFound:Lcom/audible/license/metrics/MetricNames;

    .line 314
    invoke-virtual {v0, v2, v3, p1}, Lcom/audible/license/metrics/VoucherMetricRecorder;->recordCounterMetric(Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;Lcom/audible/mobile/domain/Asin;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    monitor-exit p0

    return-object v1

    .line 321
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/audible/license/repository/VoucherRepositoryImpl;->voucherFileRepository:Lcom/audible/license/repository/file/VoucherFileRepository;

    invoke-virtual {v0}, Lcom/audible/license/repository/db/VoucherMetadata;->getOwner()Lcom/audible/mobile/domain/CustomerId;

    move-result-object v0

    invoke-interface {v2, p1, v0}, Lcom/audible/license/repository/file/VoucherFileRepository;->findVoucherById(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/CustomerId;)Lcom/audible/license/model/Voucher;

    move-result-object v0

    if-nez v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/audible/license/repository/VoucherRepositoryImpl;->voucherMetricRecorder:Lcom/audible/license/metrics/VoucherMetricRecorder;

    .line 324
    sget-object v2, Lcom/audible/license/metrics/VoucherMetricSource;->VoucherRepository:Lcom/audible/license/metrics/VoucherMetricSource;

    .line 325
    sget-object v3, Lcom/audible/license/metrics/MetricNames;->VoucherNotFound:Lcom/audible/license/metrics/MetricNames;

    .line 323
    invoke-virtual {v0, v2, v3, p1}, Lcom/audible/license/metrics/VoucherMetricRecorder;->recordCounterMetric(Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;Lcom/audible/mobile/domain/Asin;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 328
    monitor-exit p0

    return-object v1

    .line 330
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized refresh(Lcom/audible/mobile/domain/Asin;Z)Z
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    monitor-enter p0

    :try_start_0
    const-string v0, "asin"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    iget-object v0, v1, Lcom/audible/license/repository/VoucherRepositoryImpl;->voucherMetadataRepository:Lcom/audible/license/repository/db/VoucherMetadataRepository;

    invoke-interface {v0, v2}, Lcom/audible/license/repository/db/VoucherMetadataRepository;->getVoucherMetadata(Lcom/audible/mobile/domain/Asin;)Lcom/audible/license/repository/db/VoucherMetadata;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 182
    invoke-virtual {v4}, Lcom/audible/license/repository/db/VoucherMetadata;->getAcr()Lcom/audible/mobile/domain/ACR;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/audible/license/repository/VoucherRepositoryImpl;->getLogger()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v5, "Cannot find metadata when refreshing voucher for ASIN = {}!It may be recovered by re-fetching voucher."

    invoke-interface {v0, v5, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 187
    iget-object v0, v1, Lcom/audible/license/repository/VoucherRepositoryImpl;->voucherMetricRecorder:Lcom/audible/license/metrics/VoucherMetricRecorder;

    .line 188
    sget-object v5, Lcom/audible/license/metrics/VoucherMetricSource;->VoucherRepository:Lcom/audible/license/metrics/VoucherMetricSource;

    .line 189
    sget-object v6, Lcom/audible/license/metrics/MetricNames;->VoucherRefreshMetadataNotFound:Lcom/audible/license/metrics/MetricNames;

    .line 187
    invoke-virtual {v0, v5, v6, v2}, Lcom/audible/license/metrics/VoucherMetricRecorder;->recordCounterMetric(Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;Lcom/audible/mobile/domain/Asin;)V

    .line 193
    iget-object v0, v1, Lcom/audible/license/repository/VoucherRepositoryImpl;->mapAsinToAcr:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/domain/ACR;

    :goto_0
    const/16 v16, 0x0

    if-nez v0, :cond_1

    .line 197
    invoke-direct/range {p0 .. p0}, Lcom/audible/license/repository/VoucherRepositoryImpl;->getLogger()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v4, "Cannot find ACR when refreshing voucher for ASIN = {}! Removing all content!"

    invoke-interface {v0, v4, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 201
    iget-object v0, v1, Lcom/audible/license/repository/VoucherRepositoryImpl;->voucherMetricRecorder:Lcom/audible/license/metrics/VoucherMetricRecorder;

    .line 202
    sget-object v4, Lcom/audible/license/metrics/VoucherMetricSource;->VoucherRepository:Lcom/audible/license/metrics/VoucherMetricSource;

    .line 203
    sget-object v5, Lcom/audible/license/metrics/MetricNames;->VoucherRefreshAcrNotFound:Lcom/audible/license/metrics/MetricNames;

    .line 201
    invoke-virtual {v0, v4, v5, v2}, Lcom/audible/license/metrics/VoucherMetricRecorder;->recordCounterMetric(Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;Lcom/audible/mobile/domain/Asin;)V

    .line 206
    invoke-direct/range {p0 .. p1}, Lcom/audible/license/repository/VoucherRepositoryImpl;->removeVoucherAndContent(Lcom/audible/mobile/domain/Asin;)V

    .line 207
    iget-object v0, v1, Lcom/audible/license/repository/VoucherRepositoryImpl;->contentLicenseErrorBroadcaster:Lcom/audible/license/util/ContentLicenseErrorBroadcaster;

    .line 209
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "ACR unavailable for voucher refresh!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0, v2, v4, v3}, Lcom/audible/license/util/ContentLicenseErrorBroadcaster;->broadcastContentLicenceError(Lcom/audible/mobile/domain/Asin;Ljava/lang/Throwable;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 212
    monitor-exit p0

    return v16

    :cond_1
    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 215
    :try_start_1
    invoke-virtual {v4}, Lcom/audible/license/repository/db/VoucherMetadata;->getDrmType()Lcom/audible/mobile/contentlicense/networking/request/DrmType;

    move-result-object v6

    goto :goto_1

    :cond_2
    move-object v6, v5

    :goto_1
    if-nez v6, :cond_3

    .line 218
    invoke-direct/range {p0 .. p0}, Lcom/audible/license/repository/VoucherRepositoryImpl;->getLogger()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v4, "Cannot find drmType when refreshing voucher for ASIN = {}! Removing all content!"

    invoke-interface {v0, v4, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 222
    iget-object v0, v1, Lcom/audible/license/repository/VoucherRepositoryImpl;->voucherMetricRecorder:Lcom/audible/license/metrics/VoucherMetricRecorder;

    .line 223
    sget-object v4, Lcom/audible/license/metrics/VoucherMetricSource;->VoucherRepository:Lcom/audible/license/metrics/VoucherMetricSource;

    .line 224
    sget-object v5, Lcom/audible/license/metrics/MetricNames;->VoucherRefreshDrmTypeNotFound:Lcom/audible/license/metrics/MetricNames;

    .line 222
    invoke-virtual {v0, v4, v5, v2}, Lcom/audible/license/metrics/VoucherMetricRecorder;->recordCounterMetric(Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;Lcom/audible/mobile/domain/Asin;)V

    .line 227
    invoke-direct/range {p0 .. p1}, Lcom/audible/license/repository/VoucherRepositoryImpl;->removeVoucherAndContent(Lcom/audible/mobile/domain/Asin;)V

    .line 228
    iget-object v0, v1, Lcom/audible/license/repository/VoucherRepositoryImpl;->contentLicenseErrorBroadcaster:Lcom/audible/license/util/ContentLicenseErrorBroadcaster;

    .line 230
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "drmType unavailable for voucher refresh!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v0, v2, v4, v3}, Lcom/audible/license/util/ContentLicenseErrorBroadcaster;->broadcastContentLicenceError(Lcom/audible/mobile/domain/Asin;Ljava/lang/Throwable;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 233
    monitor-exit p0

    return v16

    .line 237
    :cond_3
    :try_start_2
    iget-object v7, v1, Lcom/audible/license/repository/VoucherRepositoryImpl;->voucherFetcher:Lcom/audible/license/repository/acls/VoucherFetcher;

    invoke-interface {v7, v2, v0, v6}, Lcom/audible/license/repository/acls/VoucherFetcher;->fetchVoucherByAcr(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;Lcom/audible/mobile/contentlicense/networking/request/DrmType;)Lio/reactivex/Single;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Lio/reactivex/Single;->blockingGet()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Triple;

    invoke-virtual {v0}, Lkotlin/Triple;->component1()Ljava/lang/Object;

    move-result-object v6

    .line 237
    check-cast v6, Lcom/audible/license/repository/db/VoucherMetadata;

    invoke-virtual {v0}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/license/model/EncryptedVoucher;

    .line 243
    invoke-virtual {v6}, Lcom/audible/license/repository/db/VoucherMetadata;->getRemovalDate()Ljava/util/Date;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 244
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7, v8}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v7

    if-gtz v7, :cond_4

    .line 246
    invoke-direct/range {p0 .. p1}, Lcom/audible/license/repository/VoucherRepositoryImpl;->removeVoucherAndContent(Lcom/audible/mobile/domain/Asin;)V

    if-eqz v3, :cond_9

    .line 248
    iget-object v0, v1, Lcom/audible/license/repository/VoucherRepositoryImpl;->eventBroadcaster:Lcom/audible/license/events/broadcast/LicensingEventBroadcaster;

    sget-object v6, Lcom/audible/license/events/LicensingError;->Other:Lcom/audible/license/events/LicensingError;

    invoke-interface {v0, v2, v6}, Lcom/audible/license/events/LicensingEventListener;->onLicensingError(Lcom/audible/mobile/domain/Asin;Lcom/audible/license/events/LicensingError;)V

    goto/16 :goto_4

    .line 252
    :cond_4
    invoke-direct {v1, v2, v0, v6}, Lcom/audible/license/repository/VoucherRepositoryImpl;->persistVoucher(Lcom/audible/mobile/domain/Asin;Lcom/audible/license/model/EncryptedVoucher;Lcom/audible/license/repository/db/VoucherMetadata;)V

    .line 253
    invoke-direct/range {p0 .. p0}, Lcom/audible/license/repository/VoucherRepositoryImpl;->getLogger()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v6, "Voucher refresh succeeded for Asin = {}"

    invoke-interface {v0, v6, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x1

    const/16 v16, 0x1

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 257
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/audible/license/repository/VoucherRepositoryImpl;->getLogger()Lorg/slf4j/Logger;

    move-result-object v6

    const-string v7, "Voucher refresh failed for Asin = {}"

    invoke-interface {v6, v7, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v4, :cond_5

    .line 258
    invoke-virtual {v4}, Lcom/audible/license/repository/db/VoucherMetadata;->getRemovalDate()Ljava/util/Date;

    move-result-object v5

    .line 260
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    instance-of v6, v6, Ljava/net/UnknownHostException;

    if-eqz v6, :cond_6

    if-eqz v5, :cond_8

    .line 261
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v4}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v4

    if-gtz v4, :cond_8

    .line 263
    invoke-direct/range {p0 .. p1}, Lcom/audible/license/repository/VoucherRepositoryImpl;->removeVoucherAndContent(Lcom/audible/mobile/domain/Asin;)V

    goto :goto_2

    :cond_6
    if-eqz v4, :cond_8

    .line 266
    instance-of v5, v0, Lcom/audible/mobile/contentlicense/networking/exception/ContentLicenseStatusCodeException;

    if-eqz v5, :cond_7

    move-object v5, v0

    check-cast v5, Lcom/audible/mobile/contentlicense/networking/exception/ContentLicenseStatusCodeException;

    invoke-virtual {v5}, Lcom/audible/mobile/contentlicense/networking/exception/ContentLicenseStatusCodeException;->getStatusCode()Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;

    move-result-object v5

    sget-object v6, Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;->DENIED:Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;

    if-ne v5, v6, :cond_7

    .line 267
    invoke-direct {v1, v4}, Lcom/audible/license/repository/VoucherRepositoryImpl;->invalidateDeniedVoucher(Lcom/audible/license/repository/db/VoucherMetadata;)V

    goto :goto_2

    .line 269
    :cond_7
    iget-object v15, v1, Lcom/audible/license/repository/VoucherRepositoryImpl;->voucherMetadataRepository:Lcom/audible/license/repository/db/VoucherMetadataRepository;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x1ef

    const/16 v17, 0x0

    move-object/from16 v18, v0

    move-object v0, v15

    move-object/from16 v15, v17

    invoke-static/range {v4 .. v15}, Lcom/audible/license/repository/db/VoucherMetadata;->copy$default(Lcom/audible/license/repository/db/VoucherMetadata;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;Lcom/audible/mobile/domain/CustomerId;Lcom/audible/mobile/contentlicense/networking/request/DrmType;Ljava/util/Date;Ljava/util/Date;ZZLjava/lang/String;ILjava/lang/Object;)Lcom/audible/license/repository/db/VoucherMetadata;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/audible/license/repository/db/VoucherMetadataRepository;->insert(Lcom/audible/license/repository/db/VoucherMetadata;)V

    goto :goto_3

    :cond_8
    :goto_2
    move-object/from16 v18, v0

    .line 274
    :goto_3
    iget-object v0, v1, Lcom/audible/license/repository/VoucherRepositoryImpl;->contentLicenseErrorBroadcaster:Lcom/audible/license/util/ContentLicenseErrorBroadcaster;

    move-object/from16 v4, v18

    invoke-virtual {v0, v2, v4, v3}, Lcom/audible/license/util/ContentLicenseErrorBroadcaster;->broadcastContentLicenceError(Lcom/audible/mobile/domain/Asin;Ljava/lang/Throwable;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 236
    :cond_9
    :goto_4
    monitor-exit p0

    return v16

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateVoucherValidation(Lcom/audible/mobile/domain/Asin;Z)V
    .locals 13

    monitor-enter p0

    :try_start_0
    const-string v0, "asin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 428
    iget-object v0, p0, Lcom/audible/license/repository/VoucherRepositoryImpl;->voucherMetadataRepository:Lcom/audible/license/repository/db/VoucherMetadataRepository;

    invoke-interface {v0, p1}, Lcom/audible/license/repository/db/VoucherMetadataRepository;->getVoucherMetadata(Lcom/audible/mobile/domain/Asin;)Lcom/audible/license/repository/db/VoucherMetadata;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 429
    iget-object p1, p0, Lcom/audible/license/repository/VoucherRepositoryImpl;->voucherMetadataRepository:Lcom/audible/license/repository/db/VoucherMetadataRepository;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1bf

    const/4 v12, 0x0

    move v8, p2

    invoke-static/range {v1 .. v12}, Lcom/audible/license/repository/db/VoucherMetadata;->copy$default(Lcom/audible/license/repository/db/VoucherMetadata;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;Lcom/audible/mobile/domain/CustomerId;Lcom/audible/mobile/contentlicense/networking/request/DrmType;Ljava/util/Date;Ljava/util/Date;ZZLjava/lang/String;ILjava/lang/Object;)Lcom/audible/license/repository/db/VoucherMetadata;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/audible/license/repository/db/VoucherMetadataRepository;->insert(Lcom/audible/license/repository/db/VoucherMetadata;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
