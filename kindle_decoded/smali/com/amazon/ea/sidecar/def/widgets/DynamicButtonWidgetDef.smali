.class public Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;
.super Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
.source "DynamicButtonWidgetDef.java"


# instance fields
.field public final clickOnlyOnce:Z

.field public final displayIfClicked:Z

.field public final dynamicButtonActionable:Lcom/amazon/ea/sidecar/def/data/DynamicButtonActionable;

.field public final dynamicButtonData:Lcom/amazon/ea/sidecar/def/data/DynamicButtonData;

.field public final featureKey:Ljava/lang/String;

.field public final refTagPartial:Ljava/lang/String;

.field public final widgetTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/amazon/ea/sidecar/def/data/DynamicButtonData;Lcom/amazon/ea/sidecar/def/data/DynamicButtonActionable;ZZLjava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 52
    iput-object p5, p0, Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;->refTagPartial:Ljava/lang/String;

    .line 53
    iput-object p6, p0, Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;->widgetTitle:Ljava/lang/String;

    .line 54
    iput-object p7, p0, Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;->dynamicButtonData:Lcom/amazon/ea/sidecar/def/data/DynamicButtonData;

    .line 55
    iput-object p8, p0, Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;->dynamicButtonActionable:Lcom/amazon/ea/sidecar/def/data/DynamicButtonActionable;

    .line 56
    iput-boolean p9, p0, Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;->clickOnlyOnce:Z

    .line 57
    iput-boolean p10, p0, Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;->displayIfClicked:Z

    .line 58
    iput-object p11, p0, Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;->featureKey:Ljava/lang/String;

    return-void
.end method
