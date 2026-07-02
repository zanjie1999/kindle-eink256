.class public final Lcom/amazon/kindle/ffs/metrics/MetricsManager;
.super Ljava/lang/Object;
.source "MetricsManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/ffs/metrics/MetricsManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMetricsManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MetricsManager.kt\ncom/amazon/kindle/ffs/metrics/MetricsManager\n*L\n1#1,149:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kindle/ffs/metrics/MetricsManager$Companion;

.field public static final FFS_DESCRIPTION:Ljava/lang/String; = "ffs_event_description"

.field public static final FFS_EVENT:Ljava/lang/String; = "ffs_event"

.field public static final SETTINGS_SCHEMA_NAME:Ljava/lang/String; = "kindle_ios_ffs_bt_settings"

.field public static final UGS_DESCRIPTION:Ljava/lang/String; = "ugs_event_description"

.field public static final UGS_DURATION:Ljava/lang/String; = "ugs_duration"

.field public static final UGS_ERROR_CODE:Ljava/lang/String; = "ugs_error_code"

.field public static final UGS_ERROR_DOMAIN:Ljava/lang/String; = "ugs_error_domain"

.field public static final UGS_EVENT:Ljava/lang/String; = "ugs_event"

.field public static final UGS_SCHEMA_NAME:Ljava/lang/String; = "kindle_ios_ffs_ugs"

.field public static final ZTS_DESCRIPTION:Ljava/lang/String; = "zts_event_description"

.field public static final ZTS_ERROR_CODE:Ljava/lang/String; = "zts_error_code"

.field public static final ZTS_ERROR_DOMAIN:Ljava/lang/String; = "zts_error_domain"

.field public static final ZTS_EVENT:Ljava/lang/String; = "zts_event"

.field public static final ZTS_SCHEMA_NAME:Ljava/lang/String; = "kindle_ios_ffs_zts"


# instance fields
.field private final fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

.field private final logger$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/ffs/metrics/MetricsManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/ffs/metrics/MetricsManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/ffs/metrics/MetricsManager;->Companion:Lcom/amazon/kindle/ffs/metrics/MetricsManager$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-class v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    iput-object v0, p0, Lcom/amazon/kindle/ffs/metrics/MetricsManager;->fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    .line 49
    sget-object v0, Lcom/amazon/kindle/ffs/metrics/MetricsManager$logger$2;->INSTANCE:Lcom/amazon/kindle/ffs/metrics/MetricsManager$logger$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/ffs/metrics/MetricsManager;->logger$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getLogger()Lcom/amazon/kindle/krx/logging/ILogger;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/ffs/metrics/MetricsManager;->logger$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/logging/ILogger;

    return-object v0
.end method

