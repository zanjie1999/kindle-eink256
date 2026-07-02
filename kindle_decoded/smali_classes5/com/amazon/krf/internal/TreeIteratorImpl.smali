.class public Lcom/amazon/krf/internal/TreeIteratorImpl;
.super Ljava/lang/Object;
.source "TreeIteratorImpl.java"

# interfaces
.implements Lcom/amazon/krf/platform/TreeIterator;


# instance fields
.field nativeRef:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-wide p1, p0, Lcom/amazon/krf/internal/TreeIteratorImpl;->nativeRef:J

    return-void
.end method

.method private native finalizeNative()V
.end method


# virtual methods
.method protected finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 19
    :try_start_0
    iget-wide v0, p0, Lcom/amazon/krf/internal/TreeIteratorImpl;->nativeRef:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 20
    invoke-direct {p0}, Lcom/amazon/krf/internal/TreeIteratorImpl;->finalizeNative()V

    .line 21
    iput-wide v2, p0, Lcom/amazon/krf/internal/TreeIteratorImpl;->nativeRef:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 25
    throw v0
.end method

.method public native getChildCount()I
.end method

.method public native getItem()Lcom/amazon/krf/platform/NavigationControlNode;
.end method

.method public native moveToChild(I)Z
.end method

.method public native moveToParent()Z
.end method

.method public native moveToRoot()Z
.end method
