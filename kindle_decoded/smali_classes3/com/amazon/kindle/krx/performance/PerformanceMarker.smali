.class public interface abstract Lcom/amazon/kindle/krx/performance/PerformanceMarker;
.super Ljava/lang/Object;
.source "PerformanceMarker.java"


# virtual methods
.method public abstract addMetadata(Ljava/lang/String;)Lcom/amazon/kindle/krx/performance/PerformanceMarker;
.end method

.method public abstract addMetadata(Ljava/util/List;)Lcom/amazon/kindle/krx/performance/PerformanceMarker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazon/kindle/krx/performance/PerformanceMarker;"
        }
    .end annotation
.end method

.method public abstract emit()V
.end method

.method public abstract overrideTime(J)Lcom/amazon/kindle/krx/performance/PerformanceMarker;
.end method
