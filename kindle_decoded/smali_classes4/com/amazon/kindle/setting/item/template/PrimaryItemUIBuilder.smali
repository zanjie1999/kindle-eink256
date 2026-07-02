.class public abstract Lcom/amazon/kindle/setting/item/template/PrimaryItemUIBuilder;
.super Ljava/lang/Object;
.source "PrimaryItemUIBuilder.kt"

# interfaces
.implements Lcom/amazon/kindle/setting/item/ItemUIBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/setting/item/ItemUIBuilder<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public supportedType()Lkotlin/reflect/KClass;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/KClass<",
            "+",
            "Lcom/amazon/kindle/setting/item/Item;",
            ">;"
        }
    .end annotation

    .line 16
    const-class v0, Lcom/amazon/kindle/setting/item/template/PrimaryItem;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    return-object v0
.end method
