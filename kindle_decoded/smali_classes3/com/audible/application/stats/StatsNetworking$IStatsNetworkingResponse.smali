.class public interface abstract Lcom/audible/application/stats/StatsNetworking$IStatsNetworkingResponse;
.super Ljava/lang/Object;
.source "StatsNetworking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/application/stats/StatsNetworking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IStatsNetworkingResponse"
.end annotation


# virtual methods
.method public abstract getErrorStatsEvents()[Lcom/audible/mobile/stats/domain/ListeningStatsEvent;
.end method

.method public abstract getStatsPostedTimestamp()Ljava/lang/String;
.end method

.method public abstract isClientError()Z
.end method

.method public abstract isError()Z
.end method
