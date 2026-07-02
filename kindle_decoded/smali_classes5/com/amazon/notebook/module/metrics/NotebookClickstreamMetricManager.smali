.class public Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager;
.super Ljava/lang/Object;
.source "NotebookClickstreamMetricManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager$NotebookExportData;
    }
.end annotation


# static fields
.field private static final ANNOTATION_CONTEXT_MENU_VIEWED:Ljava/lang/String; = "AnnotationContextMenuViewed"

.field private static final ANNOTATION_DELETED:Ljava/lang/String; = "AnnotationDeleted"

.field private static final ANNOTATION_TYPE_KEY:Ljava/lang/String; = "annotationType"

.field private static final ANNOTATION_VIEWED:Ljava/lang/String; = "AnnotationViewed"

.field private static final CANCELED_KEY:Ljava/lang/String; = "canceled"

.field private static final CITATION_STYLE_KEY:Ljava/lang/String; = "citationStyle"

.field private static final CLIPPING_LIMIT_WARNING_SHOWN:Ljava/lang/String; = "ClippingLimitWarningShown"

.field private static final COUNT_KEY:Ljava/lang/String; = "count"

.field private static final CREATE_FLASHCARDS:Ljava/lang/String; = "CreateFlashcards"

.field private static final EDIT_NOTE:Ljava/lang/String; = "EditNote"

.field private static final EXPORT_NOTES:Ljava/lang/String; = "ExportNotes"

.field private static final FILTER_MENU_DISPLAYED:Ljava/lang/String; = "FilterMenuDisplayed"

.field private static final FILTER_OPTION_CLICKED:Ljava/lang/String; = "FilterOptionClicked"

.field private static final FILTER_OPTION_LABEL_KEY:Ljava/lang/String; = "filterOptionLabel"

.field private static final FROM_CONTEXT_MENU_KEY:Ljava/lang/String; = "fromContextMenu"

.field private static final HIGHLIGHT_COLOR_CHANGED:Ljava/lang/String; = "HighlightColorChanged"

.field private static final HIGHLIGHT_COLOR_KEY:Ljava/lang/String; = "highlightColor"

.field private static final INCLUDE_IMAGES_KEY:Ljava/lang/String; = "includeImages"

.field private static final NOTEBOOK_OPENED:Ljava/lang/String; = "NotebookOpened"

.field private static final PAGE_TYPE:Ljava/lang/String; = "Notebook"

.field private static final PERCENT_BEING_EXPORTED_KEY:Ljava/lang/String; = "percentBeingExported"

.field private static final PERCENT_PREVIOUSLY_EXPORTED_KEY:Ljava/lang/String; = "percentPreviouslyExported"

.field private static final STAR_TOGGLED:Ljava/lang/String; = "StarToggled"

.field private static final STATE_KEY:Ljava/lang/String; = "state"

.field private static final TAG:Ljava/lang/String;

.field private static final TOTAL_RUNTIME_KEY:Ljava/lang/String; = "totalRuntime"

.field private static notebookExportData:Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager$NotebookExportData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-class v0, Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager;->TAG:Ljava/lang/String;

    .line 43
    new-instance v0, Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager$NotebookExportData;

    invoke-direct {v0}, Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager$NotebookExportData;-><init>()V

    sput-object v0, Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager;->notebookExportData:Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager$NotebookExportData;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static boolToString(Z)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    const-string p0, "1"

    return-object p0

    :cond_0
    const-string p0, "0"

    return-object p0
.end method

