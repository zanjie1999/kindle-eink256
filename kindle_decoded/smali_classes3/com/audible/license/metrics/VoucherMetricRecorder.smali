.class public final Lcom/audible/license/metrics/VoucherMetricRecorder;
.super Ljava/lang/Object;
.source "VoucherMetricRecorder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/license/metrics/VoucherMetricRecorder$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVoucherMetricRecorder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VoucherMetricRecorder.kt\ncom/audible/license/metrics/VoucherMetricRecorder\n*L\n1#1,242:1\n*E\n"
.end annotation


# static fields
.field private static final voucherLoadErrorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lkotlin/reflect/KClass<",
            "+",
            "Ljava/lang/Throwable;",
            ">;",
            "Lcom/audible/mobile/metric/domain/Metric$Name;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final metricManager:Lcom/audible/mobile/metric/logger/MetricManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/audible/license/metrics/VoucherMetricRecorder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/audible/license/metrics/VoucherMetricRecorder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v0, 0x9

    new-array v0, v0, [Lkotlin/Pair;

    .line 229
    const-class v1, Ljavax/crypto/NoSuchPaddingException;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    sget-object v2, Lcom/audible/license/metrics/MetricNames;->VoucherNoSuchPaddingException:Lcom/audible/license/metrics/MetricNames;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 230
    const-class v1, Ljavax/crypto/ShortBufferException;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    sget-object v2, Lcom/audible/license/metrics/MetricNames;->VoucherShortBufferException:Lcom/audible/license/metrics/MetricNames;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 231
    const-class v1, Ljava/security/InvalidKeyException;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    sget-object v2, Lcom/audible/license/metrics/MetricNames;->VoucherInvalidKeyException:Lcom/audible/license/metrics/MetricNames;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 232
    const-class v1, Ljava/security/NoSuchAlgorithmException;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    sget-object v2, Lcom/audible/license/metrics/MetricNames;->VoucherNoSuchAlgorithmException:Lcom/audible/license/metrics/MetricNames;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 233
    const-class v1, Ljavax/crypto/IllegalBlockSizeException;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    sget-object v2, Lcom/audible/license/metrics/MetricNames;->VoucherIllegalBlockSizeException:Lcom/audible/license/metrics/MetricNames;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 234
    const-class v1, Ljavax/crypto/BadPaddingException;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    sget-object v2, Lcom/audible/license/metrics/MetricNames;->VoucherBadPaddingException:Lcom/audible/license/metrics/MetricNames;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 235
    const-class v1, Ljava/security/InvalidAlgorithmParameterException;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    sget-object v2, Lcom/audible/license/metrics/MetricNames;->VoucherInvalidAlgorithmParameterException:Lcom/audible/license/metrics/MetricNames;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 236
    const-class v1, Ljava/io/FileNotFoundException;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    sget-object v2, Lcom/audible/license/metrics/MetricNames;->VoucherFileNotFoundException:Lcom/audible/license/metrics/MetricNames;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 237
    const-class v1, Lorg/json/JSONException;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    sget-object v2, Lcom/audible/license/metrics/MetricNames;->VoucherJSONException:Lcom/audible/license/metrics/MetricNames;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 228
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/audible/license/metrics/VoucherMetricRecorder;->voucherLoadErrorMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/audible/mobile/metric/logger/MetricManager;)V
    .locals 1

    const-string v0, "metricManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/audible/license/metrics/VoucherMetricRecorder;->metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

    const-string v0, "metricManager cannot be null"

    .line 36
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getAndStartTimerMetric(Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;Lcom/audible/mobile/domain/Asin;)Lcom/audible/mobile/metric/domain/TimerMetric;
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metricName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asin"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    new-instance v0, Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl$Builder;

    sget-object v1, Lcom/audible/mobile/metric/logger/AAPCategory;->Voucher:Lcom/audible/mobile/metric/logger/AAPCategory;

    invoke-direct {v0, v1, p1, p2}, Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl$Builder;-><init>(Lcom/audible/mobile/metric/domain/Metric$Category;Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;)V

    .line 211
    sget-object p1, Lcom/audible/mobile/metric/domain/CommonDataTypes;->ASIN_DATA_TYPE:Lcom/audible/mobile/metric/domain/DataType;

    invoke-virtual {v0, p1, p3}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->addDataPoint(Lcom/audible/mobile/metric/domain/DataType;Ljava/lang/Object;)Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;

    check-cast v0, Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl$Builder;

    invoke-virtual {v0}, Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl$Builder;->build()Lcom/audible/mobile/metric/domain/TimerMetric;

    move-result-object p1

    .line 212
    invoke-interface {p1}, Lcom/audible/mobile/metric/domain/TimerMetric;->start()V

    const-string p2, "metric"

    .line 213
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final recordCounterMetric(Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;)V
    .locals 3

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metricName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/audible/license/metrics/VoucherMetricRecorder;->metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

    .line 64
    new-instance v1, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;

    .line 65
    sget-object v2, Lcom/audible/mobile/metric/logger/AAPCategory;->Voucher:Lcom/audible/mobile/metric/logger/AAPCategory;

    .line 64
    invoke-direct {v1, v2, p1, p2}, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;-><init>(Lcom/audible/mobile/metric/domain/Metric$Category;Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;)V

    .line 68
    invoke-virtual {v1}, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;->build()Lcom/audible/mobile/metric/domain/CounterMetric;

    move-result-object p1

    .line 63
    invoke-interface {v0, p1}, Lcom/audible/mobile/metric/logger/MetricLogger;->record(Lcom/audible/mobile/metric/domain/CounterMetric;)V

    return-void
