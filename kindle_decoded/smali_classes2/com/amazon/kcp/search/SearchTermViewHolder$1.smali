.class Lcom/amazon/kcp/search/SearchTermViewHolder$1;
.super Ljava/lang/Object;
.source "SearchTermViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/SearchTermViewHolder;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/SearchTermViewHolder;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/SearchTermViewHolder;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/amazon/kcp/search/SearchTermViewHolder$1;->this$0:Lcom/amazon/kcp/search/SearchTermViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 35
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchTermViewHolder$1;->this$0:Lcom/amazon/kcp/search/SearchTermViewHolder;

    iget-object v0, p1, Lcom/amazon/kcp/search/SearchTermViewHolder;->text:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/amazon/kcp/search/SearchTermViewHolder;->clickListener:Lcom/amazon/kcp/search/OnSearchTermClickListener;

    if-eqz p1, :cond_0

    .line 36
    invoke-interface {p1, v0}, Lcom/amazon/kcp/search/OnSearchTermClickListener;->onSearchTermClick(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
