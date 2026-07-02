.class public Lcom/amazon/ea/sidecar/def/widgets/ShareBookWidgetDef;
.super Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
.source "ShareBookWidgetDef.java"


# instance fields
.field public final buttonText:Ljava/lang/String;

.field public final refTagFeatureIdPartial:Ljava/lang/String;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 22
    iput-object p6, p0, Lcom/amazon/ea/sidecar/def/widgets/ShareBookWidgetDef;->title:Ljava/lang/String;

    .line 23
    iput-object p5, p0, Lcom/amazon/ea/sidecar/def/widgets/ShareBookWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    .line 24
    iput-object p7, p0, Lcom/amazon/ea/sidecar/def/widgets/ShareBookWidgetDef;->buttonText:Ljava/lang/String;

    return-void
.end method
