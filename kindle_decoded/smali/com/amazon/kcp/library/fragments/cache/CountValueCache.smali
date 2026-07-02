.class public final Lcom/amazon/kcp/library/fragments/cache/CountValueCache;
.super Ljava/lang/Object;
.source "CountValueCache.kt"


# instance fields
.field private final countValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            "Lcom/amazon/kcp/library/fragments/cache/CountValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/amazon/kcp/library/fragments/cache/CountValueCache;-><init>(Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            "Lcom/amazon/kcp/library/fragments/cache/CountValue;",
            ">;)V"
        }
    .end annotation

    const-string v0, "countValues"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/cache/CountValueCache;->countValues:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 42
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/fragments/cache/CountValueCache;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final getValue(Lcom/amazon/kindle/observablemodel/ItemID;)Lcom/amazon/kcp/library/fragments/cache/CountValue;
    .locals 1

    if-eqz p1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/cache/CountValueCache;->countValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/library/fragments/cache/CountValue;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final reset()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/cache/CountValueCache;->countValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final updateCurrentValue$LargeLibraryImplementation_release(Lcom/amazon/kcp/library/fragments/cache/CountValue;Lcom/amazon/kcp/library/listener/LibraryCountUpdateListener;)Z
    .locals 12

    const-string v0, "countValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1}, Lcom/amazon/kcp/library/fragments/cache/CountValue;->getItemId()Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/fragments/cache/CountValueCache;->getValue(Lcom/amazon/kindle/observablemodel/ItemID;)Lcom/amazon/kcp/library/fragments/cache/CountValue;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 71
    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/cache/CountValue;->isCU()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kcp/library/fragments/cache/CountValue;->isCU()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 72
    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/cache/CountValue;->isCU()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1b

    const/4 v9, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v9}, Lcom/amazon/kcp/library/fragments/cache/CountValue;->copy$default(Lcom/amazon/kcp/library/fragments/cache/CountValue;Lcom/amazon/kindle/observablemodel/ItemID;ZZZZILjava/lang/Object;)Lcom/amazon/kcp/library/fragments/cache/CountValue;

    move-result-object v1

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object v2, p1

    .line 74
    :goto_0
    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/cache/CountValue;->isKU()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/amazon/kcp/library/fragments/cache/CountValue;->isKU()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 75
    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/cache/CountValue;->isKU()Z

    move-result v6

    const/4 v7, 0x0

    const/16 v8, 0x17

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/amazon/kcp/library/fragments/cache/CountValue;->copy$default(Lcom/amazon/kcp/library/fragments/cache/CountValue;Lcom/amazon/kindle/observablemodel/ItemID;ZZZZILjava/lang/Object;)Lcom/amazon/kcp/library/fragments/cache/CountValue;

    move-result-object v2

    :cond_1
    move-object v3, v2

    .line 77
    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/cache/CountValue;->isPrimeReading()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/amazon/kcp/library/fragments/cache/CountValue;->isPrimeReading()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 78
    invoke-virtual {p1}, Lcom/amazon/kcp/library/fragments/cache/CountValue;->isPrimeReading()Z

    move-result v8

    const/16 v9, 0xf

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lcom/amazon/kcp/library/fragments/cache/CountValue;->copy$default(Lcom/amazon/kcp/library/fragments/cache/CountValue;Lcom/amazon/kindle/observablemodel/ItemID;ZZZZILjava/lang/Object;)Lcom/amazon/kcp/library/fragments/cache/CountValue;

    move-result-object v3

    :cond_2
    move-object v4, v3

    .line 80
    instance-of p2, p2, Lcom/amazon/kcp/library/listener/LargeLibraryReadCountListener;

    if-nez p2, :cond_4

    const/4 v5, 0x0

    .line 81
    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/cache/CountValue;->isRead()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1d

    const/4 v11, 0x0

    invoke-static/range {v4 .. v11}, Lcom/amazon/kcp/library/fragments/cache/CountValue;->copy$default(Lcom/amazon/kcp/library/fragments/cache/CountValue;Lcom/amazon/kindle/observablemodel/ItemID;ZZZZILjava/lang/Object;)Lcom/amazon/kcp/library/fragments/cache/CountValue;

    move-result-object v4

    goto :goto_1

    :cond_3
    move-object v4, p1

    .line 84
    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/amazon/kcp/library/fragments/cache/CountValueCache;->countValues:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/fragments/cache/CountValue;->getItemId()Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object p1

    invoke-interface {p2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_5

    .line 85
    invoke-virtual {v0, v4}, Lcom/amazon/kcp/library/fragments/cache/CountValue;->needsRefresh(Lcom/amazon/kcp/library/fragments/cache/CountValue;)Z

    move-result p1

    goto :goto_2

    :cond_5
    const/4 p1, 0x1

    :goto_2
    return p1
.end method

.method public final updateValue(Lcom/amazon/kindle/observablemodel/ModelCountUpdate;Lcom/amazon/kcp/library/listener/LibraryCountUpdateListener;)Z
    .locals 1

    const-string v0, "countUpdate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "countListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-interface {p2, p1}, Lcom/amazon/kcp/library/listener/LibraryCountUpdateListener;->createCountValue(Lcom/amazon/kindle/observablemodel/ModelCountUpdate;)Lcom/amazon/kcp/library/fragments/cache/CountValue;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/library/fragments/cache/CountValueCache;->updateCurrentValue$LargeLibraryImplementation_release(Lcom/amazon/kcp/library/fragments/cache/CountValue;Lcom/amazon/kcp/library/listener/LibraryCountUpdateListener;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
