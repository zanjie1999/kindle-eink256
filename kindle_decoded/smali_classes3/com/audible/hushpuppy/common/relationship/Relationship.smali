.class public final Lcom/audible/hushpuppy/common/relationship/Relationship;
.super Ljava/lang/Object;
.source "Relationship.java"

# interfaces
.implements Lcom/audible/hushpuppy/common/relationship/IRelationship;
.implements Ljava/io/Serializable;


# static fields
.field private static final SYNC_FILE_EXT:Ljava/lang/String; = ".sync"


# instance fields
.field private final aBook:Lcom/audible/hushpuppy/common/relationship/ICompanion;

.field private final amznAudiobook:Lcom/audible/mobile/domain/Asin;

.field private final eBook:Lcom/audible/hushpuppy/common/relationship/ICompanion;

.field private final isAudiobookOwned:Z

.field private final relationshipId:Ljava/lang/String;

.field private final syncFileACR:Lcom/audible/mobile/domain/ACR;

.field private final timeLastFetched:J

.field private final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/audible/hushpuppy/common/relationship/ICompanion;Lcom/audible/hushpuppy/common/relationship/ICompanion;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;Ljava/lang/String;Ljava/lang/String;ZJ)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/audible/hushpuppy/common/relationship/Relationship;->eBook:Lcom/audible/hushpuppy/common/relationship/ICompanion;

    .line 76
    iput-object p2, p0, Lcom/audible/hushpuppy/common/relationship/Relationship;->aBook:Lcom/audible/hushpuppy/common/relationship/ICompanion;

    .line 77
    iput-object p3, p0, Lcom/audible/hushpuppy/common/relationship/Relationship;->amznAudiobook:Lcom/audible/mobile/domain/Asin;

    .line 78
    iput-object p4, p0, Lcom/audible/hushpuppy/common/relationship/Relationship;->syncFileACR:Lcom/audible/mobile/domain/ACR;

    .line 79
    iput-object p5, p0, Lcom/audible/hushpuppy/common/relationship/Relationship;->relationshipId:Ljava/lang/String;

    .line 80
    iput-object p6, p0, Lcom/audible/hushpuppy/common/relationship/Relationship;->type:Ljava/lang/String;

    .line 81
    iput-boolean p7, p0, Lcom/audible/hushpuppy/common/relationship/Relationship;->isAudiobookOwned:Z

    .line 82
    iput-wide p8, p0, Lcom/audible/hushpuppy/common/relationship/Relationship;->timeLastFetched:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_10

    .line 211
    const-class v2, Lcom/audible/hushpuppy/common/relationship/Relationship;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_6

    .line 215
    :cond_1
    check-cast p1, Lcom/audible/hushpuppy/common/relationship/Relationship;

    .line 217
    iget-boolean v2, p0, Lcom/audible/hushpuppy/common/relationship/Relationship;->isAudiobookOwned:Z

    iget-boolean v3, p1, Lcom/audible/hushpuppy/common/relationship/Relationship;->isAudiobookOwned:Z

    if-eq v2, v3, :cond_2

    return v1

    .line 220
    :cond_2
    iget-wide v2, p0, Lcom/audible/hushpuppy/common/relationship/Relationship;->timeLastFetched:J

    iget-wide v4, p1, Lcom/audible/hushpuppy/common/relationship/Relationship;->timeLastFetched:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    return v1

    .line 223
    :cond_3
    iget-object v2, p0, Lcom/audible/hushpuppy/common/relationship/Relationship;->aBook:Lcom/audible/hushpuppy/common/relationship/ICompanion;

    if-eqz v2, :cond_4

    iget-object v3, p1, Lcom/audible/hushpuppy/common/relationship/Relationship;->aBook:Lcom/audible/hushpuppy/common/relationship/ICompanion;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_4
    iget-object v2, p1, Lcom/audible/hushpuppy/common/relationship/Relationship;->aBook:Lcom/audible/hushpuppy/common/relationship/ICompanion;

    if-eqz v2, :cond_5

    :goto_0
    return v1

    .line 226
    :cond_5
    iget-object v2, p0, Lcom/audible/hushpuppy/common/relationship/Relationship;->amznAudiobook:Lcom/audible/mobile/domain/Asin;

    if-eqz v2, :cond_6

    iget-object v3, p1, Lcom/audible/hushpuppy/common/relationship/Relationship;->amznAudiobook:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_6
    iget-object v2, p1, Lcom/audible/hushpuppy/common/relationship/Relationship;->amznAudiobook:Lcom/audible/mobile/domain/Asin;

    if-eqz v2, :cond_7

    :goto_1
    return v1

    .line 229
    :cond_7
    iget-object v2, p0, Lcom/audible/hushpuppy/common/relationship/Relationship;->eBook:Lcom/audible/hushpuppy/common/relationship/ICompanion;

    if-eqz v2, :cond_8

    iget-object v3, p1, Lcom/audible/hushpuppy/common/relationship/Relationship;->eBook:Lcom/audible/hushpuppy/common/relationship/ICompanion;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_2

    :cond_8
    iget-object v2, p1, Lcom/audible/hushpuppy/common/relationship/Relationship;->eBook:Lcom/audible/hushpuppy/common/relationship/ICompanion;

    if-eqz v2, :cond_9

    :goto_2
    return v1

    .line 232
    :cond_9
    iget-object v2, p0, Lcom/audible/hushpuppy/common/relationship/Relationship;->relationshipId:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v3, p1, Lcom/audible/hushpuppy/common/relationship/Relationship;->relationshipId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_3

    :cond_a
    iget-object v2, p1, Lcom/audible/hushpuppy/common/relationship/Relationship;->relationshipId:Ljava/lang/String;

    if-eqz v2, :cond_b

    :goto_3
    return v1

    .line 235
    :cond_b
    iget-object v2, p0, Lcom/audible/hushpuppy/common/relationship/Relationship;->syncFileACR:Lcom/audible/mobile/domain/ACR;

    if-eqz v2, :cond_c

    iget-object v3, p1, Lcom/audible/hushpuppy/common/relationship/Relationship;->syncFileACR:Lcom/audible/mobile/domain/ACR;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_4

    :cond_c
    iget-object v2, p1, Lcom/audible/hushpuppy/common/relationship/Relationship;->syncFileACR:Lcom/audible/mobile/domain/ACR;

    if-eqz v2, :cond_d

    :goto_4
    return v1

    .line 238
    :cond_d
    iget-object v2, p0, Lcom/audible/hushpuppy/common/relationship/Relationship;->type:Ljava/lang/String;

    iget-object p1, p1, Lcom/audible/hushpuppy/common/relationship/Relationship;->type:Ljava/lang/String;

    if-eqz v2, :cond_e

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_5

    :cond_e
    if-eqz p1, :cond_f

    :goto_5
    return v1

    :cond_f
    return v0

    :cond_10
    :goto_6
    return v1
