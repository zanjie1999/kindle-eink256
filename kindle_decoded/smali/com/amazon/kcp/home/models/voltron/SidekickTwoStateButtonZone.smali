.class public final Lcom/amazon/kcp/home/models/voltron/SidekickTwoStateButtonZone;
.super Lcom/amazon/kcp/home/models/voltron/SidekickZone;
.source "SidekickModels.kt"


# instance fields
.field private final model:Lcom/amazon/kcp/home/models/voltron/SidekickTwoStateButtonModel;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/amazon/kcp/home/models/voltron/SidekickTwoStateButtonModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/home/models/voltron/VoltronAction;",
            ">;",
            "Lcom/amazon/kcp/home/models/voltron/SidekickTwoStateButtonModel;",
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

    .line 348
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/kcp/home/models/voltron/SidekickZone;-><init>(Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p3, p0, Lcom/amazon/kcp/home/models/voltron/SidekickTwoStateButtonZone;->model:Lcom/amazon/kcp/home/models/voltron/SidekickTwoStateButtonModel;

    return-void
.end method


# virtual methods
.method public bridge synthetic toHomeZone()Lcom/amazon/kindle/home/model/HomeZone;
    .locals 1

    .line 344
    invoke-virtual {p0}, Lcom/amazon/kcp/home/models/voltron/SidekickTwoStateButtonZone;->toHomeZone()Lcom/amazon/kindle/home/model/TwoStateButtonZone;

    move-result-object v0

    return-object v0
.end method

.method public toHomeZone()Lcom/amazon/kindle/home/model/TwoStateButtonZone;
    .locals 7

    .line 350
    new-instance v6, Lcom/amazon/kindle/home/model/TwoStateButtonZone;

    invoke-virtual {p0}, Lcom/amazon/kcp/home/models/voltron/SidekickZone;->getActions()Ljava/util/List;

    move-result-object v1

    iget-object v0, p0, Lcom/amazon/kcp/home/models/voltron/SidekickTwoStateButtonZone;->model:Lcom/amazon/kcp/home/models/voltron/SidekickTwoStateButtonModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/models/voltron/SidekickTwoStateButtonModel;->getTextOne()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/amazon/kcp/home/models/voltron/SidekickTwoStateButtonZone;->model:Lcom/amazon/kcp/home/models/voltron/SidekickTwoStateButtonModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/models/voltron/SidekickTwoStateButtonModel;->getTextTwo()Ljava/lang/String;

    move-result-object v3

    .line 351
    iget-object v0, p0, Lcom/amazon/kcp/home/models/voltron/SidekickTwoStateButtonZone;->model:Lcom/amazon/kcp/home/models/voltron/SidekickTwoStateButtonModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/models/voltron/SidekickTwoStateButtonModel;->getAltTextOne()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/amazon/kcp/home/models/voltron/SidekickTwoStateButtonZone;->model:Lcom/amazon/kcp/home/models/voltron/SidekickTwoStateButtonModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/models/voltron/SidekickTwoStateButtonModel;->getAltTextTwo()Ljava/lang/String;

    move-result-object v5

    move-object v0, v6

    .line 350
    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/home/model/TwoStateButtonZone;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method
