.class public Lcom/amazon/ea/sidecar/def/widgets/XrayTeaserWidgetDef;
.super Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
.source "XrayTeaserWidgetDef.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ea/sidecar/def/widgets/XrayTeaserWidgetDef$EntitiesWidgetHolder;,
        Lcom/amazon/ea/sidecar/def/widgets/XrayTeaserWidgetDef$ImagesWidgetHolder;
    }
.end annotation


# instance fields
.field public final entitiesWidgetHolder:Lcom/amazon/ea/sidecar/def/widgets/XrayTeaserWidgetDef$EntitiesWidgetHolder;

.field public final imagesWidgetHolder:Lcom/amazon/ea/sidecar/def/widgets/XrayTeaserWidgetDef$ImagesWidgetHolder;

.field public final preferredType:[Ljava/lang/String;

.field public final widgetTimeout:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;II)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 40
    iput-object p11, p0, Lcom/amazon/ea/sidecar/def/widgets/XrayTeaserWidgetDef;->preferredType:[Ljava/lang/String;

    .line 41
    iput p13, p0, Lcom/amazon/ea/sidecar/def/widgets/XrayTeaserWidgetDef;->widgetTimeout:I

    .line 43
    new-instance p1, Lcom/amazon/ea/sidecar/def/widgets/XrayTeaserWidgetDef$ImagesWidgetHolder;

    invoke-direct {p1, p6, p7, p10, p12}, Lcom/amazon/ea/sidecar/def/widgets/XrayTeaserWidgetDef$ImagesWidgetHolder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/amazon/ea/sidecar/def/widgets/XrayTeaserWidgetDef;->imagesWidgetHolder:Lcom/amazon/ea/sidecar/def/widgets/XrayTeaserWidgetDef$ImagesWidgetHolder;

    .line 44
    new-instance p1, Lcom/amazon/ea/sidecar/def/widgets/XrayTeaserWidgetDef$EntitiesWidgetHolder;

    invoke-direct {p1, p8, p9}, Lcom/amazon/ea/sidecar/def/widgets/XrayTeaserWidgetDef$EntitiesWidgetHolder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/ea/sidecar/def/widgets/XrayTeaserWidgetDef;->entitiesWidgetHolder:Lcom/amazon/ea/sidecar/def/widgets/XrayTeaserWidgetDef$EntitiesWidgetHolder;

    return-void
.end method