.end method

.method public final recordCounterMetric(Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;Lcom/audible/mobile/domain/Asin;)V
    .locals 3

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metricName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asin"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/audible/license/metrics/VoucherMetricRecorder;->metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

    .line 48
    new-instance v1, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;

    .line 49
    sget-object v2, Lcom/audible/mobile/metric/logger/AAPCategory;->Voucher:Lcom/audible/mobile/metric/logger/AAPCategory;

    .line 48
    invoke-direct {v1, v2, p1, p2}, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;-><init>(Lcom/audible/mobile/metric/domain/Metric$Category;Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;)V

    .line 52
    sget-object p1, Lcom/audible/mobile/metric/domain/CommonDataTypes;->ASIN_DATA_TYPE:Lcom/audible/mobile/metric/domain/DataType;

    invoke-virtual {v1, p1, p3}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->addDataPoint(Lcom/audible/mobile/metric/domain/DataType;Ljava/lang/Object;)Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;

    check-cast v1, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;

    invoke-virtual {v1}, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;->build()Lcom/audible/mobile/metric/domain/CounterMetric;

    move-result-object p1

    .line 47
    invoke-interface {v0, p1}, Lcom/audible/mobile/metric/logger/MetricLogger;->record(Lcom/audible/mobile/metric/domain/CounterMetric;)V

    return-void
.end method

.method public final recordErrorMetric(Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;Lcom/audible/mobile/domain/Asin;Ljava/lang/String;)V
    .locals 3

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metricName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asin"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorReason"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/audible/license/metrics/VoucherMetricRecorder;->metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

    .line 123
    new-instance v1, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;

    .line 124
    sget-object v2, Lcom/audible/mobile/metric/logger/AAPCategory;->Voucher:Lcom/audible/mobile/metric/logger/AAPCategory;

    .line 123
    invoke-direct {v1, v2, p1, p2}, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;-><init>(Lcom/audible/mobile/metric/domain/Metric$Category;Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;)V

    .line 127
    sget-object p1, Lcom/audible/mobile/metric/domain/CommonDataTypes;->ASIN_DATA_TYPE:Lcom/audible/mobile/metric/domain/DataType;

    invoke-virtual {v1, p1, p3}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->addDataPoint(Lcom/audible/mobile/metric/domain/DataType;Ljava/lang/Object;)Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;

    check-cast v1, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;

    .line 128
    sget-object p1, Lcom/audible/mobile/metric/domain/CommonDataTypes;->ERROR_REASON_DATA_TYPE:Lcom/audible/mobile/metric/domain/DataType;

    invoke-virtual {v1, p1, p4}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->addDataPoint(Lcom/audible/mobile/metric/domain/DataType;Ljava/lang/Object;)Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;

    check-cast v1, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;

    invoke-virtual {v1}, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;->build()Lcom/audible/mobile/metric/domain/CounterMetric;

    move-result-object p1

    .line 122
    invoke-interface {v0, p1}, Lcom/audible/mobile/metric/logger/MetricLogger;->record(Lcom/audible/mobile/metric/domain/CounterMetric;)V

    return-void
.end method

.method public final recordErrorMetric(Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;Ljava/lang/String;)V
    .locals 3

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metricName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorSource"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/audible/license/metrics/VoucherMetricRecorder;->metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

    .line 105
    new-instance v1, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;

    .line 106
    sget-object v2, Lcom/audible/mobile/metric/logger/AAPCategory;->Voucher:Lcom/audible/mobile/metric/logger/AAPCategory;

    .line 105
    invoke-direct {v1, v2, p1, p2}, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;-><init>(Lcom/audible/mobile/metric/domain/Metric$Category;Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;)V

    .line 109
    sget-object p1, Lcom/audible/mobile/metric/domain/CommonDataTypes;->ERROR_SOURCE_DATA_TYPE:Lcom/audible/mobile/metric/domain/DataType;

    invoke-virtual {v1, p1, p3}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->addDataPoint(Lcom/audible/mobile/metric/domain/DataType;Ljava/lang/Object;)Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;

    check-cast v1, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;

    invoke-virtual {v1}, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;->build()Lcom/audible/mobile/metric/domain/CounterMetric;

    move-result-object p1

    .line 104
    invoke-interface {v0, p1}, Lcom/audible/mobile/metric/logger/MetricLogger;->record(Lcom/audible/mobile/metric/domain/CounterMetric;)V

    return-void