.method private static createAnnotationMetadata(Z)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 161
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 162
    sget-object v1, Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager;->notebookExportData:Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager$NotebookExportData;

    iget v1, v1, Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager$NotebookExportData;->count:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "count"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v1, Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager;->notebookExportData:Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager$NotebookExportData;

    iget v1, v1, Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager$NotebookExportData;->percentPreviouslyExported:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "percentPreviouslyExported"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v1, Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager;->notebookExportData:Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager$NotebookExportData;

    iget v1, v1, Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager$NotebookExportData;->percentBeingExported:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "percentBeingExported"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v1, Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager;->notebookExportData:Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager$NotebookExportData;

    iget-boolean v1, v1, Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager$NotebookExportData;->includeImages:Z

    invoke-static {v1}, Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager;->boolToString(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "includeImages"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v1, Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager;->notebookExportData:Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager$NotebookExportData;

    iget-object v1, v1, Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager$NotebookExportData;->citationStyle:Ljava/lang/String;

    const-string v2, "citationStyle"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-static {p0}, Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager;->boolToString(Z)Ljava/lang/String;

    move-result-object p0

    const-string v1, "canceled"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static logAnnotationDeleted(Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;)V
    .locals 2

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 79
    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "annotationType"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "Notebook"

    const-string v1, "AnnotationDeleted"

    .line 80
    invoke-static {p0, v1, v0}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEventWithMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static logAnnotationViewed(Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;Z)V
    .locals 2

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 110
    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "annotationType"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-static {p1}, Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager;->boolToString(Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, "fromContextMenu"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "Notebook"

    const-string p1, "AnnotationViewed"

    .line 112
    invoke-static {p0, p1, v0}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEventWithMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static logClippingLimitWarningShown()V
    .locals 2

    .line 212
    sget-object v0, Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager;->notebookExportData:Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager$NotebookExportData;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager$NotebookExportData;->warningMessageShown:Z

    return-void
.end method

.method public static logCreateFlashcardsFromNotebook(I)V
    .locals 2

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 123
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "count"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "Notebook"

    const-string v1, "CreateFlashcards"

    .line 124
    invoke-static {p0, v1, v0}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEventWithMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static logEditNote()V
    .locals 2

    const-string v0, "Notebook"

    const-string v1, "EditNote"

    .line 91
    invoke-static {v0, v1}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static logHighlightColorChanged(Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;Ljava/lang/String;)V
    .locals 2

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 85
    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "annotationType"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "highlightColor"

    .line 86
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "Notebook"

    const-string p1, "HighlightColorChanged"

    .line 87
    invoke-static {p0, p1, v0}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEventWithMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static logNotebookExport(ZZ)V
    .locals 4

    .line 141
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    if-nez p1, :cond_0

    .line 145
    sget-object p1, Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager;->notebookExportData:Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager$NotebookExportData;

    iput-wide v0, p1, Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager$NotebookExportData;->startTime:J

    .line 148
    :cond_0
    invoke-static {p0}, Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager;->createAnnotationMetadata(Z)Ljava/util/Map;

    move-result-object p1

    .line 149
    sget-object v2, Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager;->notebookExportData:Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager$NotebookExportData;

    iget-wide v2, v2, Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager$NotebookExportData;->startTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "totalRuntime"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Notebook"

    const-string v1, "ExportNotes"

    .line 150
    invoke-static {v0, v1, p1}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEventWithMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 152
    sget-object p1, Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager;->notebookExportData:Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager$NotebookExportData;

    iget-boolean p1, p1, Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager$NotebookExportData;->warningMessageShown:Z

    if-eqz p1, :cond_1

    .line 153
    invoke-static {p0}, Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager;->createAnnotationMetadata(Z)Ljava/util/Map;

    move-result-object p0

    const-string p1, "ClippingLimitWarningShown"

    .line 154
    invoke-static {v0, p1, p0}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEventWithMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 157
    :cond_1
    sget-object p0, Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager;->notebookExportData:Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager$NotebookExportData;

    invoke-virtual {p0}, Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager$NotebookExportData;->reset()V

    return-void
.end method

.method public static logNotebookExportCanceled()V
    .locals 1

    const/4 v0, 0x1

    .line 181
    invoke-static {v0, v0}, Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager;->logNotebookExport(ZZ)V

    return-void
.end method

.method public static logNotebookExportCanceledBeforeStarting(IFFZLjava/lang/String;)V
    .locals 0

    .line 172
    invoke-static {p0, p1, p2, p3, p4}, Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager;->setNotebookExportData(IFFZLjava/lang/String;)V

    const/4 p0, 0x1

    const/4 p1, 0x0

    .line 173
    invoke-static {p0, p1}, Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager;->logNotebookExport(ZZ)V

    return-void
.end method

.method public static logNotebookExportFinished()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 177
    invoke-static {v0, v1}, Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager;->logNotebookExport(ZZ)V

    return-void
.end method

.method public static logNotebookExportStarted(IFFZLjava/lang/String;)V
    .locals 0

    .line 137
    invoke-static {p0, p1, p2, p3, p4}, Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager;->setNotebookExportData(IFFZLjava/lang/String;)V

    return-void
.end method

.method public static logStarToggled(Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;)V
    .locals 2

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 96
    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "annotationType"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "Notebook"

    const-string v1, "StarToggled"

    .line 97
    invoke-static {p0, v1, v0}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEventWithMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static setNotebookExportData(IFFZLjava/lang/String;)V
    .locals 1

    .line 128
    sget-object v0, Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager;->notebookExportData:Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager$NotebookExportData;

    iput p0, v0, Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager$NotebookExportData;->count:I

    .line 129
    iput p1, v0, Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager$NotebookExportData;->percentPreviouslyExported:F

    .line 130
    iput p2, v0, Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager$NotebookExportData;->percentBeingExported:F

    .line 131
    iput-boolean p3, v0, Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager$NotebookExportData;->includeImages:Z

    .line 132
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p0

    iput-wide p0, v0, Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager$NotebookExportData;->startTime:J

    .line 133
    sget-object p0, Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager;->notebookExportData:Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager$NotebookExportData;

    iput-object p4, p0, Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager$NotebookExportData;->citationStyle:Ljava/lang/String;

    return-void
.end method
