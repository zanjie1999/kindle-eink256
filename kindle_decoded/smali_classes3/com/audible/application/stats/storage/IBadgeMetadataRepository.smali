.class public interface abstract Lcom/audible/application/stats/storage/IBadgeMetadataRepository;
.super Ljava/lang/Object;
.source "IBadgeMetadataRepository.java"


# virtual methods
.method public abstract clearAll()V
.end method

.method public abstract getBadgeMetadata()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/audible/mobile/stats/domain/BadgeMetadata;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getListeningLevelMetadata()Lcom/audible/mobile/stats/domain/BadgeMetadata;
.end method

.method public abstract insertBadgeMetadata(Lcom/audible/mobile/stats/domain/BadgeMetadata;)V
.end method
