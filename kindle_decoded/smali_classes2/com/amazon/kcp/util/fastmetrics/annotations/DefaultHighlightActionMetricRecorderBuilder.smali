.class public final Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultHighlightActionMetricRecorderBuilder;
.super Ljava/lang/Object;
.source "AnnotationActionMetricRecorder.kt"

# interfaces
.implements Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$HighlightBuilder;


# instance fields
.field private final annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

.field private final highlightActionMetricRecorder:Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorder;

.field private final toRun:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            "Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorder;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorder;",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            "-",
            "Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "highlightActionMetricRecorder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toRun"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultHighlightActionMetricRecorderBuilder;->highlightActionMetricRecorder:Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorder;

    iput-object p2, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultHighlightActionMetricRecorderBuilder;->annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    iput-object p3, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultHighlightActionMetricRecorderBuilder;->toRun:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultHighlightActionMetricRecorderBuilder;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultHighlightActionMetricRecorderBuilder;

    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultHighlightActionMetricRecorderBuilder;->highlightActionMetricRecorder:Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorder;

    iget-object v1, p1, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultHighlightActionMetricRecorderBuilder;->highlightActionMetricRecorder:Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorder;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultHighlightActionMetricRecorderBuilder;->annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    iget-object v1, p1, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultHighlightActionMetricRecorderBuilder;->annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultHighlightActionMetricRecorderBuilder;->toRun:Lkotlin/jvm/functions/Function2;

    iget-object p1, p1, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultHighlightActionMetricRecorderBuilder;->toRun:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultHighlightActionMetricRecorderBuilder;->highlightActionMetricRecorder:Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultHighlightActionMetricRecorderBuilder;->annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultHighlightActionMetricRecorderBuilder;->toRun:Lkotlin/jvm/functions/Function2;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DefaultHighlightActionMetricRecorderBuilder(highlightActionMetricRecorder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultHighlightActionMetricRecorderBuilder;->highlightActionMetricRecorder:Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", annotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultHighlightActionMetricRecorderBuilder;->annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", toRun="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultHighlightActionMetricRecorderBuilder;->toRun:Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withEntryPoint(Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;)Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$HighlightBuilder$HighlightActionBuilder;
    .locals 0

    .line 76
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultHighlightActionMetricRecorderBuilder;->withEntryPoint(Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;)Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withEntryPoint(Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;)Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;
    .locals 4

    const-string v0, "entryPoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    new-instance v0, Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultHighlightActionMetricRecorderBuilder;->highlightActionMetricRecorder:Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorder;

    iget-object v2, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultHighlightActionMetricRecorderBuilder;->annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    sget-object v3, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultHighlightActionMetricRecorderBuilder$withEntryPoint$1;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultHighlightActionMetricRecorderBuilder$withEntryPoint$1;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;-><init>(Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorder;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;Lkotlin/jvm/functions/Function2;)V

    return-object v0
.end method
