.class public final Lcom/amazon/kcp/util/fastmetrics/annotations/NoOpNoteActionMetricRecorderBuilder;
.super Ljava/lang/Object;
.source "AnnotationActionMetricRecorder.kt"

# interfaces
.implements Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$NoteBuilder;
.implements Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$Emitter;


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/util/fastmetrics/annotations/NoOpNoteActionMetricRecorderBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 109
    new-instance v0, Lcom/amazon/kcp/util/fastmetrics/annotations/NoOpNoteActionMetricRecorderBuilder;

    invoke-direct {v0}, Lcom/amazon/kcp/util/fastmetrics/annotations/NoOpNoteActionMetricRecorderBuilder;-><init>()V

    sput-object v0, Lcom/amazon/kcp/util/fastmetrics/annotations/NoOpNoteActionMetricRecorderBuilder;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/annotations/NoOpNoteActionMetricRecorderBuilder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic created()Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$Emitter;
    .locals 0

    .line 109
    invoke-virtual {p0}, Lcom/amazon/kcp/util/fastmetrics/annotations/NoOpNoteActionMetricRecorderBuilder;->created()Lcom/amazon/kcp/util/fastmetrics/annotations/NoOpNoteActionMetricRecorderBuilder;

    return-object p0
.end method

.method public created()Lcom/amazon/kcp/util/fastmetrics/annotations/NoOpNoteActionMetricRecorderBuilder;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic deleted()Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$Emitter;
    .locals 0

    .line 109
    invoke-virtual {p0}, Lcom/amazon/kcp/util/fastmetrics/annotations/NoOpNoteActionMetricRecorderBuilder;->deleted()Lcom/amazon/kcp/util/fastmetrics/annotations/NoOpNoteActionMetricRecorderBuilder;

    return-object p0
.end method

.method public deleted()Lcom/amazon/kcp/util/fastmetrics/annotations/NoOpNoteActionMetricRecorderBuilder;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic edited()Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$Emitter;
    .locals 0

    .line 109
    invoke-virtual {p0}, Lcom/amazon/kcp/util/fastmetrics/annotations/NoOpNoteActionMetricRecorderBuilder;->edited()Lcom/amazon/kcp/util/fastmetrics/annotations/NoOpNoteActionMetricRecorderBuilder;

    return-object p0
.end method

.method public edited()Lcom/amazon/kcp/util/fastmetrics/annotations/NoOpNoteActionMetricRecorderBuilder;
    .locals 0

    return-object p0
.end method

.method public emit()V
    .locals 0

    return-void
.end method
