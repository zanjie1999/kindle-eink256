.class final Lcom/amazon/kindle/krx/content/bookopen/ReaderBaseMetrics;
.super Ljava/lang/Object;
.source "BaseBookOpenMetricsProvider.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateMetrics;


# instance fields
.field private final clientId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "clientId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/krx/content/bookopen/ReaderBaseMetrics;->clientId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public emitMetrics(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;)V
    .locals 4

    const-string v0, "book"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;->getInstance()Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;

    move-result-object p2

    const-string v0, "oneTapReaderOpenStageComplete"

    invoke-virtual {p2, v0}, Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;->createMarker(Ljava/lang/String;)Lcom/amazon/kindle/krx/performance/PerformanceMarker;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/krx/performance/PerformanceMarker;->emit()V

    .line 62
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    const-string v1, "Utils.getFactory()"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContentOpenMetricsManager()Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;

    move-result-object p2

    .line 63
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->parse(Ljava/lang/String;)Lcom/amazon/kcp/library/models/internal/AmznBookID;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    .line 64
    sget-object v2, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->ONE_TAP_CX:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 63
    invoke-virtual {p2, v0, p1, v1}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->addElapsedTimers(Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    return-void
.end method
