.class final Lcom/amazon/kcp/search/views/InlineSearchSuggestionViewHolder$bindData$1;
.super Ljava/lang/Object;
.source "InlineSearchSuggestionViewHolder.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/views/InlineSearchSuggestionViewHolder;->bindData(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $suggestion:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/kcp/search/views/InlineSearchSuggestionViewHolder;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/views/InlineSearchSuggestionViewHolder;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/search/views/InlineSearchSuggestionViewHolder$bindData$1;->this$0:Lcom/amazon/kcp/search/views/InlineSearchSuggestionViewHolder;

    iput-object p2, p0, Lcom/amazon/kcp/search/views/InlineSearchSuggestionViewHolder$bindData$1;->$suggestion:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 38
    iget-object p1, p0, Lcom/amazon/kcp/search/views/InlineSearchSuggestionViewHolder$bindData$1;->this$0:Lcom/amazon/kcp/search/views/InlineSearchSuggestionViewHolder;

    invoke-static {p1}, Lcom/amazon/kcp/search/views/InlineSearchSuggestionViewHolder;->access$getClickHandler$p(Lcom/amazon/kcp/search/views/InlineSearchSuggestionViewHolder;)Lcom/amazon/kcp/search/views/InlineSearchSuggestionViewHolder$ClickHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/search/views/InlineSearchSuggestionViewHolder$bindData$1;->$suggestion:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/amazon/kcp/search/views/InlineSearchSuggestionViewHolder$ClickHandler;->onClick(Ljava/lang/String;)V

    return-void
.end method
