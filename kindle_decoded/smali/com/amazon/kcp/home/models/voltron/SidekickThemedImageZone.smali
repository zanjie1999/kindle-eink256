.class public final Lcom/amazon/kcp/home/models/voltron/SidekickThemedImageZone;
.super Lcom/amazon/kcp/home/models/voltron/SidekickZone;
.source "SidekickModels.kt"


# instance fields
.field private final model:Lcom/amazon/kcp/home/models/voltron/SidekickThemedImageModel;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/amazon/kcp/home/models/voltron/SidekickThemedImageModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/home/models/voltron/VoltronAction;",
            ">;",
            "Lcom/amazon/kcp/home/models/voltron/SidekickThemedImageModel;",
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

    .line 267
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/kcp/home/models/voltron/SidekickZone;-><init>(Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p3, p0, Lcom/amazon/kcp/home/models/voltron/SidekickThemedImageZone;->model:Lcom/amazon/kcp/home/models/voltron/SidekickThemedImageModel;

    return-void
.end method


# virtual methods
.method public bridge synthetic toHomeZone()Lcom/amazon/kindle/home/model/HomeZone;
    .locals 1

    .line 263
    invoke-virtual {p0}, Lcom/amazon/kcp/home/models/voltron/SidekickThemedImageZone;->toHomeZone()Lcom/amazon/kindle/home/model/ThemedImageZone;

    move-result-object v0

    return-object v0
.end method

.method public toHomeZone()Lcom/amazon/kindle/home/model/ThemedImageZone;
    .locals 5

    .line 269
    new-instance v0, Lcom/amazon/kindle/home/model/ThemedImageZone;

    invoke-virtual {p0}, Lcom/amazon/kcp/home/models/voltron/SidekickZone;->getActions()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/home/models/voltron/SidekickThemedImageZone;->model:Lcom/amazon/kcp/home/models/voltron/SidekickThemedImageModel;

    invoke-virtual {v2}, Lcom/amazon/kcp/home/models/voltron/SidekickThemedImageModel;->getImageAltText()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/home/models/voltron/SidekickThemedImageZone;->model:Lcom/amazon/kcp/home/models/voltron/SidekickThemedImageModel;

    invoke-virtual {v3}, Lcom/amazon/kcp/home/models/voltron/SidekickThemedImageModel;->getLightImageUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/kcp/home/models/voltron/SidekickThemedImageZone;->model:Lcom/amazon/kcp/home/models/voltron/SidekickThemedImageModel;

    invoke-virtual {v4}, Lcom/amazon/kcp/home/models/voltron/SidekickThemedImageModel;->getDarkImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/kindle/home/model/ThemedImageZone;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
