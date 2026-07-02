.class public final Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;
.super Ljava/lang/Object;
.source "FastMetricsSessionsHelper.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;

    invoke-direct {v0}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;-><init>()V

    sput-object v0, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;

    const-string v0, "FastMetricsSessionsHelper"

    .line 23
    sput-object v0, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final endAppSession()V
    .locals 3

    .line 98
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;

    invoke-direct {v0}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;->getFastMetricsSessions()Lcom/amazon/kindle/fastmetrics/service/contract/IKindleFastMetricsSessions;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v1

    new-instance v2, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper$endAppSession$1;

    invoke-direct {v2, v0}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper$endAppSession$1;-><init>(Lcom/amazon/kindle/fastmetrics/service/contract/IKindleFastMetricsSessions;)V

    invoke-interface {v1, v2}, Lcom/amazon/foundation/internal/IThreadPoolManager;->submitSingleThreadTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method public static final endReadingSession()V
    .locals 3

    .line 162
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;

    invoke-direct {v0}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;->getFastMetricsSessions()Lcom/amazon/kindle/fastmetrics/service/contract/IKindleFastMetricsSessions;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v1

    new-instance v2, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper$endReadingSession$1;

    invoke-direct {v2, v0}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper$endReadingSession$1;-><init>(Lcom/amazon/kindle/fastmetrics/service/contract/IKindleFastMetricsSessions;)V

    invoke-interface {v1, v2}, Lcom/amazon/foundation/internal/IThreadPoolManager;->submitSingleThreadTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method private final getFastMetricsSessions()Lcom/amazon/kindle/fastmetrics/service/contract/IKindleFastMetricsSessions;
    .locals 2

    .line 29
    const-class v0, Lcom/amazon/kindle/fastmetrics/service/contract/IKindleFastMetricsSessions;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    const-string v1, "UniqueDiscovery.of(IKind\u2026ricsSessions::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;->getFastMetricsSessions$KindleReaderLibrary_release(Lcom/amazon/discovery/UniqueDiscovery;)Lcom/amazon/kindle/fastmetrics/service/contract/IKindleFastMetricsSessions;

    move-result-object v0

    return-object v0
.end method

