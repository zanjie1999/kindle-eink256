.class public final enum Lcom/amazon/notebook/module/metrics/NotebookPMETMetrics;
.super Ljava/lang/Enum;
.source "NotebookPMETMetrics.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/notebook/module/metrics/NotebookPMETMetrics;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/notebook/module/metrics/NotebookPMETMetrics;

.field public static final enum ANNOTATIONS_EXPORTED:Lcom/amazon/notebook/module/metrics/NotebookPMETMetrics;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 7
    new-instance v0, Lcom/amazon/notebook/module/metrics/NotebookPMETMetrics;

    const/4 v1, 0x0

    const-string v2, "ANNOTATIONS_EXPORTED"

    const-string v3, "AnnotationsExported"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/notebook/module/metrics/NotebookPMETMetrics;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/notebook/module/metrics/NotebookPMETMetrics;->ANNOTATIONS_EXPORTED:Lcom/amazon/notebook/module/metrics/NotebookPMETMetrics;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/amazon/notebook/module/metrics/NotebookPMETMetrics;

    aput-object v0, v2, v1

    .line 6
    sput-object v2, Lcom/amazon/notebook/module/metrics/NotebookPMETMetrics;->$VALUES:[Lcom/amazon/notebook/module/metrics/NotebookPMETMetrics;

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

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput-object p3, p0, Lcom/amazon/notebook/module/metrics/NotebookPMETMetrics;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/notebook/module/metrics/NotebookPMETMetrics;
    .locals 1

    .line 6
    const-class v0, Lcom/amazon/notebook/module/metrics/NotebookPMETMetrics;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/notebook/module/metrics/NotebookPMETMetrics;

    return-object p0
.end method

.method public static values()[Lcom/amazon/notebook/module/metrics/NotebookPMETMetrics;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/notebook/module/metrics/NotebookPMETMetrics;->$VALUES:[Lcom/amazon/notebook/module/metrics/NotebookPMETMetrics;

    invoke-virtual {v0}, [Lcom/amazon/notebook/module/metrics/NotebookPMETMetrics;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/notebook/module/metrics/NotebookPMETMetrics;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/amazon/notebook/module/metrics/NotebookPMETMetrics;->name:Ljava/lang/String;

    return-object v0
.end method
