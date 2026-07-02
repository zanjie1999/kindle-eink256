.class public Lcom/amazon/ea/sidecar/def/data/SeriesPositionData;
.super Ljava/lang/Object;
.source "SeriesPositionData.java"


# instance fields
.field public final positionInSeries:I

.field public final seriesName:Ljava/lang/String;

.field public final totalInSeries:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/amazon/ea/sidecar/def/data/SeriesPositionData;->positionInSeries:I

    .line 26
    iput p2, p0, Lcom/amazon/ea/sidecar/def/data/SeriesPositionData;->totalInSeries:I

    .line 27
    iput-object p3, p0, Lcom/amazon/ea/sidecar/def/data/SeriesPositionData;->seriesName:Ljava/lang/String;

    return-void
.end method
