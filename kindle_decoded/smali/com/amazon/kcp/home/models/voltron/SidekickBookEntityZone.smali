.class public final Lcom/amazon/kcp/home/models/voltron/SidekickBookEntityZone;
.super Lcom/amazon/kcp/home/models/voltron/SidekickZone;
.source "SidekickModels.kt"


# instance fields
.field private final model:Lcom/amazon/kcp/home/models/voltron/SidekickBookEntityModel;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/amazon/kcp/home/models/voltron/SidekickBookEntityModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/home/models/voltron/VoltronAction;",
            ">;",
            "Lcom/amazon/kcp/home/models/voltron/SidekickBookEntityModel;",
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

    .line 524
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/kcp/home/models/voltron/SidekickZone;-><init>(Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p3, p0, Lcom/amazon/kcp/home/models/voltron/SidekickBookEntityZone;->model:Lcom/amazon/kcp/home/models/voltron/SidekickBookEntityModel;

    return-void
.end method


# virtual methods
.method public toHomeZone()Lcom/amazon/kindle/home/model/HomeZone;
    .locals 3

    .line 527
    new-instance v0, Lcom/amazon/kindle/home/model/BookEntityListZone;

    invoke-virtual {p0}, Lcom/amazon/kcp/home/models/voltron/SidekickZone;->getActions()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/home/models/voltron/SidekickBookEntityZone;->model:Lcom/amazon/kcp/home/models/voltron/SidekickBookEntityModel;

    invoke-virtual {v2}, Lcom/amazon/kcp/home/models/voltron/SidekickBookEntityModel;->getBookEntityList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/home/model/BookEntityListZone;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method