.end method

.method public final recordExceptionMetric(Ljava/lang/Throwable;Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;)V
    .locals 3

    const-string v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/audible/license/metrics/VoucherMetricRecorder;->metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

    .line 169
    new-instance v1, Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl$Builder;

    .line 170
    sget-object v2, Lcom/audible/mobile/metric/logger/AAPCategory;->Voucher:Lcom/audible/mobile/metric/logger/AAPCategory;

    .line 169
    invoke-direct {v1, v2, p2, p3, p1}, Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl$Builder;-><init>(Lcom/audible/mobile/metric/domain/Metric$Category;Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;Ljava/lang/Throwable;)V

    .line 174
    invoke-virtual {v1}, Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl$Builder;->build()Lcom/audible/mobile/metric/domain/ExceptionMetric;

    move-result-object p1

    .line 168
    invoke-interface {v0, p1}, Lcom/audible/mobile/metric/logger/MetricLogger;->record(Lcom/audible/mobile/metric/domain/ExceptionMetric;)V

    return-void
.end method

.method public final recordExceptionMetric(Ljava/lang/Throwable;Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;Lcom/audible/mobile/domain/Asin;)V
    .locals 3

    const-string v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asin"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/audible/license/metrics/VoucherMetricRecorder;->metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

    .line 147
    new-instance v1, Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl$Builder;

    .line 148
    sget-object v2, Lcom/audible/mobile/metric/logger/AAPCategory;->Voucher:Lcom/audible/mobile/metric/logger/AAPCategory;

    .line 147
    invoke-direct {v1, v2, p2, p3, p1}, Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl$Builder;-><init>(Lcom/audible/mobile/metric/domain/Metric$Category;Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;Ljava/lang/Throwable;)V

    .line 152
    sget-object p1, Lcom/audible/mobile/metric/domain/CommonDataTypes;->ASIN_DATA_TYPE:Lcom/audible/mobile/metric/domain/DataType;

    invoke-virtual {v1, p1, p4}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->addDataPoint(Lcom/audible/mobile/metric/domain/DataType;Ljava/lang/Object;)Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;

    check-cast v1, Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl$Builder;

    invoke-virtual {v1}, Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl$Builder;->build()Lcom/audible/mobile/metric/domain/ExceptionMetric;

    move-result-object p1

    .line 146
    invoke-interface {v0, p1}, Lcom/audible/mobile/metric/logger/MetricLogger;->record(Lcom/audible/mobile/metric/domain/ExceptionMetric;)V

    return-void
.end method

.method public final recordTimerMetric(Lcom/audible/mobile/metric/domain/TimerMetric;)V
    .locals 1

    const-string v0, "metric"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    invoke-interface {p1}, Lcom/audible/mobile/metric/domain/TimerMetric;->stop()V

    .line 224
    iget-object v0, p0, Lcom/audible/license/metrics/VoucherMetricRecorder;->metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

    invoke-interface {v0, p1}, Lcom/audible/mobile/metric/logger/MetricLogger;->record(Lcom/audible/mobile/metric/domain/DurationMetric;)V

    return-void
.end method

.method public final recordVoucherLoadException(Lcom/audible/license/exceptions/VoucherLoadException;Lcom/audible/mobile/metric/domain/Metric$Source;)V
    .locals 2

    const-string v0, "voucherLoadException"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 186
    sget-object v1, Lcom/audible/license/metrics/VoucherMetricRecorder;->voucherLoadErrorMap:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/metric/domain/Metric$Name;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 187
    :cond_0
    sget-object v0, Lcom/audible/license/metrics/MetricNames;->VoucherLoadException:Lcom/audible/license/metrics/MetricNames;

    .line 183
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/audible/license/metrics/VoucherMetricRecorder;->recordExceptionMetric(Ljava/lang/Throwable;Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;)V

    goto :goto_1

    .line 192
    :cond_1
    sget-object v0, Lcom/audible/license/metrics/MetricNames;->VoucherLoadException:Lcom/audible/license/metrics/MetricNames;

    .line 189
    invoke-virtual {p0, p1, p2, v0}, Lcom/audible/license/metrics/VoucherMetricRecorder;->recordExceptionMetric(Ljava/lang/Throwable;Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;)V

    :goto_1
    return-void
.end method
