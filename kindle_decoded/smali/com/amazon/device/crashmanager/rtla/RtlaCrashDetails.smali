.class public interface abstract Lcom/amazon/device/crashmanager/rtla/RtlaCrashDetails;
.super Ljava/lang/Object;
.source "RtlaCrashDetails.java"


# virtual methods
.method public abstract getActiveWebLabs()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPageType()Ljava/lang/String;
.end method

.method public abstract getSessionId()Ljava/lang/String;
.end method

.method public abstract getSubPageType()Ljava/lang/String;
.end method

.method public abstract getUserAgent()Ljava/lang/String;
.end method
