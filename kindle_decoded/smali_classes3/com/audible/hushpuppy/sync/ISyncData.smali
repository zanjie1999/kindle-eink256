.class public interface abstract Lcom/audible/hushpuppy/sync/ISyncData;
.super Ljava/lang/Object;
.source "ISyncData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/hushpuppy/sync/ISyncData$Header;
    }
.end annotation


# virtual methods
.method public abstract getAsinId()Ljava/lang/String;
.end method

.method public abstract getEBookPosFromAudiobookPos(J)J
.end method

.method public abstract getHiAudiobookPos()J
.end method

.method public abstract getHiEbookPos()J
.end method

.method public abstract getLoAudiobookPos()J
.end method

.method public abstract getLoEbookPos()J
.end method

.method public abstract getMaxAudiobookPosFromEBookRange(JJ)J
.end method

.method public abstract getMinAudiobookPosFromEBookRange(JJ)J
.end method

.method public abstract getSource()Ljava/lang/String;
.end method

.method public abstract init()V
.end method
