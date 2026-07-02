.class public final Lcom/amazon/kcp/library/LibraryDisplayItemUtils;
.super Ljava/lang/Object;
.source "LibraryDisplayItemUtils.java"


# static fields
.field private static arePerfMarkersEnabled:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static logPerfMarkerIfNecessary(Lcom/amazon/kindle/performance/KindlePerformanceConstants;ZLcom/amazon/kcp/library/ILibraryDisplayItem;)V
    .locals 1

    .line 34
    sget-boolean v0, Lcom/amazon/kcp/library/LibraryDisplayItemUtils;->arePerfMarkersEnabled:Z

    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {p0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 36
    invoke-interface {p2}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getAsin()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 35
    :goto_0
    invoke-static {p0, p2, p1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public static logPerfMarkerIfNecessary(Lcom/amazon/kindle/performance/KindlePerformanceConstants;ZLcom/amazon/kindle/model/content/IBookID;)V
    .locals 1

    .line 48
    sget-boolean v0, Lcom/amazon/kcp/library/LibraryDisplayItemUtils;->arePerfMarkersEnabled:Z

    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {p0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 50
    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IBookID;->getAsin()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 49
    :goto_0
    invoke-static {p0, p2, p1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method
