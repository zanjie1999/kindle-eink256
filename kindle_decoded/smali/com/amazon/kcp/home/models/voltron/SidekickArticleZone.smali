.class public final Lcom/amazon/kcp/home/models/voltron/SidekickArticleZone;
.super Lcom/amazon/kcp/home/models/voltron/SidekickZone;
.source "SidekickModels.kt"


# instance fields
.field private final model:Lcom/amazon/kcp/home/models/voltron/SidekickArticleModel;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/amazon/kcp/home/models/voltron/SidekickArticleModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/home/models/voltron/VoltronAction;",
            ">;",
            "Lcom/amazon/kcp/home/models/voltron/SidekickArticleModel;",
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

    .line 443
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/kcp/home/models/voltron/SidekickZone;-><init>(Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p3, p0, Lcom/amazon/kcp/home/models/voltron/SidekickArticleZone;->model:Lcom/amazon/kcp/home/models/voltron/SidekickArticleModel;

    return-void
.end method


# virtual methods
.method public toHomeZone()Lcom/amazon/kindle/home/model/ArticleZone;
    .locals 9

    .line 445
    new-instance v8, Lcom/amazon/kindle/home/model/ArticleZone;

    invoke-virtual {p0}, Lcom/amazon/kcp/home/models/voltron/SidekickZone;->getActions()Ljava/util/List;

    move-result-object v1

    iget-object v0, p0, Lcom/amazon/kcp/home/models/voltron/SidekickArticleZone;->model:Lcom/amazon/kcp/home/models/voltron/SidekickArticleModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/models/voltron/SidekickArticleModel;->getArticleImageUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/amazon/kcp/home/models/voltron/SidekickArticleZone;->model:Lcom/amazon/kcp/home/models/voltron/SidekickArticleModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/models/voltron/SidekickArticleModel;->getArticleImageAltText()Ljava/lang/String;

    move-result-object v3

    .line 446
    iget-object v0, p0, Lcom/amazon/kcp/home/models/voltron/SidekickArticleZone;->model:Lcom/amazon/kcp/home/models/voltron/SidekickArticleModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/models/voltron/SidekickArticleModel;->getPublisherImageUrl()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/amazon/kcp/home/models/voltron/SidekickArticleZone;->model:Lcom/amazon/kcp/home/models/voltron/SidekickArticleModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/models/voltron/SidekickArticleModel;->getPublisherImageAltText()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/amazon/kcp/home/models/voltron/SidekickArticleZone;->model:Lcom/amazon/kcp/home/models/voltron/SidekickArticleModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/models/voltron/SidekickArticleModel;->getTitle()Ljava/lang/String;

    move-result-object v6

    .line 447
    iget-object v0, p0, Lcom/amazon/kcp/home/models/voltron/SidekickArticleZone;->model:Lcom/amazon/kcp/home/models/voltron/SidekickArticleModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/models/voltron/SidekickArticleModel;->getIntro()Ljava/lang/String;

    move-result-object v7

    move-object v0, v8

    .line 445
    invoke-direct/range {v0 .. v7}, Lcom/amazon/kindle/home/model/ArticleZone;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method

.method public bridge synthetic toHomeZone()Lcom/amazon/kindle/home/model/HomeZone;
    .locals 1

    .line 439
    invoke-virtual {p0}, Lcom/amazon/kcp/home/models/voltron/SidekickArticleZone;->toHomeZone()Lcom/amazon/kindle/home/model/ArticleZone;

    move-result-object v0

    return-object v0
.end method
