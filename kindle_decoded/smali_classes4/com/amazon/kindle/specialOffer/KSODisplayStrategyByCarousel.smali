.class public Lcom/amazon/kindle/specialOffer/KSODisplayStrategyByCarousel;
.super Ljava/lang/Object;
.source "KSODisplayStrategyByCarousel.java"

# interfaces
.implements Lcom/amazon/kindle/specialOffer/IKSODisplayStrategy;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-class v0, Lcom/amazon/kindle/specialOffer/KSODisplayStrategyByCarousel;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/specialOffer/KSODisplayStrategyByCarousel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDisplayingKSOWidgetData(Lcom/amazon/kindle/specialOffer/KSOContentDAO;)Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;
    .locals 4

    .line 17
    invoke-virtual {p1}, Lcom/amazon/kindle/specialOffer/KSOContentDAO;->getDisplayingCampaignByCarousel()Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 19
    invoke-virtual {p1}, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->getCampaignId()Ljava/lang/String;

    move-result-object v0

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "*******"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 21
    sget-object v1, Lcom/amazon/kindle/specialOffer/KSODisplayStrategyByCarousel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method
