.class public Lcom/amazon/ea/sidecar/def/widgets/MarkAsReadingWidgetDef;
.super Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
.source "MarkAsReadingWidgetDef.java"


# instance fields
.field public final goodreadsShelfData:Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 20
    iput-object p5, p0, Lcom/amazon/ea/sidecar/def/widgets/MarkAsReadingWidgetDef;->goodreadsShelfData:Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;

    return-void
.end method
