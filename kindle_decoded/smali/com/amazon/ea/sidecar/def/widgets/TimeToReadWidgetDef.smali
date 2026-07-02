.class public Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;
.super Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
.source "TimeToReadWidgetDef.java"


# instance fields
.field public final readingPagesData:Lcom/amazon/ea/sidecar/def/data/ReadingPagesData;

.field public final readingTimeData:Lcom/amazon/ea/sidecar/def/data/ReadingTimeData;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/amazon/ea/sidecar/def/data/ReadingTimeData;Lcom/amazon/ea/sidecar/def/data/ReadingPagesData;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 26
    iput-object p5, p0, Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;->readingTimeData:Lcom/amazon/ea/sidecar/def/data/ReadingTimeData;

    .line 27
    iput-object p6, p0, Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;->readingPagesData:Lcom/amazon/ea/sidecar/def/data/ReadingPagesData;

    return-void
.end method
