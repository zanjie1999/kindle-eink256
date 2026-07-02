.class public abstract Lcom/audible/android/kcp/coverart/CoverArtCallBack;
.super Ljava/lang/Object;
.source "CoverArtCallBack.java"


# instance fields
.field private final mAsin:Lcom/audible/mobile/domain/Asin;

.field private final mCoverArtType:Lcom/audible/mobile/audio/metadata/CoverArtType;


# virtual methods
.method public getAsin()Lcom/audible/mobile/domain/Asin;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/audible/android/kcp/coverart/CoverArtCallBack;->mAsin:Lcom/audible/mobile/domain/Asin;

    return-object v0
.end method

.method public getCoverArtType()Lcom/audible/mobile/audio/metadata/CoverArtType;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/audible/android/kcp/coverart/CoverArtCallBack;->mCoverArtType:Lcom/audible/mobile/audio/metadata/CoverArtType;

    return-object v0
.end method

.method public abstract onCoverArtAvailable(Ljava/io/File;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 72
    iget-object v1, p0, Lcom/audible/android/kcp/coverart/CoverArtCallBack;->mAsin:Lcom/audible/mobile/domain/Asin;

    invoke-interface {v1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/audible/android/kcp/coverart/CoverArtCallBack;->mCoverArtType:Lcom/audible/mobile/audio/metadata/CoverArtType;

    invoke-interface {v1}, Lcom/audible/mobile/audio/metadata/CoverArtType;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "CoverArtCallBack [Asin=%s, CoverArtType=%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
