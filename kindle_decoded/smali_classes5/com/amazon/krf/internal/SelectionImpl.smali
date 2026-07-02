.class final Lcom/amazon/krf/internal/SelectionImpl;
.super Ljava/lang/Object;
.source "SelectionImpl.java"

# interfaces
.implements Lcom/amazon/krf/platform/Selection;


# static fields
.field public static final HIGHLIGHT_BOUNDING_BOX:I = 0x1

.field public static final LINE_BOUNDING_BOX:I = 0x3

.field public static final OVAL_BOUNDING_BOX:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SelectionImpl"


# instance fields
.field private mNativeHandle:J


# direct methods
.method protected constructor <init>(J)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-wide p1, p0, Lcom/amazon/krf/internal/SelectionImpl;->mNativeHandle:J

    return-void
.end method

.method private checkState()V
    .locals 5

    .line 41
    iget-wide v0, p0, Lcom/amazon/krf/internal/SelectionImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-void

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Object is not accessible or has been released"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private native nativeClearSelection(J)Z
.end method

.method private native nativeGetSelectionState(J)Lcom/amazon/krf/platform/SelectionState;
.end method

.method private native nativeHitTestPoint(JII)Lcom/amazon/krf/platform/PositionRange;
.end method

.method private native nativePositionRangeForBoundingBox(JIIIII)Lcom/amazon/krf/platform/PositionRange;
.end method

.method private native nativeSetSelectionChangeListener(JLcom/amazon/krf/platform/SelectionChangeListener;)V
.end method

.method private native nativeSetSelectionRange(JLjava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/amazon/krf/platform/PositionRange;",
            ">;)Z"
        }
    .end annotation
.end method

.method private native nativeSetSelectionRanges(JLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/amazon/krf/platform/PositionRange;",
            ">;)V"
        }
    .end annotation
.end method

.method private native nativeSetSelectionStyle(JIII)V
.end method

.method private native nativeSetUnderlineSelectionStyle(JIIIF)V
.end method


# virtual methods
.method public clearSelection()Z
    .locals 2

    .line 109
    invoke-direct {p0}, Lcom/amazon/krf/internal/SelectionImpl;->checkState()V

    .line 110
    iget-wide v0, p0, Lcom/amazon/krf/internal/SelectionImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/krf/internal/SelectionImpl;->nativeClearSelection(J)Z

    move-result v0

    return v0
.end method

.method public finalize()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 57
    :try_start_0
    iget-wide v0, p0, Lcom/amazon/krf/internal/SelectionImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const-string v0, "SelectionImpl"

    const-string v1, "Native resources for Selection were not released before finalize().  You should have called release().  %x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 58
    iget-wide v4, p0, Lcom/amazon/krf/internal/SelectionImpl;->mNativeHandle:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/krf/internal/SelectionImpl;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 63
    throw v0
.end method

.method public getSelectionState()Lcom/amazon/krf/platform/SelectionState;
    .locals 2

    .line 103
    invoke-direct {p0}, Lcom/amazon/krf/internal/SelectionImpl;->checkState()V

    .line 104
    iget-wide v0, p0, Lcom/amazon/krf/internal/SelectionImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/krf/internal/SelectionImpl;->nativeGetSelectionState(J)Lcom/amazon/krf/platform/SelectionState;

    move-result-object v0

    return-object v0
.end method

.method hitTestPoint(JII)Lcom/amazon/krf/platform/PositionRange;
    .locals 0

    .line 128
    invoke-direct {p0}, Lcom/amazon/krf/internal/SelectionImpl;->checkState()V

    .line 129
    iget-wide p1, p0, Lcom/amazon/krf/internal/SelectionImpl;->mNativeHandle:J

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/krf/internal/SelectionImpl;->nativeHitTestPoint(JII)Lcom/amazon/krf/platform/PositionRange;

    move-result-object p1

    return-object p1
.end method

