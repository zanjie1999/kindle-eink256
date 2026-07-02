.class public final Lcom/amazon/kindle/setting/item/ItemsUpdateServiceImpl;
.super Ljava/lang/Object;
.source "ItemsUpdateService.kt"

# interfaces
.implements Lcom/amazon/kindle/setting/item/ItemsUpdateService;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nItemsUpdateService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ItemsUpdateService.kt\ncom/amazon/kindle/setting/item/ItemsUpdateServiceImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,67:1\n1497#2,2:68\n*E\n*S KotlinDebug\n*F\n+ 1 ItemsUpdateService.kt\ncom/amazon/kindle/setting/item/ItemsUpdateServiceImpl\n*L\n64#1,2:68\n*E\n"
.end annotation


# instance fields
.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/setting/item/ItemUpdateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/setting/item/ItemsUpdateServiceImpl;->listeners:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public deregisterListener(Lcom/amazon/kindle/setting/item/ItemUpdateListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/amazon/kindle/setting/item/ItemsUpdateServiceImpl;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public notifyItemUpdate(Lcom/amazon/kindle/setting/item/Item;)V
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/amazon/kindle/setting/item/ItemsUpdateServiceImpl;->listeners:Ljava/util/Set;

    .line 68
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/setting/item/ItemUpdateListener;

    .line 64
    invoke-interface {v1, p1}, Lcom/amazon/kindle/setting/item/ItemUpdateListener;->refreshItem(Lcom/amazon/kindle/setting/item/Item;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public registerListener(Lcom/amazon/kindle/setting/item/ItemUpdateListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/amazon/kindle/setting/item/ItemsUpdateServiceImpl;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