.method public static final recordMetrics(Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;",
            "+",
            "Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;",
            ">;)V"
        }
    .end annotation

    const-string v0, "schemaName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "operatePayloadBuilder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    const-class v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    if-eqz v0, :cond_0

    .line 182
    invoke-interface {v0, p0, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->getPayloadBuilder(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object p0

    const-string p1, "getPayloadBuilder(schemaName, schemaVersion)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    invoke-interface {p0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->build()Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->record(Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;)V

    :cond_0
    return-void
.end method

.method public static final startAppSession()V
    .locals 3

    .line 45
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;

    invoke-direct {v0}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;->getFastMetricsSessions()Lcom/amazon/kindle/fastmetrics/service/contract/IKindleFastMetricsSessions;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v1

    new-instance v2, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper$startAppSession$1;

    invoke-direct {v2, v0}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper$startAppSession$1;-><init>(Lcom/amazon/kindle/fastmetrics/service/contract/IKindleFastMetricsSessions;)V

    const/4 v0, 0x0

    invoke-interface {v1, v2, v0}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->execute(Ljava/lang/Runnable;Z)V

    :cond_0
    return-void
.end method

.method public static final startReadingSession(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/android/docviewer/KindleDoc;I)V
    .locals 6

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;->startReadingSession$default(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/android/docviewer/KindleDoc;ILjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public static final startReadingSession(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/android/docviewer/KindleDoc;ILjava/lang/String;)V
    .locals 8

    const-string v0, "book"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "doc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bookType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;

    invoke-direct {v0}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;->getFastMetricsSessions()Lcom/amazon/kindle/fastmetrics/service/contract/IKindleFastMetricsSessions;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 135
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v7, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper$startReadingSession$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper$startReadingSession$1;-><init>(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/android/docviewer/KindleDoc;ILcom/amazon/kindle/fastmetrics/service/contract/IKindleFastMetricsSessions;Ljava/lang/String;)V

    invoke-interface {v0, v7}, Lcom/amazon/foundation/internal/IThreadPoolManager;->submitSingleThreadTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method public static synthetic startReadingSession$default(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/android/docviewer/KindleDoc;ILjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_0

    const-string p3, ""

    .line 132
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;->startReadingSession(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/android/docviewer/KindleDoc;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final endAppSession$KindleReaderLibrary_release(Lcom/amazon/kindle/fastmetrics/service/contract/IKindleFastMetricsSessions;)V
    .locals 1

    const-string v0, "fastMetricsSessions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-interface {p1}, Lcom/amazon/kindle/fastmetrics/service/contract/IKindleFastMetricsSessions;->endAppSession()V

    return-void
.end method

.method public final endReadingSession$KindleReaderLibrary_release(Lcom/amazon/kindle/fastmetrics/service/contract/IKindleFastMetricsSessions;)V
    .locals 1

    const-string v0, "fastMetricsSessions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    invoke-interface {p1}, Lcom/amazon/kindle/fastmetrics/service/contract/IKindleFastMetricsSessions;->endReadingSession()V

    return-void
.end method

.method public final getFastMetricsSessions$KindleReaderLibrary_release(Lcom/amazon/discovery/UniqueDiscovery;)Lcom/amazon/kindle/fastmetrics/service/contract/IKindleFastMetricsSessions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/discovery/UniqueDiscovery<",
            "Lcom/amazon/kindle/fastmetrics/service/contract/IKindleFastMetricsSessions;",
            ">;)",
            "Lcom/amazon/kindle/fastmetrics/service/contract/IKindleFastMetricsSessions;"
        }
    .end annotation

    const-string v0, "fastMetrics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p1}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/fastmetrics/service/contract/IKindleFastMetricsSessions;

    return-object p1
.end method

.method public final startAppSession$KindleReaderLibrary_release(Lcom/amazon/kindle/fastmetrics/service/contract/IKindleFastMetricsSessions;Lcom/amazon/kindle/krx/application/IUserAccount;Lcom/amazon/kindle/krx/application/IDeviceInformation;Lcom/amazon/kcp/application/IDeviceInformationProvider;)V
    .locals 9

    const-string v0, "fastMetricsSessions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 68
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->getFireOSVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 71
    :cond_1
    invoke-interface {p4}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getOsVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "deviceInfoProvider.osVersion"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    move-object v8, v0

    .line 76
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->getVersion()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 77
    invoke-interface {p3}, Lcom/amazon/kindle/krx/application/IDeviceInformation;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v5

    .line 78
    invoke-interface {p4}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getDeviceModelId()Ljava/lang/String;

    move-result-object v6

    .line 79
    invoke-interface {p4}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getDeviceTypeId()Ljava/lang/String;

    move-result-object v7

    move-object v1, p1

    move-object v2, p2

    .line 74
    invoke-interface/range {v1 .. v8}, Lcom/amazon/kindle/fastmetrics/service/contract/IKindleFastMetricsSessions;->startAppSession(Lcom/amazon/kindle/krx/application/IUserAccount;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final startReadingSession$KindleReaderLibrary_release(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/android/docviewer/KindleDoc;ILcom/amazon/kindle/fastmetrics/service/contract/IKindleFastMetricsSessions;Ljava/lang/String;)V
    .locals 10

    const-string v0, "book"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "doc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fastMetricsSessions"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bookType"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    invoke-interface {p2}, Lcom/amazon/android/docviewer/KindleDoc;->getStartReadingPosition()I

    move-result v0

    int-to-long v3, v0

    int-to-long v5, p3

    invoke-interface {p2}, Lcom/amazon/android/docviewer/KindleDoc;->getBookEndPosition()I

    move-result p2

    int-to-long v7, p2

    move-object v1, p4

    move-object v2, p1

    move-object v9, p5

    invoke-interface/range {v1 .. v9}, Lcom/amazon/kindle/fastmetrics/service/contract/IKindleFastMetricsSessions;->startReadingSession(Lcom/amazon/kindle/krx/content/IBook;JJJLjava/lang/String;)V

    return-void
.end method
