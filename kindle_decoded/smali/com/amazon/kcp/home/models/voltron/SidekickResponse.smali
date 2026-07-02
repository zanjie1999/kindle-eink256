.class public final Lcom/amazon/kcp/home/models/voltron/SidekickResponse;
.super Lcom/amazon/kcp/home/models/voltron/VoltronResponse;
.source "SidekickModels.kt"

# interfaces
.implements Lcom/amazon/kcp/home/database/HomeFeedData;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kcp/home/models/voltron/VoltronResponse<",
        "Lcom/amazon/kcp/home/models/voltron/MainWidget;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/amazon/kcp/home/database/HomeFeedData;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSidekickModels.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SidekickModels.kt\ncom/amazon/kcp/home/models/voltron/SidekickResponse\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,589:1\n1819#2:590\n1147#2,2:591\n1221#2,4:593\n1820#2:597\n*E\n*S KotlinDebug\n*F\n+ 1 SidekickModels.kt\ncom/amazon/kcp/home/models/voltron/SidekickResponse\n*L\n43#1:590\n44#1,2:591\n44#1,4:593\n43#1:597\n*E\n"
.end annotation


# instance fields
.field private final timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Lcom/amazon/kcp/home/models/voltron/VoltronResponse;-><init>()V

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kcp/home/models/voltron/SidekickResponse;->timestamp:J

    return-void
.end method


# virtual methods
.method public getCards()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/home/models/voltron/SidekickCard;",
            ">;"
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Lcom/amazon/kcp/home/models/voltron/VoltronResponse;->getLayout()Lcom/amazon/kcp/home/models/voltron/LayoutBlock;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/home/models/voltron/LayoutBlock;->getContents()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/home/models/voltron/MainWidget;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/home/models/voltron/MainWidget;->getWidgets()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getExpiryTime()J
    .locals 6

    .line 35
    invoke-virtual {p0}, Lcom/amazon/kcp/home/models/voltron/VoltronResponse;->getLayout()Lcom/amazon/kcp/home/models/voltron/LayoutBlock;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/home/models/voltron/LayoutBlock;->getContents()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/home/models/voltron/MainWidget;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/home/models/voltron/MainWidget;->getConfig()Lcom/amazon/kcp/home/models/voltron/ConfigWidget;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/home/models/voltron/ConfigWidget;->getModel()Lcom/amazon/kcp/home/models/voltron/ConfigModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/home/models/voltron/ConfigModel;->getCampaignContext()Lcom/amazon/kcp/home/models/voltron/CampaignContext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/home/models/voltron/CampaignContext;->getContents()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/home/models/voltron/ConfigContents;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/home/models/voltron/ConfigContents;->getResponseTtl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/amazon/kcp/home/models/voltron/SidekickResponse;->getTimestamp()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/home/models/voltron/SidekickResponse;->getTimestamp()J

    move-result-wide v0

    invoke-static {}, Lcom/amazon/kcp/home/models/voltron/SidekickModelsKt;->access$getDEFAULT_TTL$p()J

    move-result-wide v2

    add-long v1, v0, v2

    :goto_0
    return-wide v1
.end method

.method public getTimestamp()J
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/amazon/kcp/home/models/voltron/SidekickResponse;->timestamp:J

    return-wide v0
.end method
