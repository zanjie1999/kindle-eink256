.class public Lcom/amazon/krf/platform/OrientationLockRequest;
.super Ljava/lang/Object;
.source "OrientationLockRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/krf/platform/OrientationLockRequest$Orientation;
    }
.end annotation


# instance fields
.field private mNativeHandle:J

.field private final mOrientation:Lcom/amazon/krf/platform/OrientationLockRequest$Orientation;


# direct methods
.method constructor <init>(Lcom/amazon/krf/platform/OrientationLockRequest$Orientation;J)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/amazon/krf/platform/OrientationLockRequest;->mOrientation:Lcom/amazon/krf/platform/OrientationLockRequest$Orientation;

    .line 11
    iput-wide p2, p0, Lcom/amazon/krf/platform/OrientationLockRequest;->mNativeHandle:J

    return-void
.end method


# virtual methods
.method public native deleteNativeHandle()V
.end method

.method protected finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 70
    :try_start_0
    iget-wide v0, p0, Lcom/amazon/krf/platform/OrientationLockRequest;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/amazon/krf/platform/OrientationLockRequest;->deleteNativeHandle()V

    .line 72
    iput-wide v2, p0, Lcom/amazon/krf/platform/OrientationLockRequest;->mNativeHandle:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 77
    throw v0
.end method

.method public getOrientation()Lcom/amazon/krf/platform/OrientationLockRequest$Orientation;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/amazon/krf/platform/OrientationLockRequest;->mOrientation:Lcom/amazon/krf/platform/OrientationLockRequest$Orientation;

    return-object v0
.end method

.method public native onComplete()V
.end method

.method public native onFailure(Ljava/lang/String;)V
.end method
