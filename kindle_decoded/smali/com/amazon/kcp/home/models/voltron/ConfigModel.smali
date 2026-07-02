.class public final Lcom/amazon/kcp/home/models/voltron/ConfigModel;
.super Ljava/lang/Object;
.source "SidekickModels.kt"


# instance fields
.field private final campaignContext:Lcom/amazon/kcp/home/models/voltron/CampaignContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kcp/home/models/voltron/CampaignContext<",
            "Lcom/amazon/kcp/home/models/voltron/ConfigContents;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public final getCampaignContext()Lcom/amazon/kcp/home/models/voltron/CampaignContext;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/kcp/home/models/voltron/CampaignContext<",
            "Lcom/amazon/kcp/home/models/voltron/ConfigContents;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/amazon/kcp/home/models/voltron/ConfigModel;->campaignContext:Lcom/amazon/kcp/home/models/voltron/CampaignContext;

    return-object v0
.end method
