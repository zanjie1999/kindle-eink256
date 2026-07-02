.class public final Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultNoteActionMetricRecorderBuilder;
.super Ljava/lang/Object;
.source "AnnotationActionMetricRecorder.kt"

# interfaces
.implements Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$NoteBuilder;
.implements Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$Emitter;


# instance fields
.field private final annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

.field private final notesActionMetricRecorder:Lcom/amazon/kcp/util/fastmetrics/annotations/NotesActionMetricRecorder;

.field private final toRun:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/util/fastmetrics/annotations/NotesActionMetricRecorder;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/util/fastmetrics/annotations/NotesActionMetricRecorder;",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "notesActionMetricRecorder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toRun"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultNoteActionMetricRecorderBuilder;->notesActionMetricRecorder:Lcom/amazon/kcp/util/fastmetrics/annotations/NotesActionMetricRecorder;

    iput-object p2, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultNoteActionMetricRecorderBuilder;->annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    iput-object p3, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultNoteActionMetricRecorderBuilder;->toRun:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static synthetic copy$default(Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultNoteActionMetricRecorderBuilder;Lcom/amazon/kcp/util/fastmetrics/annotations/NotesActionMetricRecorder;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultNoteActionMetricRecorderBuilder;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultNoteActionMetricRecorderBuilder;->notesActionMetricRecorder:Lcom/amazon/kcp/util/fastmetrics/annotations/NotesActionMetricRecorder;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultNoteActionMetricRecorderBuilder;->annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultNoteActionMetricRecorderBuilder;->toRun:Lkotlin/jvm/functions/Function1;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultNoteActionMetricRecorderBuilder;->copy(Lcom/amazon/kcp/util/fastmetrics/annotations/NotesActionMetricRecorder;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lkotlin/jvm/functions/Function1;)Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultNoteActionMetricRecorderBuilder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Lcom/amazon/kcp/util/fastmetrics/annotations/NotesActionMetricRecorder;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lkotlin/jvm/functions/Function1;)Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultNoteActionMetricRecorderBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/util/fastmetrics/annotations/NotesActionMetricRecorder;",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultNoteActionMetricRecorderBuilder;"
        }
    .end annotation

    const-string v0, "notesActionMetricRecorder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toRun"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultNoteActionMetricRecorderBuilder;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultNoteActionMetricRecorderBuilder;-><init>(Lcom/amazon/kcp/util/fastmetrics/annotations/NotesActionMetricRecorder;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method public bridge synthetic created()Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$Emitter;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultNoteActionMetricRecorderBuilder;->created()Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultNoteActionMetricRecorderBuilder;

    move-result-object v0

    return-object v0
.end method

.method public created()Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultNoteActionMetricRecorderBuilder;
    .locals 6

    .line 71
    new-instance v3, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultNoteActionMetricRecorderBuilder$created$1;

    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultNoteActionMetricRecorderBuilder;->notesActionMetricRecorder:Lcom/amazon/kcp/util/fastmetrics/annotations/NotesActionMetricRecorder;

    invoke-direct {v3, v0}, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultNoteActionMetricRecorderBuilder$created$1;-><init>(Lcom/amazon/kcp/util/fastmetrics/annotations/NotesActionMetricRecorder;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultNoteActionMetricRecorderBuilder;->copy$default(Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultNoteActionMetricRecorderBuilder;Lcom/amazon/kcp/util/fastmetrics/annotations/NotesActionMetricRecorder;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultNoteActionMetricRecorderBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic deleted()Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$Emitter;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultNoteActionMetricRecorderBuilder;->deleted()Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultNoteActionMetricRecorderBuilder;

    move-result-object v0

    return-object v0
.end method

.method public deleted()Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultNoteActionMetricRecorderBuilder;
    .locals 6

    .line 72
    new-instance v3, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultNoteActionMetricRecorderBuilder$deleted$1;

    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultNoteActionMetricRecorderBuilder;->notesActionMetricRecorder:Lcom/amazon/kcp/util/fastmetrics/annotations/NotesActionMetricRecorder;

    invoke-direct {v3, v0}, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultNoteActionMetricRecorderBuilder$deleted$1;-><init>(Lcom/amazon/kcp/util/fastmetrics/annotations/NotesActionMetricRecorder;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultNoteActionMetricRecorderBuilder;->copy$default(Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultNoteActionMetricRecorderBuilder;Lcom/amazon/kcp/util/fastmetrics/annotations/NotesActionMetricRecorder;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultNoteActionMetricRecorderBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic edited()Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$Emitter;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultNoteActionMetricRecorderBuilder;->edited()Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultNoteActionMetricRecorderBuilder;

    move-result-object v0

    return-object v0
.end method

.method public edited()Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultNoteActionMetricRecorderBuilder;
    .locals 6

    .line 73
    new-instance v3, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultNoteActionMetricRecorderBuilder$edited$1;

    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultNoteActionMetricRecorderBuilder;->notesActionMetricRecorder:Lcom/amazon/kcp/util/fastmetrics/annotations/NotesActionMetricRecorder;

    invoke-direct {v3, v0}, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultNoteActionMetricRecorderBuilder$edited$1;-><init>(Lcom/amazon/kcp/util/fastmetrics/annotations/NotesActionMetricRecorder;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultNoteActionMetricRecorderBuilder;->copy$default(Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultNoteActionMetricRecorderBuilder;Lcom/amazon/kcp/util/fastmetrics/annotations/NotesActionMetricRecorder;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultNoteActionMetricRecorderBuilder;

    move-result-object v0

    return-object v0
.end method

.method public emit()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultNoteActionMetricRecorderBuilder;->toRun:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultNoteActionMetricRecorderBuilder;->annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultNoteActionMetricRecorderBuilder;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultNoteActionMetricRecorderBuilder;

    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultNoteActionMetricRecorderBuilder;->notesActionMetricRecorder:Lcom/amazon/kcp/util/fastmetrics/annotations/NotesActionMetricRecorder;

    iget-object v1, p1, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultNoteActionMetricRecorderBuilder;->notesActionMetricRecorder:Lcom/amazon/kcp/util/fastmetrics/annotations/NotesActionMetricRecorder;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultNoteActionMetricRecorderBuilder;->annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    iget-object v1, p1, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultNoteActionMetricRecorderBuilder;->annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultNoteActionMetricRecorderBuilder;->toRun:Lkotlin/jvm/functions/Function1;

    iget-object p1, p1, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultNoteActionMetricRecorderBuilder;->toRun:Lkotlin/jvm/functions/Function1;

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

    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultNoteActionMetricRecorderBuilder;->notesActionMetricRecorder:Lcom/amazon/kcp/util/fastmetrics/annotations/NotesActionMetricRecorder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultNoteActionMetricRecorderBuilder;->annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultNoteActionMetricRecorderBuilder;->toRun:Lkotlin/jvm/functions/Function1;

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

    const-string v1, "DefaultNoteActionMetricRecorderBuilder(notesActionMetricRecorder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultNoteActionMetricRecorderBuilder;->notesActionMetricRecorder:Lcom/amazon/kcp/util/fastmetrics/annotations/NotesActionMetricRecorder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", annotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultNoteActionMetricRecorderBuilder;->annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", toRun="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultNoteActionMetricRecorderBuilder;->toRun:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
