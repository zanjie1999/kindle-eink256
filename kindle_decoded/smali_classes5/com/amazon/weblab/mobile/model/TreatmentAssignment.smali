.class public Lcom/amazon/weblab/mobile/model/TreatmentAssignment;
.super Ljava/lang/Object;
.source "TreatmentAssignment.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private mAllocationChanged:Z

.field protected mCanTrigger:Z

.field protected mDateModified:Ljava/util/Date;

.field protected mKeepInCacheDateInMillis:J

.field protected mLocked:Z

.field protected mSuggestedExpiration:Ljava/util/Date;

.field protected mTreatment:Ljava/lang/String;

.field protected mVersion:Ljava/lang/String;

.field protected mWeblab:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mLocked:Z

    .line 17
    iput-boolean v0, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mCanTrigger:Z

    if-eqz p1, :cond_0

    .line 27
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    iput-object p1, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mWeblab:Ljava/lang/String;

    return-void

    .line 28
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Weblab can\'t be null nor empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;ZJ)V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mLocked:Z

    .line 17
    iput-boolean v0, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mCanTrigger:Z

    if-eqz p1, :cond_4

    .line 54
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz p2, :cond_3

    .line 57
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz p3, :cond_2

    .line 60
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p4, :cond_1

    if-eqz p5, :cond_0

    .line 71
    invoke-virtual {p5}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/Date;

    iput-object p5, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mSuggestedExpiration:Ljava/util/Date;

    .line 72
    iput-object p1, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mWeblab:Ljava/lang/String;

    .line 73
    iput-object p2, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mTreatment:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mVersion:Ljava/lang/String;

    .line 75
    invoke-virtual {p4}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    iput-object p1, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mDateModified:Ljava/util/Date;

    .line 76
    iput-boolean p6, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mCanTrigger:Z

    .line 77
    iput-boolean v0, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mAllocationChanged:Z

    .line 78
    iput-wide p7, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mKeepInCacheDateInMillis:J

    return-void

    .line 68
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "suggestedExpiration can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "dateModified can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "version can\'t be null nor empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 58
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "treatment can\'t be null nor empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "weblab can\'t be null nor empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public canTrigger()Z
    .locals 1

    .line 140
    iget-boolean v0, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mCanTrigger:Z

    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 10

    .line 186
    new-instance v9, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;

    iget-object v1, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mWeblab:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mTreatment:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mVersion:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mDateModified:Ljava/util/Date;

    iget-object v5, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mSuggestedExpiration:Ljava/util/Date;

    iget-boolean v6, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mCanTrigger:Z

    iget-wide v7, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mKeepInCacheDateInMillis:J

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;ZJ)V

    .line 188
    iget-boolean v0, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mLocked:Z

    iput-boolean v0, v9, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mLocked:Z

    return-object v9
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 214
    instance-of v0, p1, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;

    if-eqz v0, :cond_1

    .line 215
    check-cast p1, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;

    .line 216
    iget-boolean v0, p1, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mCanTrigger:Z

    iget-boolean v1, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mCanTrigger:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mDateModified:Ljava/util/Date;

    iget-object v1, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mDateModified:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mLocked:Z

    iget-boolean v1, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mLocked:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mTreatment:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mTreatment:Ljava/lang/String;

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mVersion:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mWeblab:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mWeblab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mKeepInCacheDateInMillis:J

    iget-wide v2, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mKeepInCacheDateInMillis:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 221
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getDateModified()Ljava/util/Date;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mDateModified:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getKeepInCacheDateInMillis()J
    .locals 2

    .line 181
    iget-wide v0, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mKeepInCacheDateInMillis:J

    return-wide v0
.end method

.method public getSuggestedExpiration()Ljava/util/Date;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mSuggestedExpiration:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getTreatment()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mTreatment:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getWeblabName()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mWeblab:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .line 196
    iget-boolean v0, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mCanTrigger:Z

    const/16 v1, 0x4cf

    const/16 v2, 0x4d5

    if-eqz v0, :cond_0

    const/16 v0, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v0, 0x4d5

    :goto_0
    const/16 v3, 0x1f

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 197
    iget-object v4, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mDateModified:Ljava/util/Date;

    const/4 v5, 0x0

    if-nez v4, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/util/Date;->hashCode()I

    move-result v4

    :goto_1
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    .line 198
    iget-boolean v4, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mLocked:Z

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    const/16 v1, 0x4d5

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 199
    iget-object v1, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mSuggestedExpiration:Ljava/util/Date;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 200
    iget-object v1, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mTreatment:Ljava/lang/String;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 201
    iget-object v1, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mVersion:Ljava/lang/String;

    if-nez v1, :cond_5

    const/4 v1, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 202
    iget-object v1, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mWeblab:Ljava/lang/String;

    if-nez v1, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    :goto_6
    add-int/2addr v0, v5

    mul-int/lit8 v0, v0, 0x1f

    .line 203
    iget-wide v1, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mKeepInCacheDateInMillis:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_7

    const/16 v1, 0x5c0

    goto :goto_7

    :cond_7
    const/16 v1, 0x1271

    :goto_7
    add-int/2addr v0, v1

    return v0
.end method

.method public isAllocationChanged()Z
    .locals 1

    .line 167
    iget-boolean v0, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mAllocationChanged:Z

    return v0
.end method

.method public isLocked()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mLocked:Z

    return v0
.end method

.method public setAllocationChanged(Z)V
    .locals 0

    .line 158
    iput-boolean p1, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mAllocationChanged:Z

    return-void
.end method

.method public setKeepInCacheDateInMillis(J)V
    .locals 0

    .line 174
    iput-wide p1, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mKeepInCacheDateInMillis:J

    return-void
.end method

.method public setLocked(Z)V
    .locals 0

    .line 82
    iput-boolean p1, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mLocked:Z

    return-void
.end method
