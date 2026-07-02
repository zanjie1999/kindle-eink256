.class public final Lcom/amazon/kcp/home/models/voltron/SidekickWaysToRead;
.super Lcom/amazon/kcp/home/models/voltron/SidekickZone;
.source "SidekickModels.kt"


# instance fields
.field private final model:Lcom/amazon/kcp/home/models/voltron/SidekickWaysToReadModel;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/amazon/kcp/home/models/voltron/SidekickWaysToReadModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/home/models/voltron/VoltronAction;",
            ">;",
            "Lcom/amazon/kcp/home/models/voltron/SidekickWaysToReadModel;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "model"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 483
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/kcp/home/models/voltron/SidekickZone;-><init>(Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p3, p0, Lcom/amazon/kcp/home/models/voltron/SidekickWaysToRead;->model:Lcom/amazon/kcp/home/models/voltron/SidekickWaysToReadModel;

    return-void
.end method


# virtual methods
.method public bridge synthetic toHomeZone()Lcom/amazon/kindle/home/model/HomeZone;
    .locals 1

    .line 479
    invoke-virtual {p0}, Lcom/amazon/kcp/home/models/voltron/SidekickWaysToRead;->toHomeZone()Lcom/amazon/kindle/home/model/WaysToReadBlock;

    move-result-object v0

    return-object v0
.end method

.method public toHomeZone()Lcom/amazon/kindle/home/model/WaysToReadBlock;
    .locals 9

    .line 485
    new-instance v8, Lcom/amazon/kindle/home/model/WaysToReadBlock;

    invoke-virtual {p0}, Lcom/amazon/kcp/home/models/voltron/SidekickZone;->getActions()Ljava/util/List;

    move-result-object v1

    iget-object v0, p0, Lcom/amazon/kcp/home/models/voltron/SidekickWaysToRead;->model:Lcom/amazon/kcp/home/models/voltron/SidekickWaysToReadModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/models/voltron/SidekickWaysToReadModel;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 486
    iget-object v0, p0, Lcom/amazon/kcp/home/models/voltron/SidekickWaysToRead;->model:Lcom/amazon/kcp/home/models/voltron/SidekickWaysToReadModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/models/voltron/SidekickWaysToReadModel;->getDarkImageUrl()Ljava/lang/String;

    move-result-object v3

    .line 487
    iget-object v0, p0, Lcom/amazon/kcp/home/models/voltron/SidekickWaysToRead;->model:Lcom/amazon/kcp/home/models/voltron/SidekickWaysToReadModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/models/voltron/SidekickWaysToReadModel;->getLightImageUrl()Ljava/lang/String;

    move-result-object v4

    .line 488
    iget-object v0, p0, Lcom/amazon/kcp/home/models/voltron/SidekickWaysToRead;->model:Lcom/amazon/kcp/home/models/voltron/SidekickWaysToReadModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/models/voltron/SidekickWaysToReadModel;->getImageAltText()Ljava/lang/String;

    move-result-object v5

    .line 489
    iget-object v0, p0, Lcom/amazon/kcp/home/models/voltron/SidekickWaysToRead;->model:Lcom/amazon/kcp/home/models/voltron/SidekickWaysToReadModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/models/voltron/SidekickWaysToReadModel;->getIntro()Ljava/lang/String;

    move-result-object v6

    .line 490
    iget-object v0, p0, Lcom/amazon/kcp/home/models/voltron/SidekickWaysToRead;->model:Lcom/amazon/kcp/home/models/voltron/SidekickWaysToReadModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/models/voltron/SidekickWaysToReadModel;->getLandingPageUrlDisplayText()Ljava/lang/String;

    move-result-object v7

    move-object v0, v8

    .line 485
    invoke-direct/range {v0 .. v7}, Lcom/amazon/kindle/home/model/WaysToReadBlock;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method
