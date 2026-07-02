.class public final Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;
.super Ljava/lang/Object;
.source "SearchFilterSortMenuItem.kt"


# instance fields
.field private final contentDescriptionResId:I

.field private final imageResId:I

.field private final itemId:Ljava/lang/String;

.field private final titleResId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .locals 1

    const-string v0, "itemId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;->itemId:Ljava/lang/String;

    iput p2, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;->contentDescriptionResId:I

    iput p3, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;->titleResId:I

    iput p4, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;->imageResId:I

    return-void
.end method


# virtual methods
.method public final getContentDescriptionResId()I
    .locals 1

    .line 14
    iget v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;->contentDescriptionResId:I

    return v0
.end method

.method public final getImageResId()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;->imageResId:I

    return v0
.end method

.method public final getItemId()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitleResId()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;->titleResId:I

    return v0
.end method
