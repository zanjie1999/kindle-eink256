.class public abstract Lcom/amazon/kcp/integrator/CollectionSortMapper;
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
.field private final collection:Lcom/amazon/kindle/collections/dto/ICollection;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/collections/dto/ICollection;)V
    .locals 1

    const-string v0, "collection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/integrator/CollectionSortMapper;->collection:Lcom/amazon/kindle/collections/dto/ICollection;

    return-void
.end method


# virtual methods
.method public generateId()Lcom/amazon/kindle/observablemodel/ItemID;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/amazon/kcp/integrator/CollectionSortMapper;->collection:Lcom/amazon/kindle/collections/dto/ICollection;

    invoke-interface {v0}, Lcom/amazon/kindle/collections/dto/ICollection;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/observablemodel/ItemID;->collectionItemWithIdentifier(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object v0

    return-object v0
.end method
