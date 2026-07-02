.class public Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuGroup;
.super Ljava/lang/Object;
.source "SearchFilterSortMenuGroup.kt"


# instance fields
.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private final titleResId:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, v0, v1, v2, v0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuGroup;-><init>(Ljava/util/List;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuGroup;->items:Ljava/util/List;

    iput p2, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuGroup;->titleResId:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 13
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, -0x1

    .line 14
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuGroup;-><init>(Ljava/util/List;I)V

    return-void
.end method


# virtual methods
.method public final getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuGroup;->items:Ljava/util/List;

    return-object v0
.end method

.method public final getTitleResId()I
    .locals 1

    .line 14
    iget v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuGroup;->titleResId:I

    return v0
.end method
