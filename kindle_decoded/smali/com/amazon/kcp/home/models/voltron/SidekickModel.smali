.class public final Lcom/amazon/kcp/home/models/voltron/SidekickModel;
.super Ljava/lang/Object;
.source "SidekickModels.kt"


# instance fields
.field private final campaignContext:Lcom/amazon/kcp/home/models/voltron/CampaignContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kcp/home/models/voltron/CampaignContext<",
            "Lcom/amazon/kcp/home/models/voltron/SidekickCampaign;",
            ">;"
        }
    .end annotation
.end field

.field private final linkParameters:Ljava/lang/String;

.field private final sessionId:Ljava/lang/String;

.field private final sidekickMetadata:Ljava/lang/String;

.field private final templateId:Ljava/lang/String;

.field private final widgetId:Ljava/lang/String;


# virtual methods
.method public final getCampaignContext()Lcom/amazon/kcp/home/models/voltron/CampaignContext;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/kcp/home/models/voltron/CampaignContext<",
            "Lcom/amazon/kcp/home/models/voltron/SidekickCampaign;",
            ">;"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/amazon/kcp/home/models/voltron/SidekickModel;->campaignContext:Lcom/amazon/kcp/home/models/voltron/CampaignContext;

    return-object v0
.end method

.method public final getLinkParameters()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/amazon/kcp/home/models/voltron/SidekickModel;->linkParameters:Ljava/lang/String;

    return-object v0
.end method

.method public final getSessionId()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/amazon/kcp/home/models/voltron/SidekickModel;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSidekickMetadata()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/amazon/kcp/home/models/voltron/SidekickModel;->sidekickMetadata:Ljava/lang/String;

    return-object v0
.end method

.method public final getTemplateId()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/amazon/kcp/home/models/voltron/SidekickModel;->templateId:Ljava/lang/String;

    return-object v0
.end method

.method public final getWidgetId()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/amazon/kcp/home/models/voltron/SidekickModel;->widgetId:Ljava/lang/String;

    return-object v0
.end method
