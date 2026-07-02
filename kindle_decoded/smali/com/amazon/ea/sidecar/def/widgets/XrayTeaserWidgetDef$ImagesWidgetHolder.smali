.class public final Lcom/amazon/ea/sidecar/def/widgets/XrayTeaserWidgetDef$ImagesWidgetHolder;
.super Ljava/lang/Object;
.source "XrayTeaserWidgetDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/sidecar/def/widgets/XrayTeaserWidgetDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImagesWidgetHolder"
.end annotation


# instance fields
.field public final buttonText:Ljava/lang/String;

.field public final description:Ljava/lang/String;

.field public final displayFormat:Ljava/lang/String;

.field public final imagesThreshold:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/amazon/ea/sidecar/def/widgets/XrayTeaserWidgetDef$ImagesWidgetHolder;->description:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lcom/amazon/ea/sidecar/def/widgets/XrayTeaserWidgetDef$ImagesWidgetHolder;->buttonText:Ljava/lang/String;

    .line 75
    iput-object p3, p0, Lcom/amazon/ea/sidecar/def/widgets/XrayTeaserWidgetDef$ImagesWidgetHolder;->displayFormat:Ljava/lang/String;

    .line 76
    iput p4, p0, Lcom/amazon/ea/sidecar/def/widgets/XrayTeaserWidgetDef$ImagesWidgetHolder;->imagesThreshold:I

    return-void
.end method
