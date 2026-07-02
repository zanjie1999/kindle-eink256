.class public final enum Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;
.super Ljava/lang/Enum;
.source "AnnotationsExportedMetricCounter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;

.field public static final enum BYTES_EXPORTED:Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;

.field public static final enum NUMBER_BOOKMARKES_EXPORTED:Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;

.field public static final enum NUMBER_GHLS_EXPORTED:Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;

.field public static final enum NUMBER_HIGHLIGHTS_EXPORTED:Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;

.field public static final enum NUMBER_NOTES_EXPORTED:Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;

.field public static final enum PERCENTAGE_CLIPPING_USED:Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 7
    new-instance v0, Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;

    const/4 v1, 0x0

    const-string v2, "NUMBER_NOTES_EXPORTED"

    const-string v3, "NumberNotesExported"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;->NUMBER_NOTES_EXPORTED:Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;

    .line 8
    new-instance v0, Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;

    const/4 v2, 0x1

    const-string v3, "NUMBER_BOOKMARKES_EXPORTED"

    const-string v4, "NumberBookmarksExported"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;->NUMBER_BOOKMARKES_EXPORTED:Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;

    .line 9
    new-instance v0, Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;

    const/4 v3, 0x2

    const-string v4, "NUMBER_HIGHLIGHTS_EXPORTED"

    const-string v5, "NumberHighlightsExported"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;->NUMBER_HIGHLIGHTS_EXPORTED:Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;

    .line 10
    new-instance v0, Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;

    const/4 v4, 0x3

    const-string v5, "NUMBER_GHLS_EXPORTED"

    const-string v6, "NumberGHLsExported"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;->NUMBER_GHLS_EXPORTED:Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;

    .line 11
    new-instance v0, Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;

    const/4 v5, 0x4

    const-string v6, "BYTES_EXPORTED"

    const-string v7, "BytesExported"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;->BYTES_EXPORTED:Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;

    .line 12
    new-instance v0, Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;

    const/4 v6, 0x5

    const-string v7, "PERCENTAGE_CLIPPING_USED"

    const-string v8, "PercentageClippingUsed"

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;->PERCENTAGE_CLIPPING_USED:Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;

    .line 6
    sget-object v8, Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;->NUMBER_NOTES_EXPORTED:Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;

    aput-object v8, v7, v1

    sget-object v1, Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;->NUMBER_BOOKMARKES_EXPORTED:Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;

    aput-object v1, v7, v2

    sget-object v1, Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;->NUMBER_HIGHLIGHTS_EXPORTED:Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;

    aput-object v1, v7, v3

    sget-object v1, Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;->NUMBER_GHLS_EXPORTED:Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;

    aput-object v1, v7, v4

    sget-object v1, Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;->BYTES_EXPORTED:Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;->$VALUES:[Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput-object p3, p0, Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;
    .locals 1

    .line 6
    const-class v0, Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;

    return-object p0
.end method

.method public static values()[Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;->$VALUES:[Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;

    invoke-virtual {v0}, [Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotebookExport:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/notebook/module/metrics/NotebookPMETMetrics;->ANNOTATIONS_EXPORTED:Lcom/amazon/notebook/module/metrics/NotebookPMETMetrics;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/notebook/module/metrics/AnnotationsExportedMetricCounter;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
