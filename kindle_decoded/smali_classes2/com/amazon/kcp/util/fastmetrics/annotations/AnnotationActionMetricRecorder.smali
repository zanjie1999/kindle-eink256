.class public interface abstract Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder;
.super Ljava/lang/Object;
.source "AnnotationActionMetricRecorder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$ActionBuilder;,
        Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$Emitter;,
        Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$NoteBuilder;,
        Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$HighlightBuilder;
    }
.end annotation


# virtual methods
.method public abstract highlight(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$HighlightBuilder;
.end method

.method public abstract note(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$NoteBuilder;
.end method
