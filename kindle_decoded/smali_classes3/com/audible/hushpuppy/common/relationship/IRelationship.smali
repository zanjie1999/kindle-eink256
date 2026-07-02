.class public interface abstract Lcom/audible/hushpuppy/common/relationship/IRelationship;
.super Ljava/lang/Object;
.source "IRelationship.java"


# virtual methods
.method public abstract equalsIgnoreTimeLastFetched(Lcom/audible/hushpuppy/common/relationship/IRelationship;)Z
.end method

.method public abstract getAmazonAudiobookAsin()Lcom/audible/mobile/domain/Asin;
.end method

.method public abstract getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;
.end method

.method public abstract getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;
.end method

.method public abstract getRelationshipId()Ljava/lang/String;
.end method

.method public abstract getSyncFileACR()Lcom/audible/mobile/domain/ACR;
.end method

.method public abstract getSyncFileName()Ljava/lang/String;
.end method

.method public abstract getTimeLastFetched()J
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract hasAudiobook()Z
.end method

.method public abstract hasEBook(Lcom/amazon/kindle/krx/content/IBook;)Z
.end method

.method public abstract hasFullAudiobook()Z
.end method

.method public abstract hasSampleAudiobook()Z
.end method
