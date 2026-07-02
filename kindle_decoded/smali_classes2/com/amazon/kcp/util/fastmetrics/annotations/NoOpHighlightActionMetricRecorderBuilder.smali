.class public final Lcom/amazon/kcp/util/fastmetrics/annotations/NoOpHighlightActionMetricRecorderBuilder;
.super Ljava/lang/Object;
.source "AnnotationActionMetricRecorder.kt"

# interfaces
.implements Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$HighlightBuilder;
.implements Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$Emitter;
.implements Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$HighlightBuilder$HighlightActionBuilder;


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/util/fastmetrics/annotations/NoOpHighlightActionMetricRecorderBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 96
    new-instance v0, Lcom/amazon/kcp/util/fastmetrics/annotations/NoOpHighlightActionMetricRecorderBuilder;

    invoke-direct {v0}, Lcom/amazon/kcp/util/fastmetrics/annotations/NoOpHighlightActionMetricRecorderBuilder;-><init>()V

    sput-object v0, Lcom/amazon/kcp/util/fastmetrics/annotations/NoOpHighlightActionMetricRecorderBuilder;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/annotations/NoOpHighlightActionMetricRecorderBuilder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic changedColor()Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$Emitter;
    .locals 0

    .line 96
    invoke-virtual {p0}, Lcom/amazon/kcp/util/fastmetrics/annotations/NoOpHighlightActionMetricRecorderBuilder;->changedColor()Lcom/amazon/kcp/util/fastmetrics/annotations/NoOpHighlightActionMetricRecorderBuilder;

    return-object p0
.end method

.method public changedColor()Lcom/amazon/kcp/util/fastmetrics/annotations/NoOpHighlightActionMetricRecorderBuilder;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic created()Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$Emitter;
    .locals 0

    .line 96
    invoke-virtual {p0}, Lcom/amazon/kcp/util/fastmetrics/annotations/NoOpHighlightActionMetricRecorderBuilder;->created()Lcom/amazon/kcp/util/fastmetrics/annotations/NoOpHighlightActionMetricRecorderBuilder;

    return-object p0
.end method

.method public created()Lcom/amazon/kcp/util/fastmetrics/annotations/NoOpHighlightActionMetricRecorderBuilder;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic deleted()Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$Emitter;
    .locals 0

    .line 96
    invoke-virtual {p0}, Lcom/amazon/kcp/util/fastmetrics/annotations/NoOpHighlightActionMetricRecorderBuilder;->deleted()Lcom/amazon/kcp/util/fastmetrics/annotations/NoOpHighlightActionMetricRecorderBuilder;

    return-object p0
.end method

.method public deleted()Lcom/amazon/kcp/util/fastmetrics/annotations/NoOpHighlightActionMetricRecorderBuilder;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic edited()Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$Emitter;
    .locals 0

    .line 96
    invoke-virtual {p0}, Lcom/amazon/kcp/util/fastmetrics/annotations/NoOpHighlightActionMetricRecorderBuilder;->edited()Lcom/amazon/kcp/util/fastmetrics/annotations/NoOpHighlightActionMetricRecorderBuilder;

    return-object p0
.end method

.method public edited()Lcom/amazon/kcp/util/fastmetrics/annotations/NoOpHighlightActionMetricRecorderBuilder;
    .locals 0

    return-object p0
.end method

.method public emit()V
    .locals 0

    return-void
.end method

.method public bridge synthetic withEntryPoint(Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;)Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$HighlightBuilder$HighlightActionBuilder;
    .locals 0

    .line 96
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/util/fastmetrics/annotations/NoOpHighlightActionMetricRecorderBuilder;->withEntryPoint(Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;)Lcom/amazon/kcp/util/fastmetrics/annotations/NoOpHighlightActionMetricRecorderBuilder;

    return-object p0
.end method

.method public withEntryPoint(Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;)Lcom/amazon/kcp/util/fastmetrics/annotations/NoOpHighlightActionMetricRecorderBuilder;
    .locals 1

    const-string v0, "entryPoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
