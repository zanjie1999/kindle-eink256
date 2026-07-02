.class public interface abstract Lcom/amazon/kindle/setting/item/ItemsRepository;
.super Ljava/lang/Object;
.source "ItemsRepository.kt"


# virtual methods
.method public abstract findItemByID(Ljava/lang/String;)Lcom/amazon/kindle/setting/item/Item;
.end method

.method public abstract getAllItems()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/setting/item/Item;",
            ">;"
        }
    .end annotation
.end method

.method public abstract refresh()V
.end method
