.class public interface abstract Lcom/amazon/kcp/home/database/HomeCardData;
.super Ljava/lang/Object;
.source "HomeDatabaseModels.kt"


# virtual methods
.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getLinkParams()Ljava/lang/String;
.end method

.method public abstract getPinned()Z
.end method

.method public abstract getReftag()Ljava/lang/String;
.end method

.method public abstract getRetailSessionId()Ljava/lang/String;
.end method

.method public abstract getSidekickMetadata()Ljava/lang/String;
.end method

.method public abstract getTemplateId()Ljava/lang/String;
.end method

.method public abstract getWeight()I
.end method

.method public abstract getZones()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/home/database/HomeZoneData;",
            ">;"
        }
    .end annotation
.end method
