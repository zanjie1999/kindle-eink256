.class public Lcom/amazon/krf/internal/WordIteratorImpl;
.super Ljava/lang/Object;
.source "WordIteratorImpl.java"

# interfaces
.implements Lcom/amazon/krf/platform/WordIterator;


# instance fields
.field mMode:I

.field mNativePtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 16
    invoke-static {}, Lcom/amazon/krf/internal/WordIteratorImpl;->nativeInit()V

    return-void
.end method

.method constructor <init>(JI)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-wide p1, p0, Lcom/amazon/krf/internal/WordIteratorImpl;->mNativePtr:J

    .line 29
    iput p3, p0, Lcom/amazon/krf/internal/WordIteratorImpl;->mMode:I

    return-void
.end method

.method private static native deleteWordIterator(J)V
.end method

.method private static native nativeInit()V
.end method

.method private native nextChecked(IC)Lcom/amazon/krf/platform/WordRange;
.end method

.method private native previousChecked(IC)Lcom/amazon/krf/platform/WordRange;
.end method


# virtual methods
.method public dispose()V
    .locals 5

    .line 78
    iget-wide v0, p0, Lcom/amazon/krf/internal/WordIteratorImpl;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 79
    invoke-static {v0, v1}, Lcom/amazon/krf/internal/WordIteratorImpl;->deleteWordIterator(J)V

    .line 80
    iput-wide v2, p0, Lcom/amazon/krf/internal/WordIteratorImpl;->mNativePtr:J

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 92
    invoke-virtual {p0}, Lcom/amazon/krf/internal/WordIteratorImpl;->dispose()V

    .line 93
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public native first()V
.end method

.method public native getCurrentPosition()Lcom/amazon/krf/platform/Position;
.end method

.method public getMode()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/amazon/krf/internal/WordIteratorImpl;->mMode:I

    return v0
.end method

.method public native goToPosition(Lcom/amazon/krf/platform/Position;)Z
.end method

.method public native hasNext()Z
.end method

.method public native hasPrevious()Z
.end method

.method public native last()V
.end method

.method public next()Lcom/amazon/krf/platform/WordRange;
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x20

    .line 43
    invoke-virtual {p0, v0, v1}, Lcom/amazon/krf/internal/WordIteratorImpl;->next(IC)Lcom/amazon/krf/platform/WordRange;

    move-result-object v0

    return-object v0
.end method

.method public next(IC)Lcom/amazon/krf/platform/WordRange;
    .locals 0

    if-lez p1, :cond_0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/amazon/krf/internal/WordIteratorImpl;->nextChecked(IC)Lcom/amazon/krf/platform/WordRange;

    move-result-object p1

    return-object p1

    .line 49
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "count must be positive"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/amazon/krf/internal/WordIteratorImpl;->next()Lcom/amazon/krf/platform/WordRange;

    move-result-object v0

    return-object v0
.end method

.method public previous()Lcom/amazon/krf/platform/WordRange;
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x20

    .line 59
    invoke-virtual {p0, v0, v1}, Lcom/amazon/krf/internal/WordIteratorImpl;->previous(IC)Lcom/amazon/krf/platform/WordRange;

    move-result-object v0

    return-object v0
.end method

.method public previous(IC)Lcom/amazon/krf/platform/WordRange;
    .locals 0

    if-lez p1, :cond_0

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/amazon/krf/internal/WordIteratorImpl;->previousChecked(IC)Lcom/amazon/krf/platform/WordRange;

    move-result-object p1

    return-object p1

    .line 65
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "count must be positive"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public remove()V
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "WordIterator does not implement remove"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public native resetToBegin()Z
.end method

.method public native resetToEnd()Z
.end method

.method public native textInRange(Lcom/amazon/krf/platform/PositionRange;C)Lcom/amazon/krf/platform/WordRange;
.end method
