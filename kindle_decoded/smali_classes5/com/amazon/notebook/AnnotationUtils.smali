.class public Lcom/amazon/notebook/AnnotationUtils;
.super Ljava/lang/Object;
.source "AnnotationUtils.java"


# static fields
.field public static final DEFAULT_MCHL_COLOR:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/amazon/notebook/AnnotationUtils;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/notebook/AnnotationUtils;->TAG:Ljava/lang/String;

    .line 33
    sget-object v0, Lcom/amazon/notebook/module/ColorHighlightProperties;->YELLOW:Lcom/amazon/notebook/module/ColorHighlightProperties;

    invoke-virtual {v0}, Lcom/amazon/notebook/module/ColorHighlightProperties;->getColorTitle()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/notebook/AnnotationUtils;->DEFAULT_MCHL_COLOR:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAnnotationColor(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Ljava/lang/String;
    .locals 1

    .line 42
    invoke-interface {p0}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getMetadata()Ljava/util/Map;

    move-result-object p0

    const-string v0, "mchl_color"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    .line 43
    sget-object p0, Lcom/amazon/notebook/AnnotationUtils;->DEFAULT_MCHL_COLOR:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method private static getAnnotationMetadataTags(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 111
    :try_start_0
    invoke-interface {p0}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getMetadata()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 112
    invoke-interface {p0}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getMetadata()Ljava/util/Map;

    move-result-object p0

    const-string/jumbo v1, "tags"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 115
    sget-object v1, Lcom/amazon/notebook/AnnotationUtils;->TAG:Ljava/lang/String;

    const-string v2, "Cannot retrieve tags from the Annotation"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-object v0
.end method

.method public static getAnnotationSelectionType(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Ljava/lang/String;
    .locals 2

    const-string v0, "TEXT"

    if-eqz p0, :cond_2

    .line 66
    invoke-interface {p0}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getMetadata()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    invoke-interface {p0}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getMetadata()Ljava/util/Map;

    move-result-object p0

    const-string v1, "mchl_selection_type"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 75
    :cond_1
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static isStarred(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z
    .locals 1

    .line 82
    invoke-static {p0}, Lcom/amazon/notebook/AnnotationUtils;->getAnnotationMetadataTags(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string/jumbo v0, "star"

    .line 83
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static setAnnotationColor(Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/lang/String;Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;)Z
    .locals 7

    .line 53
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v0, "EntryPoint"

    .line 54
    invoke-interface {v5, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-interface {p3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    .line 58
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v3

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v4

    const-string v1, "Book"

    const-string v2, "ChangeHighlightColor"

    .line 57
    invoke-interface/range {v0 .. v5}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performContentAction(Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;)V

    .line 60
    invoke-interface {p3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p3

    const-string v0, "ChangeHighlightColor"

    invoke-interface {p3, p4, v0}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "mchl_color"

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    .line 62
    invoke-interface/range {v1 .. v6}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->setAnnotationMetadata(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/lang/String;Ljava/lang/Object;ZZ)Z

    move-result p0

    return p0
.end method

.method public static setAnnotationColor(Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 48
    invoke-static {}, Lcom/amazon/notebook/module/NotebookPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/amazon/notebook/AnnotationUtils;->setAnnotationColor(Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/lang/String;Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static toggleAnnotationStar(Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lcom/amazon/kindle/krx/metrics/IMetricsManager;Ljava/lang/String;)Z
    .locals 8

    .line 93
    invoke-static {p1}, Lcom/amazon/notebook/AnnotationUtils;->getAnnotationMetadataTags(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Ljava/util/List;

    move-result-object v0

    .line 94
    new-instance v1, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    move-object v5, v1

    const-string/jumbo v0, "star"

    .line 96
    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "Notebook"

    if-eqz v1, :cond_1

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StarOff_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, v2, p3}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-interface {v5, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 100
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StarOn_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, v2, p3}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    const/4 v6, 0x1

    const/4 v7, 0x1

    const-string/jumbo v4, "tags"

    move-object v2, p0

    move-object v3, p1

    .line 104
    invoke-interface/range {v2 .. v7}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->setAnnotationMetadata(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/lang/String;Ljava/lang/Object;ZZ)Z

    move-result p0

    return p0
.end method

.method public static toggleAnnotationStar(Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/lang/String;)Z
    .locals 1

    .line 88
    invoke-static {}, Lcom/amazon/notebook/module/NotebookPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lcom/amazon/notebook/AnnotationUtils;->toggleAnnotationStar(Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lcom/amazon/kindle/krx/metrics/IMetricsManager;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
