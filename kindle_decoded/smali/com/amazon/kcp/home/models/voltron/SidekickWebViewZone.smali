.class public final Lcom/amazon/kcp/home/models/voltron/SidekickWebViewZone;
.super Lcom/amazon/kcp/home/models/voltron/SidekickZone;
.source "SidekickModels.kt"


# instance fields
.field private final model:Lcom/amazon/kcp/home/models/voltron/SidekickWebViewModel;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/amazon/kcp/home/models/voltron/SidekickWebViewModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/home/models/voltron/VoltronAction;",
            ">;",
            "Lcom/amazon/kcp/home/models/voltron/SidekickWebViewModel;",
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

    .line 413
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/kcp/home/models/voltron/SidekickZone;-><init>(Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p3, p0, Lcom/amazon/kcp/home/models/voltron/SidekickWebViewZone;->model:Lcom/amazon/kcp/home/models/voltron/SidekickWebViewModel;

    return-void
.end method


# virtual methods
.method public bridge synthetic toHomeZone()Lcom/amazon/kindle/home/model/HomeZone;
    .locals 1

    .line 409
    invoke-virtual {p0}, Lcom/amazon/kcp/home/models/voltron/SidekickWebViewZone;->toHomeZone()Lcom/amazon/kindle/home/model/WebViewZone;

    move-result-object v0

    return-object v0
.end method

.method public toHomeZone()Lcom/amazon/kindle/home/model/WebViewZone;
    .locals 4

    .line 415
    new-instance v0, Lcom/amazon/kindle/home/model/WebViewZone;

    invoke-virtual {p0}, Lcom/amazon/kcp/home/models/voltron/SidekickZone;->getActions()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/home/models/voltron/SidekickWebViewZone;->model:Lcom/amazon/kcp/home/models/voltron/SidekickWebViewModel;

    invoke-virtual {v2}, Lcom/amazon/kcp/home/models/voltron/SidekickWebViewModel;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/home/models/voltron/SidekickWebViewZone;->model:Lcom/amazon/kcp/home/models/voltron/SidekickWebViewModel;

    invoke-virtual {v3}, Lcom/amazon/kcp/home/models/voltron/SidekickWebViewModel;->getPayload()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kindle/home/model/WebViewZone;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
