.class public interface abstract Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;
.super Ljava/lang/Object;
.source "IAnnotationData.java"


# virtual methods
.method public abstract clone()Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;
.end method

.method public abstract getAction()I
.end method

.method public abstract getBegin()Lcom/amazon/kindle/krx/reader/IPosition;
.end method

.method public abstract getEnd()Lcom/amazon/kindle/krx/reader/IPosition;
.end method

.method public abstract getLocation()I
.end method

.method public abstract getMetadata()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPos()Lcom/amazon/kindle/krx/reader/IPosition;
.end method

.method public abstract getState()[B
.end method

.method public abstract getTime()J
.end method

.method public abstract getType()I
.end method

.method public abstract getUserText()Ljava/lang/String;
.end method
