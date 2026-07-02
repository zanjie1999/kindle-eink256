.class public Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter$SpellCorrectionClickHandler;
.super Ljava/lang/Object;
.source "SearchResultsRecyclerAdapter.java"

# interfaces
.implements Lcom/amazon/kcp/search/views/SpellCorrectionViewHolder$ClickHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SpellCorrectionClickHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;


# direct methods
.method protected constructor <init>(Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter$SpellCorrectionClickHandler;->this$0:Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;)V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter$SpellCorrectionClickHandler;->this$0:Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;

    invoke-static {v0}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->access$000(Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;)Lcom/amazon/kcp/search/SearchInteractionHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter$SpellCorrectionClickHandler;->this$0:Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;

    invoke-static {v0}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->access$000(Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;)Lcom/amazon/kcp/search/SearchInteractionHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter$SpellCorrectionClickHandler;->this$0:Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;

    invoke-static {v1}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->access$300(Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;)I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/amazon/kcp/search/SearchInteractionHandler;->onSpellCorrectionRejected(ILcom/amazon/kcp/search/store/model/SpellCorrectionInfo;)V

    :cond_0
    return-void
.end method
