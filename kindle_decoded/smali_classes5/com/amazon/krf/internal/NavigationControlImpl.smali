.class public Lcom/amazon/krf/internal/NavigationControlImpl;
.super Ljava/lang/Object;
.source "NavigationControlImpl.java"

# interfaces
.implements Lcom/amazon/krf/platform/NavigationControl;


# instance fields
.field private nativeRef:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-wide p1, p0, Lcom/amazon/krf/internal/NavigationControlImpl;->nativeRef:J

    return-void
.end method

.method private native finalizeNative()V
.end method

.method private native nativeCreateTocIteratorFromPosition(Lcom/amazon/krf/platform/Position;I)Lcom/amazon/krf/platform/TreeIterator;
.end method


# virtual methods
.method public createSecondaryTableIterator(I)Lcom/amazon/krf/platform/TreeIterator;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public createTocIterator()Lcom/amazon/krf/platform/TreeIterator;
    .locals 1

    .line 34
    sget-object v0, Lcom/amazon/krf/platform/Position;->invalidPosition:Lcom/amazon/krf/platform/Position;

    invoke-virtual {p0, v0}, Lcom/amazon/krf/internal/NavigationControlImpl;->createTocIteratorFromPosition(Lcom/amazon/krf/platform/Position;)Lcom/amazon/krf/platform/TreeIterator;

    move-result-object v0

    return-object v0
.end method

.method public native createTocIteratorFromPosition(Lcom/amazon/krf/platform/Position;)Lcom/amazon/krf/platform/TreeIterator;
.end method

.method public createTocIteratorFromPosition(Lcom/amazon/krf/platform/Position;Lcom/amazon/krf/platform/ViewSettings$ReadingMode;)Lcom/amazon/krf/platform/TreeIterator;
    .locals 0

    .line 42
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/krf/internal/NavigationControlImpl;->nativeCreateTocIteratorFromPosition(Lcom/amazon/krf/platform/Position;I)Lcom/amazon/krf/platform/TreeIterator;

    move-result-object p1

    return-object p1
.end method

.method protected finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 21
    :try_start_0
    iget-wide v0, p0, Lcom/amazon/krf/internal/NavigationControlImpl;->nativeRef:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 22
    invoke-direct {p0}, Lcom/amazon/krf/internal/NavigationControlImpl;->finalizeNative()V

    .line 23
    iput-wide v2, p0, Lcom/amazon/krf/internal/NavigationControlImpl;->nativeRef:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 27
    throw v0
.end method

.method public getSecondaryTableCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
