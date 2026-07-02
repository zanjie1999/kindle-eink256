.class public final Lcom/amazon/kcp/home/models/voltron/SidekickCard;
.super Ljava/lang/Object;
.source "SidekickModels.kt"

# interfaces
.implements Lcom/amazon/kcp/home/database/HomeCardData;


# instance fields
.field private final model:Lcom/amazon/kcp/home/models/voltron/SidekickModel;

.field private final zones:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/home/models/voltron/SidekickZone;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/amazon/kcp/home/models/voltron/SidekickModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kcp/home/models/voltron/SidekickZone;",
            ">;",
            "Lcom/amazon/kcp/home/models/voltron/SidekickModel;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "zones"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "model"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/models/voltron/SidekickCard;->zones:Ljava/util/List;

    iput-object p2, p0, Lcom/amazon/kcp/home/models/voltron/SidekickCard;->model:Lcom/amazon/kcp/home/models/voltron/SidekickModel;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/amazon/kcp/home/models/voltron/SidekickCard;->model:Lcom/amazon/kcp/home/models/voltron/SidekickModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/models/voltron/SidekickModel;->getWidgetId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/home/models/voltron/SidekickCard;->model:Lcom/amazon/kcp/home/models/voltron/SidekickModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/models/voltron/SidekickModel;->getCampaignContext()Lcom/amazon/kcp/home/models/voltron/CampaignContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/home/models/voltron/CampaignContext;->getCampaignId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getLinkParams()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/amazon/kcp/home/models/voltron/SidekickCard;->model:Lcom/amazon/kcp/home/models/voltron/SidekickModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/models/voltron/SidekickModel;->getLinkParameters()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getPinned()Z
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/amazon/kcp/home/models/voltron/SidekickCard;->model:Lcom/amazon/kcp/home/models/voltron/SidekickModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/models/voltron/SidekickModel;->getCampaignContext()Lcom/amazon/kcp/home/models/voltron/CampaignContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/home/models/voltron/CampaignContext;->getContents()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/home/models/voltron/SidekickCampaign;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/models/voltron/SidekickCampaign;->getPinned()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getReftag()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/amazon/kcp/home/models/voltron/SidekickCard;->model:Lcom/amazon/kcp/home/models/voltron/SidekickModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/models/voltron/SidekickModel;->getCampaignContext()Lcom/amazon/kcp/home/models/voltron/CampaignContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/home/models/voltron/CampaignContext;->getContents()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/home/models/voltron/SidekickCampaign;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/models/voltron/SidekickCampaign;->getReftag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRetailSessionId()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/amazon/kcp/home/models/voltron/SidekickCard;->model:Lcom/amazon/kcp/home/models/voltron/SidekickModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/models/voltron/SidekickModel;->getSessionId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getSidekickMetadata()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/amazon/kcp/home/models/voltron/SidekickCard;->model:Lcom/amazon/kcp/home/models/voltron/SidekickModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/models/voltron/SidekickModel;->getSidekickMetadata()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getTemplateId()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/amazon/kcp/home/models/voltron/SidekickCard;->model:Lcom/amazon/kcp/home/models/voltron/SidekickModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/models/voltron/SidekickModel;->getTemplateId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWeight()I
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/amazon/kcp/home/models/voltron/SidekickCard;->model:Lcom/amazon/kcp/home/models/voltron/SidekickModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/models/voltron/SidekickModel;->getCampaignContext()Lcom/amazon/kcp/home/models/voltron/CampaignContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/home/models/voltron/CampaignContext;->getContents()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/home/models/voltron/SidekickCampaign;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/models/voltron/SidekickCampaign;->getWeight()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getZones()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/home/models/voltron/SidekickZone;",
            ">;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/amazon/kcp/home/models/voltron/SidekickCard;->zones:Ljava/util/List;

    return-object v0
.end method
