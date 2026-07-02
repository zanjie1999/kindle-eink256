.class public interface abstract Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/IHushpuppyAudiobookMetadataProvider;
.super Ljava/lang/Object;
.source "IHushpuppyAudiobookMetadataProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/audio/IAudioBookMetadataProvider;


# virtual methods
.method public abstract loadCache()V
.end method

.method public abstract updateCache(Lcom/audible/relationship/domain/RelationshipMappingModification;)V
.end method

.method public abstract updateCache(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/audible/hushpuppy/common/relationship/IRelationship;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
