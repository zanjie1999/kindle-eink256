.class public abstract Lcom/amazon/kcp/integrator/CollectionItemSortMapper;
.super Ljava/lang/Object;
.source "SortMapper.kt"

# interfaces
.implements Lcom/amazon/kcp/integrator/SortMapper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazon/kcp/integrator/SortMapper<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final collectionItem:Lcom/amazon/kindle/collections/dto/ICollectionItem;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/collections/dto/ICollectionItem;)V
    .locals 1

    const-string v0, "collectionItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/integrator/CollectionItemSortMapper;->collectionItem:Lcom/amazon/kindle/collections/dto/ICollectionItem;

    return-void
.end method


# virtual methods
.method public generateId()Lcom/amazon/kindle/observablemodel/ItemID;
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/amazon/kcp/integrator/CollectionItemSortMapper;->collectionItem:Lcom/amazon/kindle/collections/dto/ICollectionItem;

    invoke-interface {v0}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/observablemodel/ItemID;->bookItemWithIdentifier(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/amazon/kcp/integrator/CollectionItemSortMapper;->collectionItem:Lcom/amazon/kindle/collections/dto/ICollectionItem;

    invoke-interface {v1}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getCollectionId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/observablemodel/ItemID;->collectionItemWithIdentifier(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object v1

    .line 83
    new-instance v2, Lcom/amazon/kindle/observablemodel/CollectionItemID;

    invoke-direct {v2, v0, v1}, Lcom/amazon/kindle/observablemodel/CollectionItemID;-><init>(Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kindle/observablemodel/ItemID;)V

    return-object v2
.end method
