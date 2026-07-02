.class public final Lcom/amazon/kcp/library/fragments/CurrentValueCache;
.super Ljava/lang/Object;
.source "RecyclerAdapterUpdater.kt"


# instance fields
.field private final currentValue:Lcom/amazon/kindle/observablemodel/ModelCurrentValue;

.field private itemCount:I

.field private nextStableId:J

.field private final stableIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Lcom/amazon/kindle/observablemodel/ModelCurrentValue;

    invoke-direct {v0}, Lcom/amazon/kindle/observablemodel/ModelCurrentValue;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/CurrentValueCache;->currentValue:Lcom/amazon/kindle/observablemodel/ModelCurrentValue;

    .line 101
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/CurrentValueCache;->stableIds:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final clearStableId(Lcom/amazon/kindle/observablemodel/ItemID;)V
    .locals 1

    const-string v0, "itemId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/CurrentValueCache;->stableIds:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final getItemCount()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/amazon/kcp/library/fragments/CurrentValueCache;->itemCount:I

    return v0
.end method

.method public final getItemIdAtPosition(I)Lcom/amazon/kindle/observablemodel/ItemID;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/CurrentValueCache;->currentValue:Lcom/amazon/kindle/observablemodel/ModelCurrentValue;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/observablemodel/ModelCurrentValue;->getItemIDAtPosition(I)Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object p1

    const-string v0, "currentValue.getItemIDAtPosition(position)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getItemIndexTitles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/CurrentValueCache;->currentValue:Lcom/amazon/kindle/observablemodel/ModelCurrentValue;

    invoke-virtual {v0}, Lcom/amazon/kindle/observablemodel/ModelCurrentValue;->getItemIndexTitles()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getItemSectionSizes()[I
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/CurrentValueCache;->currentValue:Lcom/amazon/kindle/observablemodel/ModelCurrentValue;

    invoke-virtual {v0}, Lcom/amazon/kindle/observablemodel/ModelCurrentValue;->getItemSectionSizes()[I

    move-result-object v0

    const-string v1, "currentValue.itemSectionSizes"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getStableIdForItemId(Lcom/amazon/kindle/observablemodel/ItemID;)J
    .locals 4

    const-string v0, "itemId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/CurrentValueCache;->stableIds:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 118
    iget-wide v0, p0, Lcom/amazon/kcp/library/fragments/CurrentValueCache;->nextStableId:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/amazon/kcp/library/fragments/CurrentValueCache;->nextStableId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/CurrentValueCache;->stableIds:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final mergeChangeUpdate(Lcom/amazon/kindle/observablemodel/ModelChangeUpdate;)[I
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/CurrentValueCache;->currentValue:Lcom/amazon/kindle/observablemodel/ModelCurrentValue;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/observablemodel/ModelCurrentValue;->mergeChangeUpdate(Lcom/amazon/kindle/observablemodel/ModelChangeUpdate;)[I

    move-result-object p1

    .line 107
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/CurrentValueCache;->currentValue:Lcom/amazon/kindle/observablemodel/ModelCurrentValue;

    invoke-virtual {v0}, Lcom/amazon/kindle/observablemodel/ModelCurrentValue;->getItemCount()I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/library/fragments/CurrentValueCache;->itemCount:I

    const-string/jumbo v0, "notifyOps"

    .line 108
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
