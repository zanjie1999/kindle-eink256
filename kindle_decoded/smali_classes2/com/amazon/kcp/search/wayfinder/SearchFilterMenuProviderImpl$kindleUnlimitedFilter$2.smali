.class final Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$kindleUnlimitedFilter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SearchFilterMenuProviderImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$kindleUnlimitedFilter$2;->this$0:Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;
    .locals 4

    .line 75
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$kindleUnlimitedFilter$2;->this$0:Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;

    invoke-static {v0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->access$getMarketplace$p(Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;)Lcom/amazon/kcp/application/Marketplace;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->access$getKindleUnlimitedBadgeDescriptionId(Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;Lcom/amazon/kcp/application/Marketplace;)I

    move-result v0

    .line 76
    new-instance v1, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    .line 80
    iget-object v2, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$kindleUnlimitedFilter$2;->this$0:Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;

    invoke-static {v2}, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->access$getTheme$p(Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kcp/util/LibraryUtils;->getKUBadgeDrawable(Lcom/amazon/kindle/krx/theme/Theme;)I

    move-result v2

    const-string v3, "KindleUnlimited"

    .line 76
    invoke-direct {v1, v3, v0, v0, v2}, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;-><init>(Ljava/lang/String;III)V

    return-object v1
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$kindleUnlimitedFilter$2;->invoke()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    move-result-object v0

    return-object v0
.end method