.end method

.method public equalsIgnoreTimeLastFetched(Lcom/audible/hushpuppy/common/relationship/IRelationship;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 172
    :cond_1
    iget-object v2, p0, Lcom/audible/hushpuppy/common/relationship/Relationship;->aBook:Lcom/audible/hushpuppy/common/relationship/ICompanion;

    if-eqz v2, :cond_2

    .line 173
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v2

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 177
    :cond_3
    invoke-virtual {p0}, Lcom/audible/hushpuppy/common/relationship/Relationship;->hasSampleAudiobook()Z

    move-result v2

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->hasSampleAudiobook()Z

    move-result v3

    if-eq v2, v3, :cond_4

    return v1

    .line 181
    :cond_4
    iget-object v2, p0, Lcom/audible/hushpuppy/common/relationship/Relationship;->amznAudiobook:Lcom/audible/mobile/domain/Asin;

    if-eqz v2, :cond_5

    .line 182
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAmazonAudiobookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    .line 183
    :cond_5
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAmazonAudiobookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v2

    if-eqz v2, :cond_6

    :goto_1
    return v1

    .line 186
    :cond_6
    iget-object v2, p0, Lcom/audible/hushpuppy/common/relationship/Relationship;->eBook:Lcom/audible/hushpuppy/common/relationship/ICompanion;

    if-eqz v2, :cond_7

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_2

    :cond_7
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v2

    if-eqz v2, :cond_8

    :goto_2
    return v1

    .line 189
    :cond_8
    iget-object v2, p0, Lcom/audible/hushpuppy/common/relationship/Relationship;->relationshipId:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 190
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getRelationshipId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_3

    .line 191
    :cond_9
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getRelationshipId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    :goto_3
    return v1

    .line 194
    :cond_a
    iget-object v2, p0, Lcom/audible/hushpuppy/common/relationship/Relationship;->syncFileACR:Lcom/audible/mobile/domain/ACR;

    if-eqz v2, :cond_b

    .line 195
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getSyncFileACR()Lcom/audible/mobile/domain/ACR;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_4

    .line 196
    :cond_b
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getSyncFileACR()Lcom/audible/mobile/domain/ACR;

    move-result-object v2

    if-eqz v2, :cond_c

    :goto_4
    return v1

    .line 199
    :cond_c
    iget-object v2, p0, Lcom/audible/hushpuppy/common/relationship/Relationship;->type:Ljava/lang/String;

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getType()Ljava/lang/String;

    move-result-object p1

    if-eqz v2, :cond_d

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_5

    :cond_d
    if-eqz p1, :cond_e

    :goto_5
    return v1

    :cond_e
    return v0
.end method

.method public getAmazonAudiobookAsin()Lcom/audible/mobile/domain/Asin;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/audible/hushpuppy/common/relationship/Relationship;->amznAudiobook:Lcom/audible/mobile/domain/Asin;

    return-object v0
.end method

.method public getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/audible/hushpuppy/common/relationship/Relationship;->aBook:Lcom/audible/hushpuppy/common/relationship/ICompanion;

    return-object v0
.end method

.method public getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/audible/hushpuppy/common/relationship/Relationship;->eBook:Lcom/audible/hushpuppy/common/relationship/ICompanion;

    return-object v0
.end method

.method public getRelationshipId()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/audible/hushpuppy/common/relationship/Relationship;->relationshipId:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncFileACR()Lcom/audible/mobile/domain/ACR;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/audible/hushpuppy/common/relationship/Relationship;->syncFileACR:Lcom/audible/mobile/domain/ACR;

    return-object v0
.end method

.method public getSyncFileName()Ljava/lang/String;
    .locals 2

    .line 150
    invoke-virtual {p0}, Lcom/audible/hushpuppy/common/relationship/Relationship;->hasFullAudiobook()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/audible/hushpuppy/common/relationship/Relationship;->getSyncFileACR()Lcom/audible/mobile/domain/ACR;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 154
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/audible/hushpuppy/common/relationship/Relationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getACR()Lcom/audible/mobile/domain/ACR;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/audible/hushpuppy/common/relationship/Relationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".sync"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeLastFetched()J
    .locals 2

    .line 97
    iget-wide v0, p0, Lcom/audible/hushpuppy/common/relationship/Relationship;->timeLastFetched:J

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/audible/hushpuppy/common/relationship/Relationship;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hasAudiobook()Z
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/audible/hushpuppy/common/relationship/Relationship;->aBook:Lcom/audible/hushpuppy/common/relationship/ICompanion;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->hasASIN()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasEBook(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/audible/hushpuppy/common/relationship/Relationship;->eBook:Lcom/audible/hushpuppy/common/relationship/ICompanion;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 139
    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/audible/hushpuppy/common/relationship/Relationship;->eBook:Lcom/audible/hushpuppy/common/relationship/ICompanion;

    .line 140
    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/audible/hushpuppy/common/relationship/Relationship;->eBook:Lcom/audible/hushpuppy/common/relationship/ICompanion;

    .line 142
    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasFullAudiobook()Z
    .locals 1

    .line 127
    invoke-virtual {p0}, Lcom/audible/hushpuppy/common/relationship/Relationship;->hasAudiobook()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/audible/hushpuppy/common/relationship/Relationship;->isAudiobookOwned:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSampleAudiobook()Z
    .locals 1

    .line 132
    invoke-virtual {p0}, Lcom/audible/hushpuppy/common/relationship/Relationship;->hasAudiobook()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/audible/hushpuppy/common/relationship/Relationship;->isAudiobookOwned:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 247
    iget-object v0, p0, Lcom/audible/hushpuppy/common/relationship/Relationship;->eBook:Lcom/audible/hushpuppy/common/relationship/ICompanion;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 248
    iget-object v2, p0, Lcom/audible/hushpuppy/common/relationship/Relationship;->aBook:Lcom/audible/hushpuppy/common/relationship/ICompanion;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 249
    iget-object v2, p0, Lcom/audible/hushpuppy/common/relationship/Relationship;->amznAudiobook:Lcom/audible/mobile/domain/Asin;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 250
    iget-object v2, p0, Lcom/audible/hushpuppy/common/relationship/Relationship;->syncFileACR:Lcom/audible/mobile/domain/ACR;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 251
    iget-object v2, p0, Lcom/audible/hushpuppy/common/relationship/Relationship;->relationshipId:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 252
    iget-object v2, p0, Lcom/audible/hushpuppy/common/relationship/Relationship;->type:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 253
    iget-boolean v1, p0, Lcom/audible/hushpuppy/common/relationship/Relationship;->isAudiobookOwned:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 254
    iget-wide v1, p0, Lcom/audible/hushpuppy/common/relationship/Relationship;->timeLastFetched:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Relationship{eBook="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/hushpuppy/common/relationship/Relationship;->eBook:Lcom/audible/hushpuppy/common/relationship/ICompanion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", aBook="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/hushpuppy/common/relationship/Relationship;->aBook:Lcom/audible/hushpuppy/common/relationship/ICompanion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", amznAudiobook="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/hushpuppy/common/relationship/Relationship;->amznAudiobook:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", syncFileACR="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/hushpuppy/common/relationship/Relationship;->syncFileACR:Lcom/audible/mobile/domain/ACR;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", relationshipId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/hushpuppy/common/relationship/Relationship;->relationshipId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", type=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/audible/hushpuppy/common/relationship/Relationship;->type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", isAudiobookOwned="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/audible/hushpuppy/common/relationship/Relationship;->isAudiobookOwned:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", timeLastFetched="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/audible/hushpuppy/common/relationship/Relationship;->timeLastFetched:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
