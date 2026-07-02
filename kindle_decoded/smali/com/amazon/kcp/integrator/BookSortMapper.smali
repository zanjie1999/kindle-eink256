.class public abstract Lcom/amazon/kcp/integrator/BookSortMapper;
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
.field private final bookData:Lcom/amazon/kindle/content/ContentMetadata;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/content/ContentMetadata;)V
    .locals 1

    const-string v0, "bookData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/integrator/BookSortMapper;->bookData:Lcom/amazon/kindle/content/ContentMetadata;

    return-void
.end method


# virtual methods
.method public generateId()Lcom/amazon/kindle/observablemodel/ItemID;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/kcp/integrator/BookSortMapper;->bookData:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/observablemodel/ItemID;->bookItemWithIdentifier(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
