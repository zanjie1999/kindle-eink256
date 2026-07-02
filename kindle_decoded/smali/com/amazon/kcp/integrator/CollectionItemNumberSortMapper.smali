.class public final Lcom/amazon/kcp/integrator/CollectionItemNumberSortMapper;
.super Lcom/amazon/kcp/integrator/CollectionItemSortMapper;
.source "SortMapper.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kcp/integrator/CollectionItemSortMapper<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final collectionItem:Lcom/amazon/kindle/collections/dto/ICollectionItem;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/collections/dto/ICollectionItem;)V
    .locals 1

    const-string v0, "collectionItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-direct {p0, p1}, Lcom/amazon/kcp/integrator/CollectionItemSortMapper;-><init>(Lcom/amazon/kindle/collections/dto/ICollectionItem;)V

    iput-object p1, p0, Lcom/amazon/kcp/integrator/CollectionItemNumberSortMapper;->collectionItem:Lcom/amazon/kindle/collections/dto/ICollectionItem;

    return-void
.end method


# virtual methods
.method public generateSort(I)Ljava/lang/Integer;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/amazon/kcp/integrator/CollectionItemNumberSortMapper;->collectionItem:Lcom/amazon/kindle/collections/dto/ICollectionItem;

    invoke-static {v0, p1}, Lcom/amazon/kcp/integrator/BookDataHelper;->numberForSortTypeFromCollectionItemData(Lcom/amazon/kindle/collections/dto/ICollectionItem;I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateSort(I)Ljava/lang/Object;
    .locals 0

    .line 87
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/integrator/CollectionItemNumberSortMapper;->generateSort(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
