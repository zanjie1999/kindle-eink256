.class public final Lcom/amazon/kcp/home/models/voltron/SidekickDescriptionImageZone;
.super Lcom/amazon/kcp/home/models/voltron/SidekickZone;
.source "SidekickModels.kt"


# instance fields
.field private final model:Lcom/amazon/kcp/home/models/voltron/SidekickDescriptionImageModel;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/amazon/kcp/home/models/voltron/SidekickDescriptionImageModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/home/models/voltron/VoltronAction;",
            ">;",
            "Lcom/amazon/kcp/home/models/voltron/SidekickDescriptionImageModel;",
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

    .line 552
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/kcp/home/models/voltron/SidekickZone;-><init>(Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p3, p0, Lcom/amazon/kcp/home/models/voltron/SidekickDescriptionImageZone;->model:Lcom/amazon/kcp/home/models/voltron/SidekickDescriptionImageModel;

    return-void
.end method


# virtual methods
.method public toHomeZone()Lcom/amazon/kindle/home/model/DescriptionImageZone;
    .locals 12

    .line 554
    new-instance v11, Lcom/amazon/kindle/home/model/DescriptionImageZone;

    invoke-virtual {p0}, Lcom/amazon/kcp/home/models/voltron/SidekickZone;->getActions()Ljava/util/List;

    move-result-object v1

    .line 555
    iget-object v0, p0, Lcom/amazon/kcp/home/models/voltron/SidekickDescriptionImageZone;->model:Lcom/amazon/kcp/home/models/voltron/SidekickDescriptionImageModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/models/voltron/SidekickDescriptionImageModel;->getImageAltText()Ljava/lang/String;

    move-result-object v2

    .line 556
    iget-object v0, p0, Lcom/amazon/kcp/home/models/voltron/SidekickDescriptionImageZone;->model:Lcom/amazon/kcp/home/models/voltron/SidekickDescriptionImageModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/models/voltron/SidekickDescriptionImageModel;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    .line 557
    iget-object v0, p0, Lcom/amazon/kcp/home/models/voltron/SidekickDescriptionImageZone;->model:Lcom/amazon/kcp/home/models/voltron/SidekickDescriptionImageModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/models/voltron/SidekickDescriptionImageModel;->getImageAsin()Ljava/lang/String;

    move-result-object v4

    .line 558
    iget-object v0, p0, Lcom/amazon/kcp/home/models/voltron/SidekickDescriptionImageZone;->model:Lcom/amazon/kcp/home/models/voltron/SidekickDescriptionImageModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/models/voltron/SidekickDescriptionImageModel;->getImageTitle()Ljava/lang/String;

    move-result-object v5

    .line 559
    iget-object v0, p0, Lcom/amazon/kcp/home/models/voltron/SidekickDescriptionImageZone;->model:Lcom/amazon/kcp/home/models/voltron/SidekickDescriptionImageModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/models/voltron/SidekickDescriptionImageModel;->getImageAuthor()Ljava/lang/String;

    move-result-object v6

    .line 560
    iget-object v0, p0, Lcom/amazon/kcp/home/models/voltron/SidekickDescriptionImageZone;->model:Lcom/amazon/kcp/home/models/voltron/SidekickDescriptionImageModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/models/voltron/SidekickDescriptionImageModel;->getBlurb()Ljava/lang/String;

    move-result-object v7

    .line 561
    iget-object v0, p0, Lcom/amazon/kcp/home/models/voltron/SidekickDescriptionImageZone;->model:Lcom/amazon/kcp/home/models/voltron/SidekickDescriptionImageModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/models/voltron/SidekickDescriptionImageModel;->getBlurbByLine()Ljava/lang/String;

    move-result-object v8

    .line 562
    iget-object v0, p0, Lcom/amazon/kcp/home/models/voltron/SidekickDescriptionImageZone;->model:Lcom/amazon/kcp/home/models/voltron/SidekickDescriptionImageModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/models/voltron/SidekickDescriptionImageModel;->getBlurbAltText()Ljava/lang/String;

    move-result-object v9

    .line 563
    iget-object v0, p0, Lcom/amazon/kcp/home/models/voltron/SidekickDescriptionImageZone;->model:Lcom/amazon/kcp/home/models/voltron/SidekickDescriptionImageModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/models/voltron/SidekickDescriptionImageModel;->getBlurbByLineAltText()Ljava/lang/String;

    move-result-object v10

    move-object v0, v11

    .line 554
    invoke-direct/range {v0 .. v10}, Lcom/amazon/kindle/home/model/DescriptionImageZone;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v11
.end method

.method public bridge synthetic toHomeZone()Lcom/amazon/kindle/home/model/HomeZone;
    .locals 1

    .line 548
    invoke-virtual {p0}, Lcom/amazon/kcp/home/models/voltron/SidekickDescriptionImageZone;->toHomeZone()Lcom/amazon/kindle/home/model/DescriptionImageZone;

    move-result-object v0

    return-object v0
.end method
