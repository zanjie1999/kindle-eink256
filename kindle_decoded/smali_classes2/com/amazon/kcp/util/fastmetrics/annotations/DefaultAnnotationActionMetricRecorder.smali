.class public final Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultAnnotationActionMetricRecorder;
.super Ljava/lang/Object;
.source "AnnotationActionMetricRecorder.kt"

# interfaces
.implements Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultAnnotationActionMetricRecorder$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultAnnotationActionMetricRecorder$Companion;


# instance fields
.field private final highlightActionMetricRecorder:Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorder;

.field private final notesActionMetricRecorder:Lcom/amazon/kcp/util/fastmetrics/annotations/NotesActionMetricRecorder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultAnnotationActionMetricRecorder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultAnnotationActionMetricRecorder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultAnnotationActionMetricRecorder;->Companion:Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultAnnotationActionMetricRecorder$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/util/fastmetrics/annotations/NotesActionMetricRecorder;Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorder;)V
    .locals 1

    const-string v0, "notesActionMetricRecorder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "highlightActionMetricRecorder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultAnnotationActionMetricRecorder;->notesActionMetricRecorder:Lcom/amazon/kcp/util/fastmetrics/annotations/NotesActionMetricRecorder;

    iput-object p2, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultAnnotationActionMetricRecorder;->highlightActionMetricRecorder:Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorder;

    return-void
.end method

.method public static final create(Lcom/amazon/kcp/application/UserSettingsController;)Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultAnnotationActionMetricRecorder;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultAnnotationActionMetricRecorder;->Companion:Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultAnnotationActionMetricRecorder$Companion;

    invoke-virtual {v0, p0}, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultAnnotationActionMetricRecorder$Companion;->create(Lcom/amazon/kcp/application/UserSettingsController;)Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultAnnotationActionMetricRecorder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public highlight(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$HighlightBuilder;
    .locals 3

    if-nez p1, :cond_0

    .line 61
    sget-object p1, Lcom/amazon/kcp/util/fastmetrics/annotations/NoOpHighlightActionMetricRecorderBuilder;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/annotations/NoOpHighlightActionMetricRecorderBuilder;

    goto :goto_0

    .line 63
    :cond_0
    new-instance v0, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultHighlightActionMetricRecorderBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultAnnotationActionMetricRecorder;->highlightActionMetricRecorder:Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorder;

    sget-object v2, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultAnnotationActionMetricRecorder$highlight$1;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultAnnotationActionMetricRecorder$highlight$1;

    invoke-direct {v0, v1, p1, v2}, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultHighlightActionMetricRecorderBuilder;-><init>(Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorder;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lkotlin/jvm/functions/Function2;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public note(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$NoteBuilder;
    .locals 3

    if-nez p1, :cond_0

    .line 54
    sget-object p1, Lcom/amazon/kcp/util/fastmetrics/annotations/NoOpNoteActionMetricRecorderBuilder;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/annotations/NoOpNoteActionMetricRecorderBuilder;

    goto :goto_0

    .line 56
    :cond_0
    new-instance v0, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultNoteActionMetricRecorderBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultAnnotationActionMetricRecorder;->notesActionMetricRecorder:Lcom/amazon/kcp/util/fastmetrics/annotations/NotesActionMetricRecorder;

    sget-object v2, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultAnnotationActionMetricRecorder$note$1;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultAnnotationActionMetricRecorder$note$1;

    invoke-direct {v0, v1, p1, v2}, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultNoteActionMetricRecorderBuilder;-><init>(Lcom/amazon/kcp/util/fastmetrics/annotations/NotesActionMetricRecorder;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lkotlin/jvm/functions/Function1;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
