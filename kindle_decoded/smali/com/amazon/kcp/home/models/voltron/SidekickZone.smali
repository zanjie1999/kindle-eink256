.class public abstract Lcom/amazon/kcp/home/models/voltron/SidekickZone;
.super Ljava/lang/Object;
.source "SidekickModels.kt"

# interfaces
.implements Lcom/amazon/kcp/home/database/HomeZoneData;


# instance fields
.field private final actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/home/models/voltron/VoltronAction;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/home/models/voltron/VoltronAction;",
            ">;)V"
        }
    .end annotation

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/models/voltron/SidekickZone;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/kcp/home/models/voltron/SidekickZone;->actions:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 178
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/home/models/voltron/SidekickZone;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public asin()Ljava/lang/String;
    .locals 1

    .line 178
    invoke-static {p0}, Lcom/amazon/kcp/home/database/HomeZoneData$DefaultImpls;->asin(Lcom/amazon/kcp/home/database/HomeZoneData;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/home/models/voltron/VoltronAction;",
            ">;"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/amazon/kcp/home/models/voltron/SidekickZone;->actions:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/amazon/kcp/home/models/voltron/SidekickZone;->name:Ljava/lang/String;

    return-object v0
.end method
