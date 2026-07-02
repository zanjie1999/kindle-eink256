.class public final Lcom/amazon/kcp/home/models/voltron/CampaignContext;
.super Ljava/lang/Object;
.source "VoltronModels.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final campaignId:Ljava/lang/String;

.field private final contents:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final endTime:Ljava/lang/String;

.field private final startTime:Ljava/lang/String;


# virtual methods
.method public final getCampaignId()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/amazon/kcp/home/models/voltron/CampaignContext;->campaignId:Ljava/lang/String;

    return-object v0
.end method

.method public final getContents()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/amazon/kcp/home/models/voltron/CampaignContext;->contents:Ljava/lang/Object;

    return-object v0
.end method
