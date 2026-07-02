.class public Lcom/amazon/notebook/module/metrics/NotebookPMETMetricManager;
.super Ljava/lang/Object;
.source "NotebookPMETMetricManager.java"


# direct methods
.method public static logNotebookExported(IIIIII)V
    .locals 2

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    sget-object v1, Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;->NUMBER_NOTES_EXPORTED:Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;

    invoke-virtual {v1}, Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object p0, Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;->NUMBER_BOOKMARKES_EXPORTED:Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;

    invoke-virtual {p0}, Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object p0, Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;->NUMBER_HIGHLIGHTS_EXPORTED:Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;

    invoke-virtual {p0}, Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object p0, Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;->NUMBER_GHLS_EXPORTED:Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;

    invoke-virtual {p0}, Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object p0, Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;->BYTES_EXPORTED:Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;

    invoke-virtual {p0}, Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object p0, Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;->PERCENTAGE_CLIPPING_USED:Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;

    invoke-virtual {p0}, Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p0

    const-string p1, "NotebookExport"

    const/4 p3, 0x0

    const/4 p4, 0x0

    const/4 p5, 0x0

    move-object p2, v0

    invoke-virtual/range {p0 .. p5}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetrics(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method
