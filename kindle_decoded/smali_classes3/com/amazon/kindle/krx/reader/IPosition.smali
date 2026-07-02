.class public interface abstract Lcom/amazon/kindle/krx/reader/IPosition;
.super Ljava/lang/Object;
.source "IPosition.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/amazon/kindle/krx/reader/IPosition;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getIntPosition()I
.end method

.method public abstract getLongPosition()Ljava/lang/String;
.end method

.method public abstract getPercentage(Lcom/amazon/kindle/krx/reader/IPosition;)D
.end method

.method public abstract isAfter(Lcom/amazon/kindle/krx/reader/IPosition;)Z
.end method

.method public abstract isBefore(Lcom/amazon/kindle/krx/reader/IPosition;)Z
.end method

.method public abstract isEqual(Lcom/amazon/kindle/krx/reader/IPosition;)Z
.end method

.method public abstract toSerializableString()Ljava/lang/String;
.end method

.method public abstract toString()Ljava/lang/String;
.end method
