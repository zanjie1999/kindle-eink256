.class public final Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;
.super Ljava/lang/Object;
.source "AnnotationActionMetricRecorder.kt"

# interfaces
.implements Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$Emitter;
.implements Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$HighlightBuilder$HighlightActionBuilder;


# instance fields
.field private final annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

.field private final entryPoint:Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;

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
.method public constructor <init>(Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorder;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorder;",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            "Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;",
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

    const-string v0, "entryPoint"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toRun"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;->highlightActionMetricRecorder:Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorder;

    iput-object p2, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;->annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    iput-object p3, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;->entryPoint:Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;

    iput-object p4, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;->toRun:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public static synthetic copy$default(Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorder;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;->highlightActionMetricRecorder:Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorder;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;->annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;->entryPoint:Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;->toRun:Lkotlin/jvm/functions/Function2;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;->copy(Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorder;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;Lkotlin/jvm/functions/Function2;)Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic changedColor()Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$Emitter;
    .locals 1

    .line 82
    invoke-virtual {p0}, Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;->changedColor()Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;

    move-result-object v0

    return-object v0
.end method

.method public changedColor()Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;
    .locals 7

    .line 88
    new-instance v4, Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder$changedColor$1;

    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;->highlightActionMetricRecorder:Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorder;

    invoke-direct {v4, v0}, Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder$changedColor$1;-><init>(Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorder;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;->copy$default(Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorder;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final copy(Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorder;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;Lkotlin/jvm/functions/Function2;)Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorder;",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            "Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            "-",
            "Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;"
        }
    .end annotation

    const-string v0, "highlightActionMetricRecorder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entryPoint"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toRun"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;-><init>(Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorder;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;Lkotlin/jvm/functions/Function2;)V

    return-object v0
.end method

.method public bridge synthetic created()Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$Emitter;
    .locals 1

    .line 82
    invoke-virtual {p0}, Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;->created()Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;

    move-result-object v0

    return-object v0
.end method

.method public created()Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;
    .locals 7

    .line 89
    new-instance v4, Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder$created$1;

    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;->highlightActionMetricRecorder:Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorder;

    invoke-direct {v4, v0}, Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder$created$1;-><init>(Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorder;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;->copy$default(Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorder;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic deleted()Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$Emitter;
    .locals 1

    .line 82
    invoke-virtual {p0}, Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;->deleted()Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;

    move-result-object v0

    return-object v0
.end method

.method public deleted()Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;
    .locals 7

    .line 90
    new-instance v4, Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder$deleted$1;

    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;->highlightActionMetricRecorder:Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorder;

    invoke-direct {v4, v0}, Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder$deleted$1;-><init>(Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorder;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;->copy$default(Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorder;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic edited()Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$Emitter;
    .locals 1

    .line 82
    invoke-virtual {p0}, Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;->edited()Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;

    move-result-object v0

    return-object v0
.end method

.method public edited()Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;
    .locals 7

    .line 91
    new-instance v4, Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder$edited$1;

    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;->highlightActionMetricRecorder:Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorder;

    invoke-direct {v4, v0}, Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder$edited$1;-><init>(Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorder;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;->copy$default(Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorder;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;

    move-result-object v0

    return-object v0
.end method

.method public emit()V
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;->toRun:Lkotlin/jvm/functions/Function2;

    iget-object v1, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;->annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    iget-object v2, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;->entryPoint:Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;

    invoke-interface {v0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;

    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;->highlightActionMetricRecorder:Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorder;

    iget-object v1, p1, Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;->highlightActionMetricRecorder:Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorder;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;->annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    iget-object v1, p1, Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;->annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;->entryPoint:Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;

    iget-object v1, p1, Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;->entryPoint:Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;->toRun:Lkotlin/jvm/functions/Function2;

    iget-object p1, p1, Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;->toRun:Lkotlin/jvm/functions/Function2;

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

    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;->highlightActionMetricRecorder:Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;->annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;->entryPoint:Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;->toRun:Lkotlin/jvm/functions/Function2;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HighlightActionMetricRecorderWithEntryPointBuilder(highlightActionMetricRecorder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;->highlightActionMetricRecorder:Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", annotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;->annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", entryPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;->entryPoint:Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", toRun="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorderWithEntryPointBuilder;->toRun:Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
