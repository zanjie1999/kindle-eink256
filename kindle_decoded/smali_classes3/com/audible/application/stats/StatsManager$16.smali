.class Lcom/audible/application/stats/StatsManager$16;
.super Ljava/lang/Thread;
.source "StatsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/application/stats/StatsManager;->insertCustomerBadgeProgress([Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/application/stats/StatsManager;

.field final synthetic val$isUpgradeOrNew:Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;


# direct methods
.method constructor <init>(Lcom/audible/application/stats/StatsManager;Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;)V
    .locals 0

    .line 1065
    iput-object p1, p0, Lcom/audible/application/stats/StatsManager$16;->this$0:Lcom/audible/application/stats/StatsManager;

    iput-object p2, p0, Lcom/audible/application/stats/StatsManager$16;->val$isUpgradeOrNew:Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1068
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager$16;->this$0:Lcom/audible/application/stats/StatsManager;

    iget-object v0, v0, Lcom/audible/application/stats/StatsManager;->mBadgeMetadataRepository:Lcom/audible/application/stats/storage/IBadgeMetadataRepository;

    invoke-interface {v0}, Lcom/audible/application/stats/storage/IBadgeMetadataRepository;->getBadgeMetadata()Ljava/util/List;

    move-result-object v0

    .line 1069
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 1076
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/mobile/stats/domain/BadgeMetadata;

    .line 1077
    invoke-virtual {v1}, Lcom/audible/mobile/stats/domain/BadgeMetadata;->getBadgeMetadataId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/audible/application/stats/StatsManager$16;->val$isUpgradeOrNew:Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;

    invoke-virtual {v5}, Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;->getBadgeMetadataId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_2
    move-object v1, v3

    :goto_1
    if-eqz v1, :cond_3

    .line 1087
    new-instance v0, Lcom/audible/mobile/stats/domain/Badge;

    iget-object v4, p0, Lcom/audible/application/stats/StatsManager$16;->this$0:Lcom/audible/application/stats/StatsManager;

    iget-object v5, p0, Lcom/audible/application/stats/StatsManager$16;->val$isUpgradeOrNew:Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;

    invoke-direct {v0, v4, v5, v1}, Lcom/audible/mobile/stats/domain/Badge;-><init>(Lcom/audible/mobile/stats/BadgeIconFetcher;Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;Lcom/audible/mobile/stats/domain/BadgeMetadata;)V

    .line 1090
    :try_start_0
    invoke-virtual {v0}, Lcom/audible/mobile/stats/domain/Badge;->getBitmap()Lcom/audible/mobile/stats/domain/Badge$BadgeIconFutureTask;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/mobile/stats/domain/Badge$BadgeIconFutureTask;->get()Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1094
    :catch_0
    invoke-virtual {v0}, Lcom/audible/mobile/stats/domain/Badge;->getMetadata()Lcom/audible/mobile/stats/domain/BadgeMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/audible/mobile/stats/domain/BadgeMetadata;->getLevelMetadata()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/audible/mobile/stats/domain/Badge;->getLevel()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/mobile/stats/domain/LevelMetadata;

    .line 1095
    invoke-virtual {v1}, Lcom/audible/mobile/stats/domain/LevelMetadata;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1096
    invoke-virtual {v0}, Lcom/audible/mobile/stats/domain/Badge;->getMetadata()Lcom/audible/mobile/stats/domain/BadgeMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/audible/mobile/stats/domain/BadgeMetadata;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1098
    iget-object v2, p0, Lcom/audible/application/stats/StatsManager$16;->this$0:Lcom/audible/application/stats/StatsManager;

    invoke-static {v2}, Lcom/audible/application/stats/StatsManager;->access$1300(Lcom/audible/application/stats/StatsManager;)Lcom/audible/application/stats/util/IStatsNotificationManager;

    move-result-object v2

    invoke-interface {v2, v3, v1, v0}, Lcom/audible/application/stats/util/IStatsNotificationManager;->showBadgeEarnedNotification(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
