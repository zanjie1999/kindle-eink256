.class public Lcom/amazon/ea/sidecar/def/widgets/SimpleTextWidgetDef;
.super Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
.source "SimpleTextWidgetDef.java"


# instance fields
.field public final dynamicTextData:Lcom/amazon/ea/sidecar/def/data/DynamicTextData;

.field public final widgetTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/amazon/ea/sidecar/def/data/DynamicTextData;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 23
    iput-object p5, p0, Lcom/amazon/ea/sidecar/def/widgets/SimpleTextWidgetDef;->widgetTitle:Ljava/lang/String;

    .line 24
    iput-object p6, p0, Lcom/amazon/ea/sidecar/def/widgets/SimpleTextWidgetDef;->dynamicTextData:Lcom/amazon/ea/sidecar/def/data/DynamicTextData;

    return-void
.end method
