.class final Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory$NoOpPerformanceMarker;
.super Ljava/lang/Object;
.source "AtlasPerformanceMarkerFactory.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/performance/PerformanceMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NoOpPerformanceMarker"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic addMetadata(Ljava/lang/String;)Lcom/amazon/kindle/krx/performance/PerformanceMarker;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory$NoOpPerformanceMarker;->addMetadata(Ljava/lang/String;)Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory$NoOpPerformanceMarker;

    return-object p0
.end method

.method public bridge synthetic addMetadata(Ljava/util/List;)Lcom/amazon/kindle/krx/performance/PerformanceMarker;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory$NoOpPerformanceMarker;->addMetadata(Ljava/util/List;)Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory$NoOpPerformanceMarker;

    return-object p0
.end method

.method public addMetadata(Ljava/lang/String;)Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory$NoOpPerformanceMarker;
    .locals 0

    return-object p0
.end method

.method public addMetadata(Ljava/util/List;)Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory$NoOpPerformanceMarker;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory$NoOpPerformanceMarker;"
        }
    .end annotation

    return-object p0
.end method

.method public emit()V
    .locals 0

    return-void
.end method

.method public bridge synthetic overrideTime(J)Lcom/amazon/kindle/krx/performance/PerformanceMarker;
    .locals 0

    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory$NoOpPerformanceMarker;->overrideTime(J)Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory$NoOpPerformanceMarker;

    return-object p0
.end method

.method public overrideTime(J)Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory$NoOpPerformanceMarker;
    .locals 0

    return-object p0
.end method
