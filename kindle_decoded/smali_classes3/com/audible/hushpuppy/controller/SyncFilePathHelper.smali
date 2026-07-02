.class public final Lcom/audible/hushpuppy/controller/SyncFilePathHelper;
.super Ljava/lang/Object;
.source "SyncFilePathHelper.java"


# direct methods
.method public static getSyncFilePath(Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/audible/hushpuppy/common/relationship/IRelationship;)Ljava/io/File;
    .locals 2

    .line 30
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->getLocalSyncFilePath(Lcom/audible/mobile/domain/Asin;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 33
    :cond_0
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getSyncFileName()Ljava/lang/String;

    move-result-object p1

    .line 34
    new-instance v0, Ljava/io/File;

    invoke-interface {p0}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->getDownloadedContentFilePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method