.method public static synthetic reportSettingsMetric$default(Lcom/amazon/kindle/ffs/metrics/MetricsManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 131
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/ffs/metrics/MetricsManager;->reportSettingsMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic reportUGSFastMetrics$default(Lcom/amazon/kindle/ffs/metrics/MetricsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    move-object v4, v0

    goto :goto_1

    :cond_1
    move-object v4, p3

    :goto_1
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    move-object v5, v0

    goto :goto_2

    :cond_2
    move-object v5, p4

    :goto_2
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    move-object v6, v0

    goto :goto_3

    :cond_3
    move-object v6, p5

    :goto_3
    move-object v1, p0

    move-object v2, p1

    .line 93
    invoke-virtual/range {v1 .. v6}, Lcom/amazon/kindle/ffs/metrics/MetricsManager;->reportUGSFastMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic reportZTSFastMetrics$default(Lcom/amazon/kindle/ffs/metrics/MetricsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move-object p4, v0

    .line 59
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazon/kindle/ffs/metrics/MetricsManager;->reportZTSFastMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public final reportSettingsMetric(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/amazon/kindle/ffs/metrics/MetricsManager;->fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "kindle_ios_ffs_bt_settings"

    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->getPayloadBuilder(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    if-eqz p2, :cond_1

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, ""

    .line 137
    :goto_1
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/metrics/MetricsManager;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/amazon/kindle/ffs/metrics/MetricsManagerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending settings metric "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v1, "ffs_event"

    .line 139
    invoke-interface {v0, v1, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    if-eqz p2, :cond_3

    const-string p1, "ffs_event_description"

    .line 141
    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 143
    :cond_3
    iget-object p1, p0, Lcom/amazon/kindle/ffs/metrics/MetricsManager;->fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    if-eqz p1, :cond_5

    invoke-interface {v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->build()Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->record(Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;)V

    goto :goto_2

    .line 145
    :cond_4
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/metrics/MetricsManager;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/amazon/kindle/ffs/metrics/MetricsManagerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FastMetrics not available."

    invoke-interface {p1, p2, v0}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public final reportUGSFastMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 10

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/amazon/kindle/ffs/metrics/MetricsManager;->fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "kindle_ios_ffs_ugs"

    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->getPayloadBuilder(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_a

    const-string v2, ""

    if-eqz p2, :cond_1

    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x28

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    if-eqz p5, :cond_2

    .line 100
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " with duration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v5, 0x73

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, v2

    :goto_2
    if-eqz p3, :cond_3

    .line 101
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " with error domain: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_3
    move-object v5, v2

    :goto_3
    if-eqz p4, :cond_4

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " and error type: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 103
    :cond_4
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/metrics/MetricsManager;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-static {}, Lcom/amazon/kindle/ffs/metrics/MetricsManagerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sending UGS metric "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v7, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v2, "ugs_event"

    .line 105
    invoke-interface {v0, v2, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    if-eqz p2, :cond_6

    const-string p1, "ugs_event_description"

    .line 107
    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    :cond_6
    if-eqz p3, :cond_7

    .line 110
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ugs_error_domain"

    invoke-interface {v0, p2, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    :cond_7
    if-eqz p4, :cond_8

    .line 113
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "ugs_error_code"

    invoke-interface {v0, p2, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    :cond_8
    const-string p1, "ugs_duration"

    if-eqz p5, :cond_9

    .line 116
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    goto :goto_4

    .line 118
    :cond_9
    invoke-interface {v0, p1, v1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 120
    :goto_4
    iget-object p1, p0, Lcom/amazon/kindle/ffs/metrics/MetricsManager;->fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    if-eqz p1, :cond_b

    invoke-interface {v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->build()Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->record(Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;)V

    goto :goto_5

    .line 122
    :cond_a
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/metrics/MetricsManager;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-static {}, Lcom/amazon/kindle/ffs/metrics/MetricsManagerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p2

    const-string p3, "FastMetrics not available."

    invoke-interface {p1, p2, p3}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_5
    return-void
.end method

.method public final reportZTSFastMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 8

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/amazon/kindle/ffs/metrics/MetricsManager;->fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "kindle_ios_ffs_zts"

    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->getPayloadBuilder(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_8

    const-string v1, ""

    if-eqz p2, :cond_1

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    if-eqz p3, :cond_2

    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " with error domain: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v1

    :goto_2
    if-eqz p4, :cond_3

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " and error code: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 67
    :cond_3
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/metrics/MetricsManager;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/amazon/kindle/ffs/metrics/MetricsManagerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sending ZTS metric "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v5, v1}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v1, "zts_event"

    .line 69
    invoke-interface {v0, v1, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    if-eqz p2, :cond_5

    const-string p1, "zts_event_description"

    .line 71
    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    :cond_5
    if-eqz p3, :cond_6

    .line 74
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "zts_error_domain"

    invoke-interface {v0, p2, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    :cond_6
    if-eqz p4, :cond_7

    .line 77
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "zts_error_code"

    invoke-interface {v0, p2, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 79
    :cond_7
    iget-object p1, p0, Lcom/amazon/kindle/ffs/metrics/MetricsManager;->fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    if-eqz p1, :cond_9

    invoke-interface {v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->build()Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->record(Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;)V

    goto :goto_3

    .line 81
    :cond_8
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/metrics/MetricsManager;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-static {}, Lcom/amazon/kindle/ffs/metrics/MetricsManagerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p2

    const-string p3, "FastMetrics not available."

    invoke-interface {p1, p2, p3}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_3
    return-void
.end method