.method native nativeRelease(J)V
.end method

.method positionRangeForBoundingBox(JILandroid/graphics/Rect;)Lcom/amazon/krf/platform/PositionRange;
    .locals 8

    .line 120
    invoke-direct {p0}, Lcom/amazon/krf/internal/SelectionImpl;->checkState()V

    if-eqz p4, :cond_0

    .line 122
    iget-wide v1, p0, Lcom/amazon/krf/internal/SelectionImpl;->mNativeHandle:J

    iget v4, p4, Landroid/graphics/Rect;->left:I

    iget v5, p4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v7

    move-object v0, p0

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/amazon/krf/internal/SelectionImpl;->nativePositionRangeForBoundingBox(JIIIII)Lcom/amazon/krf/platform/PositionRange;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public release()V
    .locals 5

    .line 47
    iget-wide v0, p0, Lcom/amazon/krf/internal/SelectionImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 48
    invoke-virtual {p0, v0, v1}, Lcom/amazon/krf/internal/SelectionImpl;->nativeRelease(J)V

    .line 49
    iput-wide v2, p0, Lcom/amazon/krf/internal/SelectionImpl;->mNativeHandle:J

    :cond_0
    return-void
.end method

.method public setSelectionChangeListener(Lcom/amazon/krf/platform/SelectionChangeListener;)V
    .locals 2

    .line 115
    invoke-direct {p0}, Lcom/amazon/krf/internal/SelectionImpl;->checkState()V

    .line 116
    iget-wide v0, p0, Lcom/amazon/krf/internal/SelectionImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/krf/internal/SelectionImpl;->nativeSetSelectionChangeListener(JLcom/amazon/krf/platform/SelectionChangeListener;)V

    return-void
.end method

.method public setSelectionRange(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/krf/platform/PositionRange;",
            ">;)Z"
        }
    .end annotation

    .line 93
    invoke-direct {p0}, Lcom/amazon/krf/internal/SelectionImpl;->checkState()V

    if-eqz p1, :cond_0

    .line 95
    iget-wide v0, p0, Lcom/amazon/krf/internal/SelectionImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/krf/internal/SelectionImpl;->nativeSetSelectionRange(JLjava/util/List;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setSelectionRanges(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/krf/platform/PositionRange;",
            ">;)V"
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Lcom/amazon/krf/internal/SelectionImpl;->checkState()V

    if-eqz p1, :cond_0

    .line 87
    iget-wide v0, p0, Lcom/amazon/krf/internal/SelectionImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/krf/internal/SelectionImpl;->nativeSetSelectionRanges(JLjava/util/List;)V

    :cond_0
    return-void
.end method

.method public setSelectionStyle(Lcom/amazon/krf/platform/SelectionState$HandleStyle;Lcom/amazon/krf/platform/SelectionState$LoupeStyle;I)V
    .locals 6

    .line 68
    invoke-direct {p0}, Lcom/amazon/krf/internal/SelectionImpl;->checkState()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 70
    iget-wide v1, p0, Lcom/amazon/krf/internal/SelectionImpl;->mNativeHandle:J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    move-object v0, p0

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/amazon/krf/internal/SelectionImpl;->nativeSetSelectionStyle(JIII)V

    :cond_0
    return-void
.end method

.method public setUnderlineSelectionStyle(Lcom/amazon/krf/platform/SelectionState$HandleStyle;Lcom/amazon/krf/platform/SelectionState$LoupeStyle;IF)V
    .locals 7

    .line 76
    invoke-direct {p0}, Lcom/amazon/krf/internal/SelectionImpl;->checkState()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 78
    iget-wide v1, p0, Lcom/amazon/krf/internal/SelectionImpl;->mNativeHandle:J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    move-object v0, p0

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/amazon/krf/internal/SelectionImpl;->nativeSetUnderlineSelectionStyle(JIIIF)V

    :cond_0
    return-void
.end method
