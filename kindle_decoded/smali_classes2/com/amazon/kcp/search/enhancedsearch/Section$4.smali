.class Lcom/amazon/kcp/search/enhancedsearch/Section$4;
.super Ljava/lang/Object;
.source "Section.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/enhancedsearch/Section;->onBeginSearchResultGroup(Lcom/amazon/kindle/krx/search/ISearchResultGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/enhancedsearch/Section;

.field final synthetic val$searchResultGroup:Lcom/amazon/kindle/krx/search/ISearchResultGroup;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/enhancedsearch/Section;Lcom/amazon/kindle/krx/search/ISearchResultGroup;)V
    .locals 0

    .line 443
    iput-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/Section$4;->this$0:Lcom/amazon/kcp/search/enhancedsearch/Section;

    iput-object p2, p0, Lcom/amazon/kcp/search/enhancedsearch/Section$4;->val$searchResultGroup:Lcom/amazon/kindle/krx/search/ISearchResultGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 446
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section$4;->this$0:Lcom/amazon/kcp/search/enhancedsearch/Section;

    invoke-static {v0}, Lcom/amazon/kcp/search/enhancedsearch/Section;->access$508(Lcom/amazon/kcp/search/enhancedsearch/Section;)I

    .line 447
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section$4;->this$0:Lcom/amazon/kcp/search/enhancedsearch/Section;

    invoke-static {v0}, Lcom/amazon/kcp/search/enhancedsearch/Section;->access$408(Lcom/amazon/kcp/search/enhancedsearch/Section;)I

    .line 449
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section$4;->this$0:Lcom/amazon/kcp/search/enhancedsearch/Section;

    new-instance v1, Lcom/amazon/kcp/search/enhancedsearch/SearchResultSubSectionHeader;

    iget-object v2, p0, Lcom/amazon/kcp/search/enhancedsearch/Section$4;->val$searchResultGroup:Lcom/amazon/kindle/krx/search/ISearchResultGroup;

    invoke-static {v0}, Lcom/amazon/kcp/search/enhancedsearch/Section;->access$400(Lcom/amazon/kcp/search/enhancedsearch/Section;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/amazon/kcp/search/enhancedsearch/SearchResultSubSectionHeader;-><init>(Lcom/amazon/kindle/krx/search/ISearchResultGroup;I)V

    invoke-static {v0, v1}, Lcom/amazon/kcp/search/enhancedsearch/Section;->access$700(Lcom/amazon/kcp/search/enhancedsearch/Section;Lcom/amazon/kindle/krx/search/ISearchResult;)V

    return-void
.end method
