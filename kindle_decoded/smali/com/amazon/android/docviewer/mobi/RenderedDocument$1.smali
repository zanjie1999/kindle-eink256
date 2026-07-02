.class final Lcom/amazon/android/docviewer/mobi/RenderedDocument$1;
.super Ljava/lang/Object;
.source "RenderedDocument.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/mobi/RenderedDocument;->createViewer(Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;Lcom/amazon/android/docviewer/mobi/KRFExecutorService;)Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$doc:Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

.field final synthetic val$settings:Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$1;->val$doc:Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$1;->val$settings:Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "Create KRF IDoumentViewer"

    .line 101
    invoke-static {v1, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 103
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    sget-object v2, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->KRF_CREATE_DOCUMENT_VIEWER:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v2}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$1;->val$doc:Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

    invoke-virtual {v3}, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->getDocumentInfo()Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->getAsin()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$1;->val$doc:Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$1;->val$settings:Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->createViewer(Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;Lcom/amazon/kindle/krf/KRF/Reader/IJavascriptCallbacks;Z)Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;

    move-result-object v0

    if-nez v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$1;->val$doc:Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$1;->val$settings:Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;

    invoke-virtual {v0, v2, v3, v4}, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->createViewer(Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;Lcom/amazon/kindle/krf/KRF/Reader/IJavascriptCallbacks;Z)Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_3

    .line 115
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 116
    sget-object v2, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->KRF_CREATE_DOCUMENT_VIEWER:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v2}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$1;->val$doc:Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

    invoke-virtual {v3}, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->getDocumentInfo()Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->getAsin()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 119
    :cond_2
    invoke-static {v1, v4}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-object v0

    .line 112
    :cond_3
    new-instance v0, Lcom/amazon/android/docviewer/mobi/KRFError;

    const-string v1, "IKindleDocument.createViewer"

    const-string/jumbo v2, "null"

    invoke-direct {v0, v1, v2}, Lcom/amazon/android/docviewer/mobi/KRFError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 98
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$1;->call()Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;

    move-result-object v0

    return-object v0
.end method
