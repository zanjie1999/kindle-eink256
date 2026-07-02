.class public final Lcom/amazon/kcp/home/models/voltron/SidekickImageZone;
.super Lcom/amazon/kcp/home/models/voltron/SidekickZone;
.source "SidekickModels.kt"


# instance fields
.field private final model:Lcom/amazon/kcp/home/models/voltron/SidekickImageModel;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/amazon/kcp/home/models/voltron/SidekickImageModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/home/models/voltron/VoltronAction;",
            ">;",
            "Lcom/amazon/kcp/home/models/voltron/SidekickImageModel;",
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

    .line 226
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/kcp/home/models/voltron/SidekickZone;-><init>(Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p3, p0, Lcom/amazon/kcp/home/models/voltron/SidekickImageZone;->model:Lcom/amazon/kcp/home/models/voltron/SidekickImageModel;

    return-void
.end method


# virtual methods
.method public asin()Ljava/lang/String;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/amazon/kcp/home/models/voltron/SidekickImageZone;->model:Lcom/amazon/kcp/home/models/voltron/SidekickImageModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/models/voltron/SidekickImageModel;->getImageAsin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toHomeZone()Lcom/amazon/kindle/home/model/HomeZone;
    .locals 1

    .line 222
    invoke-virtual {p0}, Lcom/amazon/kcp/home/models/voltron/SidekickImageZone;->toHomeZone()Lcom/amazon/kindle/home/model/ImageZone;

    move-result-object v0

    return-object v0
.end method

.method public toHomeZone()Lcom/amazon/kindle/home/model/ImageZone;
    .locals 9

    .line 228
    new-instance v7, Lcom/amazon/kindle/home/model/ImageZone;

    invoke-virtual {p0}, Lcom/amazon/kcp/home/models/voltron/SidekickZone;->getActions()Ljava/util/List;

    move-result-object v1

    iget-object v0, p0, Lcom/amazon/kcp/home/models/voltron/SidekickImageZone;->model:Lcom/amazon/kcp/home/models/voltron/SidekickImageModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/models/voltron/SidekickImageModel;->getImageAltText()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/amazon/kcp/home/models/voltron/SidekickImageZone;->model:Lcom/amazon/kcp/home/models/voltron/SidekickImageModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/models/voltron/SidekickImageModel;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    .line 229
    iget-object v0, p0, Lcom/amazon/kcp/home/models/voltron/SidekickImageZone;->model:Lcom/amazon/kcp/home/models/voltron/SidekickImageModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/models/voltron/SidekickImageModel;->getImageAsin()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/amazon/kcp/home/models/voltron/SidekickImageZone;->model:Lcom/amazon/kcp/home/models/voltron/SidekickImageModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/models/voltron/SidekickImageModel;->getImageTitle()Ljava/lang/String;

    move-result-object v0

    const-string v5, ""

    if-eqz v0, :cond_0

    move-object v6, v0

    goto :goto_0

    :cond_0
    move-object v6, v5

    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/home/models/voltron/SidekickImageZone;->model:Lcom/amazon/kcp/home/models/voltron/SidekickImageModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/models/voltron/SidekickImageModel;->getImageAuthor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v8, v0

    goto :goto_1

    :cond_1
    move-object v8, v5

    :goto_1
    move-object v0, v7

    move-object v5, v6

    move-object v6, v8

    .line 228
    invoke-direct/range {v0 .. v6}, Lcom/amazon/kindle/home/model/ImageZone;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method
