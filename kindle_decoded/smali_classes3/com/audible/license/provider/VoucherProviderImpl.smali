.class public final Lcom/audible/license/provider/VoucherProviderImpl;
.super Ljava/lang/Object;
.source "VoucherProviderImpl.kt"

# interfaces
.implements Lcom/audible/license/provider/VoucherProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/license/provider/VoucherProviderImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVoucherProviderImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VoucherProviderImpl.kt\ncom/audible/license/provider/VoucherProviderImpl\n*L\n1#1,134:1\n*E\n"
.end annotation


# static fields
.field private static final ERROR_REASON_VOUCHER_NOT_FOUND:Ljava/lang/String; = "VoucherNotFound"


# instance fields
.field private final eventBroadcaster:Lcom/audible/license/events/broadcast/LicensingEventBroadcaster;

.field private final voucherMetricRecorder:Lcom/audible/license/metrics/VoucherMetricRecorder;

.field private final voucherRefresher:Lcom/audible/license/refresh/VoucherRefresher;

.field private final voucherRepository:Lcom/audible/license/repository/VoucherRepository;

.field private final voucherRulesValidator:Lcom/audible/license/rules/VoucherRulesValidator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/audible/license/provider/VoucherProviderImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/audible/license/provider/VoucherProviderImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/audible/license/repository/VoucherRepository;Lcom/audible/license/refresh/VoucherRefresher;Lcom/audible/license/rules/VoucherRulesValidator;Lcom/audible/license/events/broadcast/LicensingEventBroadcaster;Lcom/audible/license/metrics/VoucherMetricRecorder;)V
    .locals 1

    const-string v0, "voucherRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voucherRefresher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voucherRulesValidator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventBroadcaster"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voucherMetricRecorder"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/audible/license/provider/VoucherProviderImpl;->voucherRepository:Lcom/audible/license/repository/VoucherRepository;

    iput-object p2, p0, Lcom/audible/license/provider/VoucherProviderImpl;->voucherRefresher:Lcom/audible/license/refresh/VoucherRefresher;

    iput-object p3, p0, Lcom/audible/license/provider/VoucherProviderImpl;->voucherRulesValidator:Lcom/audible/license/rules/VoucherRulesValidator;

    iput-object p4, p0, Lcom/audible/license/provider/VoucherProviderImpl;->eventBroadcaster:Lcom/audible/license/events/broadcast/LicensingEventBroadcaster;

    iput-object p5, p0, Lcom/audible/license/provider/VoucherProviderImpl;->voucherMetricRecorder:Lcom/audible/license/metrics/VoucherMetricRecorder;

    return-void
.end method

