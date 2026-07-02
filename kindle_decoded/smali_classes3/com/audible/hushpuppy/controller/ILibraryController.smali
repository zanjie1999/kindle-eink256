.class public interface abstract Lcom/audible/hushpuppy/controller/ILibraryController;
.super Ljava/lang/Object;
.source "ILibraryController.java"


# virtual methods
.method public abstract enable()V
.end method

.method public abstract getSyncFile(Lcom/audible/hushpuppy/common/relationship/IRelationship;)Ljava/io/File;
.end method

.method public abstract persistMappings(Lcom/audible/hushpuppy/common/relationship/CompanionMappingModifications;)V
.end method

.method public abstract resetCache()V
.end method

.method public abstract syncMappings(Lcom/audible/hushpuppy/common/relationship/CompanionMappingModifications;)V
.end method

.method public abstract verifyAudioFileAvailability(Lcom/audible/mobile/domain/ACR;Lcom/audible/mobile/domain/Asin;)V
.end method

.method public abstract verifyAudioFileAvailability(Lcom/audible/mobile/domain/Asin;Ljava/io/File;)V
.end method
