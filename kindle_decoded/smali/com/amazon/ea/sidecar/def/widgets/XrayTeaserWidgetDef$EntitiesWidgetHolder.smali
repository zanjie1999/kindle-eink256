.class public final Lcom/amazon/ea/sidecar/def/widgets/XrayTeaserWidgetDef$EntitiesWidgetHolder;
.super Ljava/lang/Object;
.source "XrayTeaserWidgetDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/sidecar/def/widgets/XrayTeaserWidgetDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EntitiesWidgetHolder"
.end annotation


# instance fields
.field public final buttonText:Ljava/lang/String;

.field public final description:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/amazon/ea/sidecar/def/widgets/XrayTeaserWidgetDef$EntitiesWidgetHolder;->description:Ljava/lang/String;

    .line 97
    iput-object p2, p0, Lcom/amazon/ea/sidecar/def/widgets/XrayTeaserWidgetDef$EntitiesWidgetHolder;->buttonText:Ljava/lang/String;

    return-void
.end method
