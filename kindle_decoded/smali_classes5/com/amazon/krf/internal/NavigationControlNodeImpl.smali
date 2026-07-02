.class public Lcom/amazon/krf/internal/NavigationControlNodeImpl;
.super Ljava/lang/Object;
.source "NavigationControlNodeImpl.java"

# interfaces
.implements Lcom/amazon/krf/platform/NavigationControlNode;


# instance fields
.field nativeRef:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-wide p1, p0, Lcom/amazon/krf/internal/NavigationControlNodeImpl;->nativeRef:J

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

    .line 21
    :try_start_0
    iget-wide v0, p0, Lcom/amazon/krf/internal/NavigationControlNodeImpl;->nativeRef:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 22
    invoke-direct {p0}, Lcom/amazon/krf/internal/NavigationControlNodeImpl;->finalizeNative()V

    .line 23
    iput-wide v2, p0, Lcom/amazon/krf/internal/NavigationControlNodeImpl;->nativeRef:J
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

.method public native getDescription()Ljava/lang/String;
.end method

.method public native getLabel()Ljava/lang/String;
.end method

.method public native getPosition()Lcom/amazon/krf/platform/Position;
.end method

.method public native getTOCPreview()Landroid/graphics/Bitmap;
.end method

.method public native getTitle()Ljava/lang/String;
.end method
