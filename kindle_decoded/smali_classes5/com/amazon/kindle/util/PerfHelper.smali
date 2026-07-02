.class public Lcom/amazon/kindle/util/PerfHelper;
.super Ljava/lang/Object;
.source "PerfHelper.java"


# direct methods
.method public static LogPerfMarker(Ljava/lang/String;IZ)V
    .locals 1

    if-eqz p2, :cond_0

    .line 40
    invoke-static {}, Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;->getInstance()Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;->createStartMarker(Ljava/lang/String;)Lcom/amazon/kindle/krx/performance/PerformanceMarker;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kindle/krx/performance/PerformanceMarker;->emit()V

    goto :goto_0

    .line 42
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;->getInstance()Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;->createEndMarker(Ljava/lang/String;)Lcom/amazon/kindle/krx/performance/PerformanceMarker;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kindle/krx/performance/PerformanceMarker;->emit()V

    :goto_0
    return-void
.end method

.method public static LogPerfMarker(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 68
    :cond_0
    invoke-static {p0, p2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method

.method public static LogPerfMarker(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 51
    invoke-static {}, Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;->getInstance()Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;->createStartMarker(Ljava/lang/String;)Lcom/amazon/kindle/krx/performance/PerformanceMarker;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kindle/krx/performance/PerformanceMarker;->emit()V

    goto :goto_0

    .line 53
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;->getInstance()Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;->createEndMarker(Ljava/lang/String;)Lcom/amazon/kindle/krx/performance/PerformanceMarker;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kindle/krx/performance/PerformanceMarker;->emit()V

    :goto_0
    return-void
.end method

.method public static LogPerfMarker(Ljava/lang/String;Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 27
    invoke-static {}, Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;->getInstance()Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;->createStartMarker(Ljava/lang/String;)Lcom/amazon/kindle/krx/performance/PerformanceMarker;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kindle/krx/performance/PerformanceMarker;->emit()V

    goto :goto_0

    .line 29
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;->getInstance()Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;->createEndMarker(Ljava/lang/String;)Lcom/amazon/kindle/krx/performance/PerformanceMarker;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kindle/krx/performance/PerformanceMarker;->emit()V

    :goto_0
    return-void
.end method

.method public static LogPerformanceMarkerForQA(Lcom/amazon/kindle/performance/KindlePerformanceConstants;Ljava/lang/String;ZJ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 97
    invoke-static {}, Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;->getInstance()Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;

    move-result-object p2

    invoke-virtual {p0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;->createStartMarker(Ljava/lang/String;)Lcom/amazon/kindle/krx/performance/PerformanceMarker;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/amazon/kindle/krx/performance/PerformanceMarker;->addMetadata(Ljava/lang/String;)Lcom/amazon/kindle/krx/performance/PerformanceMarker;

    move-result-object p0

    invoke-interface {p0, p3, p4}, Lcom/amazon/kindle/krx/performance/PerformanceMarker;->overrideTime(J)Lcom/amazon/kindle/krx/performance/PerformanceMarker;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kindle/krx/performance/PerformanceMarker;->emit()V

    goto :goto_0

    .line 99
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;->getInstance()Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;

    move-result-object p2

    invoke-virtual {p0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;->createEndMarker(Ljava/lang/String;)Lcom/amazon/kindle/krx/performance/PerformanceMarker;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/amazon/kindle/krx/performance/PerformanceMarker;->addMetadata(Ljava/lang/String;)Lcom/amazon/kindle/krx/performance/PerformanceMarker;

    move-result-object p0

    invoke-interface {p0, p3, p4}, Lcom/amazon/kindle/krx/performance/PerformanceMarker;->overrideTime(J)Lcom/amazon/kindle/krx/performance/PerformanceMarker;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kindle/krx/performance/PerformanceMarker;->emit()V

    :goto_0
    return-void
.end method

.method public static LogPerformanceMarkerForQA(Lcom/amazon/kindle/performance/KindlePerformanceConstants;Ljava/util/List;ZJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/performance/KindlePerformanceConstants;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZJ)V"
        }
    .end annotation

    .line 104
    invoke-virtual {p0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/util/List;ZJ)V

    return-void
.end method

.method public static LogPerformanceMarkerForQA(Lcom/amazon/kindle/performance/KindlePerformanceConstants;ZJ)V
    .locals 0

    if-eqz p1, :cond_0

    .line 89
    invoke-static {}, Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;->getInstance()Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;->createStartMarker(Ljava/lang/String;)Lcom/amazon/kindle/krx/performance/PerformanceMarker;

    move-result-object p0

    invoke-interface {p0, p2, p3}, Lcom/amazon/kindle/krx/performance/PerformanceMarker;->overrideTime(J)Lcom/amazon/kindle/krx/performance/PerformanceMarker;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kindle/krx/performance/PerformanceMarker;->emit()V

    goto :goto_0

    .line 91
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;->getInstance()Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;->createEndMarker(Ljava/lang/String;)Lcom/amazon/kindle/krx/performance/PerformanceMarker;

    move-result-object p0

    invoke-interface {p0, p2, p3}, Lcom/amazon/kindle/krx/performance/PerformanceMarker;->overrideTime(J)Lcom/amazon/kindle/krx/performance/PerformanceMarker;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kindle/krx/performance/PerformanceMarker;->emit()V

    :goto_0
    return-void
.end method

.method public static LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 141
    invoke-static {}, Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;->getInstance()Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;->createStartMarker(Ljava/lang/String;)Lcom/amazon/kindle/krx/performance/PerformanceMarker;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/amazon/kindle/krx/performance/PerformanceMarker;->addMetadata(Ljava/lang/String;)Lcom/amazon/kindle/krx/performance/PerformanceMarker;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kindle/krx/performance/PerformanceMarker;->emit()V

    goto :goto_0

    .line 143
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;->getInstance()Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;->createEndMarker(Ljava/lang/String;)Lcom/amazon/kindle/krx/performance/PerformanceMarker;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/amazon/kindle/krx/performance/PerformanceMarker;->addMetadata(Ljava/lang/String;)Lcom/amazon/kindle/krx/performance/PerformanceMarker;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kindle/krx/performance/PerformanceMarker;->emit()V

    :goto_0
    return-void
.end method

.method public static LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/util/List;ZJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZJ)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 110
    invoke-static {}, Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;->getInstance()Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;->createStartMarker(Ljava/lang/String;)Lcom/amazon/kindle/krx/performance/PerformanceMarker;

    move-result-object p0

    goto :goto_0

    .line 112
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;->getInstance()Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;->createEndMarker(Ljava/lang/String;)Lcom/amazon/kindle/krx/performance/PerformanceMarker;

    move-result-object p0

    .line 115
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 116
    invoke-interface {p0, p2}, Lcom/amazon/kindle/krx/performance/PerformanceMarker;->addMetadata(Ljava/lang/String;)Lcom/amazon/kindle/krx/performance/PerformanceMarker;

    goto :goto_1

    .line 119
    :cond_1
    invoke-interface {p0, p3, p4}, Lcom/amazon/kindle/krx/performance/PerformanceMarker;->overrideTime(J)Lcom/amazon/kindle/krx/performance/PerformanceMarker;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kindle/krx/performance/PerformanceMarker;->emit()V

    return-void
.end method

.method public static LogPerformanceMarkerForQA(Ljava/lang/String;Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 81
    invoke-static {}, Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;->getInstance()Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;->createStartMarker(Ljava/lang/String;)Lcom/amazon/kindle/krx/performance/PerformanceMarker;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kindle/krx/performance/PerformanceMarker;->emit()V

    goto :goto_0

    .line 83
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;->getInstance()Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;->createEndMarker(Ljava/lang/String;)Lcom/amazon/kindle/krx/performance/PerformanceMarker;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kindle/krx/performance/PerformanceMarker;->emit()V

    :goto_0
    return-void
.end method
