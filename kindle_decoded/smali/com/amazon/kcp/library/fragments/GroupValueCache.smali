.class public final Lcom/amazon/kcp/library/fragments/GroupValueCache;
.super Ljava/lang/Object;
.source "LargeLibraryRecyclerAdapterHelper.kt"


# instance fields
.field private final groupValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            "Lcom/amazon/kcp/library/fragments/GroupValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/GroupValueCache;->groupValues:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final getValue(Lcom/amazon/kindle/observablemodel/ItemID;)Lcom/amazon/kcp/library/fragments/GroupValue;
    .locals 1

    if-eqz p1, :cond_0

    .line 444
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/GroupValueCache;->groupValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/library/fragments/GroupValue;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final reset()V
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/GroupValueCache;->groupValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final updateValue(Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kindle/observablemodel/ModelGroupUpdate;)V
    .locals 5

    const-string v0, "itemId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupUpdate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 439
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/GroupValueCache;->groupValues:Ljava/util/Map;

    new-instance v1, Lcom/amazon/kcp/library/fragments/GroupValue;

    invoke-virtual {p2}, Lcom/amazon/kindle/observablemodel/ModelGroupUpdate;->getRepresentativeID()Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object v2

    const-string v3, "groupUpdate.representativeID"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/amazon/kindle/observablemodel/ModelCountUpdate;->getCount()J

    move-result-wide v3

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/amazon/kcp/library/fragments/GroupValue;-><init>(Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kindle/observablemodel/ItemID;J)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
