.class public interface abstract Lcom/amazon/kindle/setting/item/ItemUIBuilder;
.super Ljava/lang/Object;
.source "ItemUIBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract build(Landroid/content/Context;Lcom/amazon/kindle/setting/item/Item;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amazon/kindle/setting/item/Item;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract supportedType()Lkotlin/reflect/KClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/KClass<",
            "+",
            "Lcom/amazon/kindle/setting/item/Item;",
            ">;"
        }
    .end annotation
.end method
