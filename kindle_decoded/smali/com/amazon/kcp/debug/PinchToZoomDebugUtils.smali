.class public final Lcom/amazon/kcp/debug/PinchToZoomDebugUtils;
.super Ljava/lang/Object;
.source "PinchToZoomDebugUtils.kt"


# static fields
.field private static isPinchToZoomEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    new-instance v0, Lcom/amazon/kcp/debug/PinchToZoomDebugUtils;

    invoke-direct {v0}, Lcom/amazon/kcp/debug/PinchToZoomDebugUtils;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isPinchToZoomEnabled()Z
    .locals 1

    .line 14
    sget-boolean v0, Lcom/amazon/kcp/debug/PinchToZoomDebugUtils;->isPinchToZoomEnabled:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isComicsBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
