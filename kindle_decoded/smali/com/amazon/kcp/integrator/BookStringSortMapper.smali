.class public final Lcom/amazon/kcp/integrator/BookStringSortMapper;
.super Lcom/amazon/kcp/integrator/BookSortMapper;
.source "SortMapper.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kcp/integrator/BookSortMapper<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final bookData:Lcom/amazon/kindle/content/ContentMetadata;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/content/ContentMetadata;)V
    .locals 1

    const-string v0, "bookData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0, p1}, Lcom/amazon/kcp/integrator/BookSortMapper;-><init>(Lcom/amazon/kindle/content/ContentMetadata;)V

    iput-object p1, p0, Lcom/amazon/kcp/integrator/BookStringSortMapper;->bookData:Lcom/amazon/kindle/content/ContentMetadata;

    return-void
.end method


# virtual methods
.method public bridge synthetic generateSort(I)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/integrator/BookStringSortMapper;->generateSort(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public generateSort(I)Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazon/kcp/integrator/BookStringSortMapper;->bookData:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-static {v0, p1}, Lcom/amazon/kcp/integrator/BookDataHelper;->stringForSortTypeFromBookData(Lcom/amazon/kindle/content/ContentMetadata;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
