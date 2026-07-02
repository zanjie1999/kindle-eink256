.class interface abstract Lcom/audible/application/stats/StatsManager$LocalDatabaseMetadata;
.super Ljava/lang/Object;
.source "StatsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/application/stats/StatsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "LocalDatabaseMetadata"
.end annotation


# virtual methods
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
