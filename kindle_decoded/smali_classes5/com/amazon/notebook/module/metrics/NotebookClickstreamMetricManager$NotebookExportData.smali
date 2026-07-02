.class Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager$NotebookExportData;
.super Ljava/lang/Object;
.source "NotebookClickstreamMetricManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotebookExportData"
.end annotation


# instance fields
.field public citationStyle:Ljava/lang/String;

.field public count:I

.field public includeImages:Z

.field public percentBeingExported:F

.field public percentPreviouslyExported:F

.field public startTime:J

.field public warningMessageShown:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p0}, Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager$NotebookExportData;->reset()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 63
    iput-wide v0, p0, Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager$NotebookExportData;->startTime:J

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager$NotebookExportData;->count:I

    const/4 v1, 0x0

    .line 65
    iput v1, p0, Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager$NotebookExportData;->percentPreviouslyExported:F

    .line 66
    iput v1, p0, Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager$NotebookExportData;->percentBeingExported:F

    .line 67
    iput-boolean v0, p0, Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager$NotebookExportData;->includeImages:Z

    const-string v1, ""

    .line 68
    iput-object v1, p0, Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager$NotebookExportData;->citationStyle:Ljava/lang/String;

    .line 69
    iput-boolean v0, p0, Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager$NotebookExportData;->warningMessageShown:Z

    return-void
.end method
