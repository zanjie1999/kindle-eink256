.class public interface abstract Lcom/amazon/weblab/mobile/settings/IMobileWeblabRuntimeConfiguration;
.super Ljava/lang/Object;
.source "IMobileWeblabRuntimeConfiguration.java"


# virtual methods
.method public abstract getCachePolicy()Lcom/amazon/weblab/mobile/settings/MobileWeblabCachePolicyType;
.end method

.method public abstract getDirectory()Ljava/lang/String;
.end method

.method public abstract getEndpoint()Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;
.end method

.method public abstract getMaxDegreeOfParallelism()I
.end method

.method public abstract getNetworkRetries()I
.end method

.method public abstract getTtl()Lcom/amazon/weblab/mobile/settings/Interval;
.end method

.method public abstract isCleanUpAtInitEnabled()Z
.end method

.method public abstract isUpdateAtInitEnabled()Z
.end method
