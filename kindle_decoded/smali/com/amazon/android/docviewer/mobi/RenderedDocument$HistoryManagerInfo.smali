.class Lcom/amazon/android/docviewer/mobi/RenderedDocument$HistoryManagerInfo;
.super Ljava/lang/Object;
.source "RenderedDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/mobi/RenderedDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HistoryManagerInfo"
.end annotation


# instance fields
.field private backDepth:J

.field private isBackAvailable:Z


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/mobi/RenderedDocument;Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;)V
    .locals 0

    .line 1169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1170
    invoke-virtual {p2}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;->hasBackward()Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$HistoryManagerInfo;->isBackAvailable:Z

    .line 1171
    invoke-virtual {p2}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;->countBackwardEntries()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$HistoryManagerInfo;->backDepth:J

    return-void
.end method


# virtual methods
.method public declared-synchronized getBackDepth()J
    .locals 2

    monitor-enter p0

    .line 1184
    :try_start_0
    iget-wide v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$HistoryManagerInfo;->backDepth:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isBackAvailable()Z
    .locals 1

    monitor-enter p0

    .line 1180
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$HistoryManagerInfo;->isBackAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized update(Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;)V
    .locals 2

    monitor-enter p0

    .line 1175
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;->hasBackward()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$HistoryManagerInfo;->isBackAvailable:Z

    .line 1176
    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;->countBackwardEntries()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$HistoryManagerInfo;->backDepth:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1177
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
