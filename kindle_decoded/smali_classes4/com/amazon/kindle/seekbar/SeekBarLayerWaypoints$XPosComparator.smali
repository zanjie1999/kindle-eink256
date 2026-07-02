.class Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$XPosComparator;
.super Ljava/lang/Object;
.source "SeekBarLayerWaypoints.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "XPosComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$Label;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$1;)V
    .locals 0

    .line 160
    invoke-direct {p0}, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$XPosComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$Label;Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$Label;)I
    .locals 0

    .line 163
    iget p1, p1, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$Label;->x:F

    iget p2, p2, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$Label;->x:F

    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 160
    check-cast p1, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$Label;

    check-cast p2, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$Label;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$XPosComparator;->compare(Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$Label;Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$Label;)I

    move-result p1

    return p1
.end method
