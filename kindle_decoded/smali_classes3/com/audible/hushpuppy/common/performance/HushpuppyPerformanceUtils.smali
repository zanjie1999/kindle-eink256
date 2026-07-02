.class public Lcom/audible/hushpuppy/common/performance/HushpuppyPerformanceUtils;
.super Ljava/lang/Object;
.source "HushpuppyPerformanceUtils.java"


# static fields
.field private static HUSHPUPPY_PERF_PREFIX:Ljava/lang/String; = "Hushpuppy_"

.field private static PRESS_PLAY_BUTTON:Ljava/lang/String; = "PressPlayButton"

.field private static READ_ALONG_AUTO_SCROLL:Ljava/lang/String; = "ReadAlongAutoScroll"


# instance fields
.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/audible/hushpuppy/common/performance/HushpuppyPerformanceUtils;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method

.method private emitPerfMarker(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    if-eqz p3, :cond_0

    .line 45
    iget-object p3, p0, Lcom/audible/hushpuppy/common/performance/HushpuppyPerformanceUtils;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPerformanceMarkerFactory()Lcom/amazon/kindle/krx/performance/PerformanceMarkerFactory;

    move-result-object p3

    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/common/performance/HushpuppyPerformanceUtils;->getPerfMarkerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/amazon/kindle/krx/performance/PerformanceMarkerFactory;->createStartMarker(Ljava/lang/String;)Lcom/amazon/kindle/krx/performance/PerformanceMarker;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/performance/PerformanceMarker;->addMetadata(Ljava/lang/String;)Lcom/amazon/kindle/krx/performance/PerformanceMarker;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/performance/PerformanceMarker;->emit()V

    goto :goto_0

    .line 47
    :cond_0
    iget-object p3, p0, Lcom/audible/hushpuppy/common/performance/HushpuppyPerformanceUtils;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPerformanceMarkerFactory()Lcom/amazon/kindle/krx/performance/PerformanceMarkerFactory;

    move-result-object p3

    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/common/performance/HushpuppyPerformanceUtils;->getPerfMarkerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/amazon/kindle/krx/performance/PerformanceMarkerFactory;->createEndMarker(Ljava/lang/String;)Lcom/amazon/kindle/krx/performance/PerformanceMarker;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/performance/PerformanceMarker;->addMetadata(Ljava/lang/String;)Lcom/amazon/kindle/krx/performance/PerformanceMarker;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/performance/PerformanceMarker;->emit()V

    :goto_0
    return-void
.end method

.method private getPerfMarkerString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/audible/hushpuppy/common/performance/HushpuppyPerformanceUtils;->HUSHPUPPY_PERF_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public emitPerfMarkerForPressPlayButton(Ljava/lang/String;Z)V
    .locals 1

    .line 29
    sget-object v0, Lcom/audible/hushpuppy/common/performance/HushpuppyPerformanceUtils;->PRESS_PLAY_BUTTON:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lcom/audible/hushpuppy/common/performance/HushpuppyPerformanceUtils;->emitPerfMarker(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public emitPerfMarkerForReadAlongAutoScroll(Ljava/lang/String;Z)V
    .locals 1

    .line 36
    sget-object v0, Lcom/audible/hushpuppy/common/performance/HushpuppyPerformanceUtils;->READ_ALONG_AUTO_SCROLL:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lcom/audible/hushpuppy/common/performance/HushpuppyPerformanceUtils;->emitPerfMarker(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
