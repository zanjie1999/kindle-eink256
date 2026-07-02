.class final Lcom/amazon/kcp/reader/ImageZoomActivity$ImageZoomState;
.super Ljava/lang/Object;
.source "ImageZoomActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ImageZoomActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ImageZoomState"
.end annotation


# instance fields
.field public final focalPoint:Landroid/graphics/PointF;

.field public final imagePositionId:Ljava/lang/String;

.field public final zoom:F


# direct methods
.method public constructor <init>(Ljava/lang/String;FLandroid/graphics/PointF;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/amazon/kcp/reader/ImageZoomActivity$ImageZoomState;->imagePositionId:Ljava/lang/String;

    .line 50
    iput p2, p0, Lcom/amazon/kcp/reader/ImageZoomActivity$ImageZoomState;->zoom:F

    .line 51
    iput-object p3, p0, Lcom/amazon/kcp/reader/ImageZoomActivity$ImageZoomState;->focalPoint:Landroid/graphics/PointF;

    return-void
.end method
