.class public interface abstract Lcom/audible/pfm/endpoint/IEndpointFactory;
.super Ljava/lang/Object;
.source "IEndpointFactory.java"


# virtual methods
.method public abstract getCurrentPfmEndpoints()Lcom/audible/pfm/endpoint/INetworkEndpoints;
.end method

.method public abstract getEndpoints(Ljava/lang/String;)Lcom/audible/pfm/endpoint/INetworkEndpoints;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setDevicePlatformConfig(Lcom/audible/pfm/domain/DevicePlatformConfig;)V
.end method

.method public abstract setUserPfm(Ljava/lang/String;)V
.end method
