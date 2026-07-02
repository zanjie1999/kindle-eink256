.class public interface abstract Lcom/audible/pfm/endpoint/INetworkEndpoints;
.super Ljava/lang/Object;
.source "INetworkEndpoints.java"


# virtual methods
.method public abstract getBuyDataPath()Ljava/net/URL;
.end method

.method public abstract getCompanionMappingAsinPairEndpoint()Ljava/net/URL;
.end method

.method public abstract getCompanionMappingDataPath(J)Ljava/net/URL;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getCompanionMappingPagingEndpoint()Ljava/net/URL;
.end method

.method public abstract getCustomerStatusEndpoint()Ljava/net/URL;
.end method

.method public abstract getPriceDataPath(Lcom/audible/mobile/domain/Asin;)Ljava/net/URL;
.end method

.method public abstract getStatsEndpoint()Ljava/net/URL;
.end method

.method public abstract getSyncFileAcrEndpoint()Ljava/net/URL;
.end method
