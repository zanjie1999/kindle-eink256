.class public interface abstract Lcom/amazon/kcp/home/database/HomeZoneData;
.super Ljava/lang/Object;
.source "HomeDatabaseModels.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/home/database/HomeZoneData$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract asin()Ljava/lang/String;
.end method

.method public abstract getActions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/home/database/HomeActionData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract toHomeZone()Lcom/amazon/kindle/home/model/HomeZone;
.end method
