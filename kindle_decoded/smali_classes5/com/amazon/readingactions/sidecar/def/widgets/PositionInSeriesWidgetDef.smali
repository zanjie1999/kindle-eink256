.class public Lcom/amazon/readingactions/sidecar/def/widgets/PositionInSeriesWidgetDef;
.super Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
.source "PositionInSeriesWidgetDef.java"


# instance fields
.field public final bseText:Ljava/lang/String;

.field public final seriesPositionData:Lcom/amazon/ea/sidecar/def/data/SeriesPositionData;

.field public final text:Ljava/lang/String;

.field public final widgetTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/amazon/ea/sidecar/def/data/SeriesPositionData;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 33
    iput-object p5, p0, Lcom/amazon/readingactions/sidecar/def/widgets/PositionInSeriesWidgetDef;->widgetTitle:Ljava/lang/String;

    .line 34
    iput-object p6, p0, Lcom/amazon/readingactions/sidecar/def/widgets/PositionInSeriesWidgetDef;->seriesPositionData:Lcom/amazon/ea/sidecar/def/data/SeriesPositionData;

    .line 35
    iput-object p7, p0, Lcom/amazon/readingactions/sidecar/def/widgets/PositionInSeriesWidgetDef;->text:Ljava/lang/String;

    .line 36
    iput-object p8, p0, Lcom/amazon/readingactions/sidecar/def/widgets/PositionInSeriesWidgetDef;->bseText:Ljava/lang/String;

    return-void
.end method
