.class public final Lcom/audible/hushpuppy/sync/SyncDataUtils;
.super Ljava/lang/Object;
.source "SyncDataUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;
    }
.end annotation


# direct methods
.method public static getEBookPositionFromAudioPosition(Lcom/audible/hushpuppy/sync/ISyncData;II)I
    .locals 0

    if-eqz p0, :cond_1

    if-lez p1, :cond_0

    if-ne p1, p2, :cond_0

    .line 67
    invoke-static {p0, p2}, Lcom/audible/hushpuppy/sync/SyncDataUtils;->getMaxEBookPositionWithSyncedAudio(Lcom/audible/hushpuppy/sync/ISyncData;I)I

    move-result p0

    return p0

    :cond_0
    int-to-long p1, p1

    .line 69
    invoke-interface {p0, p1, p2}, Lcom/audible/hushpuppy/sync/ISyncData;->getEBookPosFromAudiobookPos(J)J

    move-result-wide p0

    long-to-int p1, p0

    return p1

    .line 63
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "syncData is null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getMaxAudiobookPosFromEBookRange(Lcom/audible/hushpuppy/sync/ISyncData;II)I
    .locals 2

    if-eqz p0, :cond_0

    int-to-long v0, p1

    int-to-long p1, p2

    .line 151
    invoke-interface {p0, v0, v1, p1, p2}, Lcom/audible/hushpuppy/sync/ISyncData;->getMaxAudiobookPosFromEBookRange(JJ)J

    move-result-wide p0

    long-to-int p1, p0

    return p1

    .line 149
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "syncData is null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getMaxEBookPositionWithSyncedAudio(Lcom/audible/hushpuppy/sync/ISyncData;I)I
    .locals 4

    if-eqz p0, :cond_1

    .line 36
    invoke-interface {p0}, Lcom/audible/hushpuppy/sync/ISyncData;->getHiEbookPos()J

    move-result-wide v0

    long-to-int v1, v0

    if-lez p1, :cond_0

    int-to-long v2, p1

    .line 41
    invoke-interface {p0, v2, v3}, Lcom/audible/hushpuppy/sync/ISyncData;->getEBookPosFromAudiobookPos(J)J

    move-result-wide p0

    long-to-int p1, p0

    if-ltz p1, :cond_0

    .line 44
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_0
    return v1

    .line 33
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "syncData is null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getMinAudiobookPosFromEBookRange(Lcom/audible/hushpuppy/sync/ISyncData;II)I
    .locals 2

    if-eqz p0, :cond_0

    int-to-long v0, p1

    int-to-long p1, p2

    .line 133
    invoke-interface {p0, v0, v1, p1, p2}, Lcom/audible/hushpuppy/sync/ISyncData;->getMinAudiobookPosFromEBookRange(JJ)J

    move-result-wide p0

    long-to-int p1, p0

    return p1

    .line 131
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "syncData is null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getRangeMembership(Lcom/audible/hushpuppy/sync/ISyncData;I)Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;
    .locals 6

    if-eqz p0, :cond_4

    .line 102
    invoke-interface {p0}, Lcom/audible/hushpuppy/sync/ISyncData;->getLoAudiobookPos()J

    move-result-wide v0

    .line 103
    invoke-interface {p0}, Lcom/audible/hushpuppy/sync/ISyncData;->getHiAudiobookPos()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p0, v0, v4

    if-ltz p0, :cond_3

    cmp-long p0, v2, v4

    if-ltz p0, :cond_2

    int-to-long p0, p1

    cmp-long v4, p0, v0

    if-gez v4, :cond_0

    .line 110
    sget-object p0, Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;->BEFORE:Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;

    return-object p0

    :cond_0
    cmp-long v0, p0, v2

    if-gtz v0, :cond_1

    .line 112
    sget-object p0, Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;->WITHIN:Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;

    return-object p0

    .line 114
    :cond_1
    sget-object p0, Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;->AFTER:Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;

    return-object p0

    .line 108
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "syncData hi audiobook position is invalid: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 106
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncData low audiobook position is invalid: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 99
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "syncData is null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
