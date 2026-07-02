.class public Lcom/amazon/ea/sidecar/def/widgets/ExpandingTextWidgetDef;
.super Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
.source "ExpandingTextWidgetDef.java"


# instance fields
.field public final action:Ljava/lang/String;

.field public final dynamicTextData:Lcom/amazon/ea/sidecar/def/data/DynamicTextData;

.field public final query:Ljava/lang/String;

.field public final refTagFeatureIdPartial:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/amazon/ea/sidecar/def/data/DynamicTextData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 32
    iput-object p6, p0, Lcom/amazon/ea/sidecar/def/widgets/ExpandingTextWidgetDef;->dynamicTextData:Lcom/amazon/ea/sidecar/def/data/DynamicTextData;

    .line 33
    iput-object p7, p0, Lcom/amazon/ea/sidecar/def/widgets/ExpandingTextWidgetDef;->action:Ljava/lang/String;

    .line 34
    iput-object p8, p0, Lcom/amazon/ea/sidecar/def/widgets/ExpandingTextWidgetDef;->query:Ljava/lang/String;

    .line 35
    iput-object p9, p0, Lcom/amazon/ea/sidecar/def/widgets/ExpandingTextWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    return-void
.end method
