.class public interface abstract Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker$ILocationInfoCallback;
.super Ljava/lang/Object;
.source "CustomReaderLocationSeeker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ILocationInfoCallback"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract getLocationText()Ljava/lang/String;
.end method

.method public abstract isLocationInfoAvailable()Z
.end method
