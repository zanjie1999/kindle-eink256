.class public final Lcom/amazon/falkor/utils/FalkorPerformanceUtils;
.super Ljava/lang/Object;
.source "FalkorPerformanceUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/falkor/utils/FalkorPerformanceUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lcom/amazon/falkor/utils/FalkorPerformanceUtils;

    invoke-direct {v0}, Lcom/amazon/falkor/utils/FalkorPerformanceUtils;-><init>()V

    sput-object v0, Lcom/amazon/falkor/utils/FalkorPerformanceUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorPerformanceUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getPerfMarkerString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShortStory_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final emitBottomSheetShow(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPerformanceMarkerFactory()Lcom/amazon/kindle/krx/performance/PerformanceMarkerFactory;

    move-result-object p1

    const-string v0, "BottomSheetShow"

    invoke-direct {p0, v0}, Lcom/amazon/falkor/utils/FalkorPerformanceUtils;->getPerfMarkerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/performance/PerformanceMarkerFactory;->createMarker(Ljava/lang/String;)Lcom/amazon/kindle/krx/performance/PerformanceMarker;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/performance/PerformanceMarker;->addMetadata(Ljava/lang/String;)Lcom/amazon/kindle/krx/performance/PerformanceMarker;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/performance/PerformanceMarker;->emit()V

    return-void
.end method

.method public final emitBottomSheetWebViewLoadEnd(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bottomSheetId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPerformanceMarkerFactory()Lcom/amazon/kindle/krx/performance/PerformanceMarkerFactory;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/amazon/falkor/utils/FalkorPerformanceUtils;->getPerfMarkerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/performance/PerformanceMarkerFactory;->createEndMarker(Ljava/lang/String;)Lcom/amazon/kindle/krx/performance/PerformanceMarker;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/performance/PerformanceMarker;->emit()V

    return-void
.end method

.method public final emitBottomSheetWebViewLoadStart(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bottomSheetId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPerformanceMarkerFactory()Lcom/amazon/kindle/krx/performance/PerformanceMarkerFactory;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/amazon/falkor/utils/FalkorPerformanceUtils;->getPerfMarkerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/performance/PerformanceMarkerFactory;->createStartMarker(Ljava/lang/String;)Lcom/amazon/kindle/krx/performance/PerformanceMarker;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/performance/PerformanceMarker;->emit()V

    return-void
.end method

.method public final emitDownloadManagerEnd(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "managerId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPerformanceMarkerFactory()Lcom/amazon/kindle/krx/performance/PerformanceMarkerFactory;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/amazon/falkor/utils/FalkorPerformanceUtils;->getPerfMarkerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/performance/PerformanceMarkerFactory;->createEndMarker(Ljava/lang/String;)Lcom/amazon/kindle/krx/performance/PerformanceMarker;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/performance/PerformanceMarker;->emit()V

    return-void
.end method

.method public final emitDownloadManagerStart(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "managerId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPerformanceMarkerFactory()Lcom/amazon/kindle/krx/performance/PerformanceMarkerFactory;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/amazon/falkor/utils/FalkorPerformanceUtils;->getPerfMarkerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/performance/PerformanceMarkerFactory;->createStartMarker(Ljava/lang/String;)Lcom/amazon/kindle/krx/performance/PerformanceMarker;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/performance/PerformanceMarker;->emit()V

    return-void
.end method

.method public final emitFalkorBookOpen(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPerformanceMarkerFactory()Lcom/amazon/kindle/krx/performance/PerformanceMarkerFactory;

    move-result-object p1

    const-string v0, "BookOpen"

    invoke-direct {p0, v0}, Lcom/amazon/falkor/utils/FalkorPerformanceUtils;->getPerfMarkerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/performance/PerformanceMarkerFactory;->createMarker(Ljava/lang/String;)Lcom/amazon/kindle/krx/performance/PerformanceMarker;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/performance/PerformanceMarker;->addMetadata(Ljava/lang/String;)Lcom/amazon/kindle/krx/performance/PerformanceMarker;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/performance/PerformanceMarker;->emit()V

    return-void
.end method

.method public final emitNextEpisodeTapped(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    const-string/jumbo v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPerformanceMarkerFactory()Lcom/amazon/kindle/krx/performance/PerformanceMarkerFactory;

    move-result-object p1

    const-string v0, "NextEpisodeButtonTapped"

    invoke-direct {p0, v0}, Lcom/amazon/falkor/utils/FalkorPerformanceUtils;->getPerfMarkerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/performance/PerformanceMarkerFactory;->createMarker(Ljava/lang/String;)Lcom/amazon/kindle/krx/performance/PerformanceMarker;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/performance/PerformanceMarker;->emit()V

    return-void
.end method

.method public final emitTOCFetchEnd(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    const-string/jumbo v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPerformanceMarkerFactory()Lcom/amazon/kindle/krx/performance/PerformanceMarkerFactory;

    move-result-object p1

    const-string v0, "TOCFetch"

    invoke-direct {p0, v0}, Lcom/amazon/falkor/utils/FalkorPerformanceUtils;->getPerfMarkerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/performance/PerformanceMarkerFactory;->createEndMarker(Ljava/lang/String;)Lcom/amazon/kindle/krx/performance/PerformanceMarker;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/performance/PerformanceMarker;->emit()V

    return-void
.end method

.method public final emitTOCFetchStart(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    const-string/jumbo v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPerformanceMarkerFactory()Lcom/amazon/kindle/krx/performance/PerformanceMarkerFactory;

    move-result-object p1

    const-string v0, "TOCFetch"

    invoke-direct {p0, v0}, Lcom/amazon/falkor/utils/FalkorPerformanceUtils;->getPerfMarkerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/performance/PerformanceMarkerFactory;->createStartMarker(Ljava/lang/String;)Lcom/amazon/kindle/krx/performance/PerformanceMarker;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/performance/PerformanceMarker;->emit()V

    return-void
.end method

.method public final emitTOCTapped(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPerformanceMarkerFactory()Lcom/amazon/kindle/krx/performance/PerformanceMarkerFactory;

    move-result-object p1

    const-string v0, "TocTapped"

    invoke-direct {p0, v0}, Lcom/amazon/falkor/utils/FalkorPerformanceUtils;->getPerfMarkerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/performance/PerformanceMarkerFactory;->createMarker(Ljava/lang/String;)Lcom/amazon/kindle/krx/performance/PerformanceMarker;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/performance/PerformanceMarker;->addMetadata(Ljava/lang/String;)Lcom/amazon/kindle/krx/performance/PerformanceMarker;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/performance/PerformanceMarker;->emit()V

    return-void
.end method

.method public final emitUnlockEpisodeCompleted(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    const-string/jumbo v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPerformanceMarkerFactory()Lcom/amazon/kindle/krx/performance/PerformanceMarkerFactory;

    move-result-object p1

    const-string v0, "UnlockEpisodeCompleted"

    invoke-direct {p0, v0}, Lcom/amazon/falkor/utils/FalkorPerformanceUtils;->getPerfMarkerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/performance/PerformanceMarkerFactory;->createMarker(Ljava/lang/String;)Lcom/amazon/kindle/krx/performance/PerformanceMarker;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/performance/PerformanceMarker;->emit()V

    return-void
.end method

.method public final emitUnlockEpisodeTapped(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    const-string/jumbo v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPerformanceMarkerFactory()Lcom/amazon/kindle/krx/performance/PerformanceMarkerFactory;

    move-result-object p1

    const-string v0, "UnlockEpisodeButtonTapped"

    invoke-direct {p0, v0}, Lcom/amazon/falkor/utils/FalkorPerformanceUtils;->getPerfMarkerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/performance/PerformanceMarkerFactory;->createMarker(Ljava/lang/String;)Lcom/amazon/kindle/krx/performance/PerformanceMarker;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/performance/PerformanceMarker;->emit()V

    return-void
.end method
