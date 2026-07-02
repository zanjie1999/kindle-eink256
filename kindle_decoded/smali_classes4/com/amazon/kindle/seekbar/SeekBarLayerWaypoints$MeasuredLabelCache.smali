.class Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$MeasuredLabelCache;
.super Ljava/lang/Object;
.source "SeekBarLayerWaypoints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MeasuredLabelCache"
.end annotation


# instance fields
.field aboveSeekbar:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$Label;",
            ">;"
        }
    .end annotation
.end field

.field belowSeekbar:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$Label;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$1;)V
    .locals 0

    .line 152
    invoke-direct {p0}, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$MeasuredLabelCache;-><init>()V

    return-void
.end method
