.class public interface abstract Lcom/amazon/kindle/krx/content/ILocalBookData;
.super Ljava/lang/Object;
.source "ILocalBookData.java"


# virtual methods
.method public abstract getFilePath()Ljava/lang/String;
.end method

.method public abstract getFurtherestPositionRead()Lcom/amazon/kindle/krx/reader/IPosition;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getFurthestPositionRead()Lcom/amazon/kindle/krx/reader/IPosition;
.end method

.method public abstract getLastPositionRead()Lcom/amazon/kindle/krx/reader/IPosition;
.end method

.method public abstract isBookRead()Z
.end method
