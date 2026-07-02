.class public final Lcom/amazon/kcp/home/models/voltron/MainWidget;
.super Ljava/lang/Object;
.source "SidekickModels.kt"


# instance fields
.field private final config:Lcom/amazon/kcp/home/models/voltron/ConfigWidget;

.field private final widgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/home/models/voltron/SidekickCard;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/home/models/voltron/ConfigWidget;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/home/models/voltron/ConfigWidget;",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/home/models/voltron/SidekickCard;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "widgets"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/models/voltron/MainWidget;->config:Lcom/amazon/kcp/home/models/voltron/ConfigWidget;

    iput-object p2, p0, Lcom/amazon/kcp/home/models/voltron/MainWidget;->widgets:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getConfig()Lcom/amazon/kcp/home/models/voltron/ConfigWidget;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/amazon/kcp/home/models/voltron/MainWidget;->config:Lcom/amazon/kcp/home/models/voltron/ConfigWidget;

    return-object v0
.end method

.method public final getWidgets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/home/models/voltron/SidekickCard;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/amazon/kcp/home/models/voltron/MainWidget;->widgets:Ljava/util/List;

    return-object v0
.end method