.method private final doRefreshVoucher(Lcom/audible/mobile/domain/Asin;)Lcom/audible/license/model/Voucher;
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/audible/license/provider/VoucherProviderImpl;->voucherMetricRecorder:Lcom/audible/license/metrics/VoucherMetricRecorder;

    .line 97
    sget-object v1, Lcom/audible/license/metrics/VoucherMetricSource;->VoucherProvider:Lcom/audible/license/metrics/VoucherMetricSource;

    .line 98
    sget-object v2, Lcom/audible/license/metrics/MetricNames;->GetVoucherRefreshTriggered:Lcom/audible/license/metrics/MetricNames;

    .line 96
    invoke-virtual {v0, v1, v2}, Lcom/audible/license/metrics/VoucherMetricRecorder;->recordCounterMetric(Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;)V

    .line 101
    iget-object v0, p0, Lcom/audible/license/provider/VoucherProviderImpl;->voucherRefresher:Lcom/audible/license/refresh/VoucherRefresher;

    sget-object v1, Lcom/audible/license/refresh/Priority;->IMMEDIATE:Lcom/audible/license/refresh/Priority;

    const/4 v2, 0x1

    invoke-interface {v0, p1, v1, v2}, Lcom/audible/license/refresh/VoucherRefresher;->refreshVoucher(Lcom/audible/mobile/domain/Asin;Lcom/audible/license/refresh/Priority;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-direct {p0, p1}, Lcom/audible/license/provider/VoucherProviderImpl;->getVoucherWithoutRetry(Lcom/audible/mobile/domain/Asin;)Lcom/audible/license/model/Voucher;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private final getVoucherWithoutRetry(Lcom/audible/mobile/domain/Asin;)Lcom/audible/license/model/Voucher;
    .locals 5

    .line 116
    iget-object v0, p0, Lcom/audible/license/provider/VoucherProviderImpl;->voucherRepository:Lcom/audible/license/repository/VoucherRepository;

    invoke-interface {v0, p1}, Lcom/audible/license/repository/VoucherRepository;->findVoucherById(Lcom/audible/mobile/domain/Asin;)Lcom/audible/license/model/Voucher;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 119
    iget-object v2, p0, Lcom/audible/license/provider/VoucherProviderImpl;->voucherRulesValidator:Lcom/audible/license/rules/VoucherRulesValidator;

    invoke-virtual {v0}, Lcom/audible/license/model/Voucher;->getRules()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/audible/license/rules/VoucherRulesValidator;->validateRules(Ljava/util/List;)Lcom/audible/license/rules/ValidationResult;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 121
    :goto_0
    sget-object v3, Lcom/audible/license/rules/ValidationResult;->Success:Lcom/audible/license/rules/ValidationResult;

    if-ne v2, v3, :cond_1

    goto :goto_2

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/audible/license/provider/VoucherProviderImpl;->eventBroadcaster:Lcom/audible/license/events/broadcast/LicensingEventBroadcaster;

    sget-object v3, Lcom/audible/license/events/LicensingError;->Other:Lcom/audible/license/events/LicensingError;

    invoke-interface {v0, p1, v3}, Lcom/audible/license/events/LicensingEventListener;->onLicensingError(Lcom/audible/mobile/domain/Asin;Lcom/audible/license/events/LicensingError;)V

    .line 125
    iget-object v0, p0, Lcom/audible/license/provider/VoucherProviderImpl;->voucherMetricRecorder:Lcom/audible/license/metrics/VoucherMetricRecorder;

    .line 126
    sget-object v3, Lcom/audible/license/metrics/VoucherMetricSource;->VoucherProvider:Lcom/audible/license/metrics/VoucherMetricSource;

    .line 127
    sget-object v4, Lcom/audible/license/metrics/MetricNames;->GetVoucherRefreshFailed:Lcom/audible/license/metrics/MetricNames;

    if-eqz v2, :cond_2

    .line 129
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const-string v2, "VoucherNotFound"

    .line 125
    :goto_1
    invoke-virtual {v0, v3, v4, p1, v2}, Lcom/audible/license/metrics/VoucherMetricRecorder;->recordErrorMetric(Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;Lcom/audible/mobile/domain/Asin;Ljava/lang/String;)V

    move-object v0, v1

    :goto_2
    return-object v0
.end method

.method private final nullSafetyVoucher(Lcom/audible/license/model/Voucher;Lcom/audible/mobile/domain/Asin;)Lcom/audible/license/model/Voucher;
    .locals 2

    if-eqz p1, :cond_0

    return-object p1

    .line 88
    :cond_0
    new-instance p1, Lcom/audible/license/exceptions/VoucherLoadException;

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No valid voucher is found for this title - asin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 88
    invoke-direct {p1, p2}, Lcom/audible/license/exceptions/VoucherLoadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public get(Lcom/audible/mobile/domain/Asin;Z)Lcom/audible/license/model/Voucher;
    .locals 7

    const-string v0, "asin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/audible/license/provider/VoucherProviderImpl;->voucherMetricRecorder:Lcom/audible/license/metrics/VoucherMetricRecorder;

    .line 37
    sget-object v1, Lcom/audible/license/metrics/VoucherMetricSource;->VoucherProvider:Lcom/audible/license/metrics/VoucherMetricSource;

    .line 38
    sget-object v2, Lcom/audible/license/metrics/MetricNames;->TimeToProvideVoucher:Lcom/audible/license/metrics/MetricNames;

    .line 36
    invoke-virtual {v0, v1, v2, p1}, Lcom/audible/license/metrics/VoucherMetricRecorder;->getAndStartTimerMetric(Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;Lcom/audible/mobile/domain/Asin;)Lcom/audible/mobile/metric/domain/TimerMetric;

    move-result-object v0

    .line 42
    :try_start_0
    iget-object v1, p0, Lcom/audible/license/provider/VoucherProviderImpl;->voucherMetricRecorder:Lcom/audible/license/metrics/VoucherMetricRecorder;

    .line 43
    sget-object v2, Lcom/audible/license/metrics/VoucherMetricSource;->VoucherProvider:Lcom/audible/license/metrics/VoucherMetricSource;

    .line 44
    sget-object v3, Lcom/audible/license/metrics/MetricNames;->GetVoucherCalled:Lcom/audible/license/metrics/MetricNames;

    .line 42
    invoke-virtual {v1, v2, v3}, Lcom/audible/license/metrics/VoucherMetricRecorder;->recordCounterMetric(Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;)V

    .line 48
    iget-object v1, p0, Lcom/audible/license/provider/VoucherProviderImpl;->voucherRepository:Lcom/audible/license/repository/VoucherRepository;

    invoke-interface {v1, p1}, Lcom/audible/license/repository/VoucherRepository;->findVoucherById(Lcom/audible/mobile/domain/Asin;)Lcom/audible/license/model/Voucher;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 52
    iget-object v2, p0, Lcom/audible/license/provider/VoucherProviderImpl;->voucherRulesValidator:Lcom/audible/license/rules/VoucherRulesValidator;

    invoke-virtual {v1}, Lcom/audible/license/model/Voucher;->getRules()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/audible/license/rules/VoucherRulesValidator;->validateRules(Ljava/util/List;)Lcom/audible/license/rules/ValidationResult;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 56
    :goto_0
    sget-object v3, Lcom/audible/license/rules/ValidationResult;->Success:Lcom/audible/license/rules/ValidationResult;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 57
    :goto_1
    iget-object v6, p0, Lcom/audible/license/provider/VoucherProviderImpl;->voucherRepository:Lcom/audible/license/repository/VoucherRepository;

    invoke-interface {v6, p1, v3}, Lcom/audible/license/repository/VoucherRepository;->updateVoucherValidation(Lcom/audible/mobile/domain/Asin;Z)V

    .line 59
    sget-object v3, Lcom/audible/license/rules/ValidationResult;->Success:Lcom/audible/license/rules/ValidationResult;

    if-eq v2, v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_4

    if-nez p2, :cond_4

    .line 62
    iget-object p2, p0, Lcom/audible/license/provider/VoucherProviderImpl;->voucherMetricRecorder:Lcom/audible/license/metrics/VoucherMetricRecorder;

    .line 63
    sget-object v1, Lcom/audible/license/metrics/VoucherMetricSource;->VoucherProvider:Lcom/audible/license/metrics/VoucherMetricSource;

    .line 64
    sget-object v3, Lcom/audible/license/metrics/MetricNames;->GetVoucherFailed:Lcom/audible/license/metrics/MetricNames;

    if-eqz v2, :cond_3

    .line 66
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    const-string v4, "VoucherNotFound"

    .line 62
    :goto_3
    invoke-virtual {p2, v1, v3, p1, v4}, Lcom/audible/license/metrics/VoucherMetricRecorder;->recordErrorMetric(Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;Lcom/audible/mobile/domain/Asin;Ljava/lang/String;)V

    .line 68
    new-instance p2, Lcom/audible/license/exceptions/VoucherLoadException;

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Voucher validation failed - asin: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", reason: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-direct {p2, p1}, Lcom/audible/license/exceptions/VoucherLoadException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    if-eqz v4, :cond_5

    .line 75
    invoke-direct {p0, p1}, Lcom/audible/license/provider/VoucherProviderImpl;->doRefreshVoucher(Lcom/audible/mobile/domain/Asin;)Lcom/audible/license/model/Voucher;

    move-result-object v1

    .line 78
    :cond_5
    invoke-direct {p0, v1, p1}, Lcom/audible/license/provider/VoucherProviderImpl;->nullSafetyVoucher(Lcom/audible/license/model/Voucher;Lcom/audible/mobile/domain/Asin;)Lcom/audible/license/model/Voucher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    iget-object p1, p0, Lcom/audible/license/provider/VoucherProviderImpl;->voucherMetricRecorder:Lcom/audible/license/metrics/VoucherMetricRecorder;

    invoke-virtual {p1, v0}, Lcom/audible/license/metrics/VoucherMetricRecorder;->recordTimerMetric(Lcom/audible/mobile/metric/domain/TimerMetric;)V

    return-object v1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/audible/license/provider/VoucherProviderImpl;->voucherMetricRecorder:Lcom/audible/license/metrics/VoucherMetricRecorder;

    invoke-virtual {p2, v0}, Lcom/audible/license/metrics/VoucherMetricRecorder;->recordTimerMetric(Lcom/audible/mobile/metric/domain/TimerMetric;)V

    throw p1
.end method
