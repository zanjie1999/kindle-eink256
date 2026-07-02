.class public final Lcom/amazon/kcp/library/NarrativeDataCacheImpl;
.super Ljava/lang/Object;
.source "NarrativeDataCache.kt"

# interfaces
.implements Lcom/amazon/kcp/library/NarrativeDataCache;


# instance fields
.field private final itemIdToNarrativeMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            "Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/NarrativeDataCacheImpl;->itemIdToNarrativeMapping:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public cacheNarrativeDisplayItem(Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem;)V
    .locals 1

    const-string v0, "itemId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "narrativeItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lcom/amazon/kcp/library/NarrativeDataCacheImpl;->getItemIdToNarrativeMapping()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clear()V
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/amazon/kcp/library/NarrativeDataCacheImpl;->getItemIdToNarrativeMapping()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public getItemIdToNarrativeMapping()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            "Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/amazon/kcp/library/NarrativeDataCacheImpl;->itemIdToNarrativeMapping:Ljava/util/Map;

    return-object v0
.end method

.method public getNarrativeDisplayItem(Lcom/amazon/kindle/observablemodel/ItemID;)Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem;
    .locals 1

    const-string v0, "itemId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Lcom/amazon/kcp/library/NarrativeDataCacheImpl;->getItemIdToNarrativeMapping()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem;

    return-object p1
.end method
