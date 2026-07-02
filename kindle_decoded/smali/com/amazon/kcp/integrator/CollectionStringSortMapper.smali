.class public final Lcom/amazon/kcp/integrator/CollectionStringSortMapper;
.super Lcom/amazon/kcp/integrator/CollectionSortMapper;
.source "SortMapper.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kcp/integrator/CollectionSortMapper<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final collection:Lcom/amazon/kindle/collections/dto/ICollection;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/collections/dto/ICollection;)V
    .locals 1

    const-string v0, "collection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0, p1}, Lcom/amazon/kcp/integrator/CollectionSortMapper;-><init>(Lcom/amazon/kindle/collections/dto/ICollection;)V

    iput-object p1, p0, Lcom/amazon/kcp/integrator/CollectionStringSortMapper;->collection:Lcom/amazon/kindle/collections/dto/ICollection;

    return-void
.end method


# virtual methods
.method public bridge synthetic generateSort(I)Ljava/lang/Object;
    .locals 0

    .line 71
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/integrator/CollectionStringSortMapper;->generateSort(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public generateSort(I)Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/amazon/kcp/integrator/CollectionStringSortMapper;->collection:Lcom/amazon/kindle/collections/dto/ICollection;

    invoke-static {v0, p1}, Lcom/amazon/kcp/integrator/BookDataHelper;->stringForSortTypeFromCollectionData(Lcom/amazon/kindle/collections/dto/ICollection;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
