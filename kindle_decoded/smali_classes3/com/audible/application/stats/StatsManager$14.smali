.class Lcom/audible/application/stats/StatsManager$14;
.super Ljava/lang/Object;
.source "StatsManager.java"

# interfaces
.implements Lcom/audible/application/stats/StatsManager$LocalDatabaseMetadata;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/application/stats/StatsManager;->loadFromDatabaseSynchronous()Lcom/audible/application/stats/StatsManager$LocalDatabaseMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$badgeMetadata:Ljava/util/List;

.field final synthetic val$listeningLevelMetadata:Lcom/audible/mobile/stats/domain/BadgeMetadata;


# direct methods
.method constructor <init>(Lcom/audible/application/stats/StatsManager;Ljava/util/List;Lcom/audible/mobile/stats/domain/BadgeMetadata;)V
    .locals 0

    .line 782
    iput-object p2, p0, Lcom/audible/application/stats/StatsManager$14;->val$badgeMetadata:Ljava/util/List;

    iput-object p3, p0, Lcom/audible/application/stats/StatsManager$14;->val$listeningLevelMetadata:Lcom/audible/mobile/stats/domain/BadgeMetadata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBadgeMetadata()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/audible/mobile/stats/domain/BadgeMetadata;",
            ">;"
        }
    .end annotation

    .line 786
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager$14;->val$badgeMetadata:Ljava/util/List;

    return-object v0
.end method

.method public getListeningLevelMetadata()Lcom/audible/mobile/stats/domain/BadgeMetadata;
    .locals 1

    .line 792
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager$14;->val$listeningLevelMetadata:Lcom/audible/mobile/stats/domain/BadgeMetadata;

    return-object v0
.end method
