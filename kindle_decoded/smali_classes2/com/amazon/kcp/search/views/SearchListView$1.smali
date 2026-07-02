.class Lcom/amazon/kcp/search/views/SearchListView$1;
.super Ljava/lang/Object;
.source "SearchListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/views/SearchListView;->update(Lcom/amazon/kcp/search/SearchProvider;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/views/SearchListView;

.field final synthetic val$scrollIndex:I

.field final synthetic val$scrollOffset:I


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/views/SearchListView;II)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/amazon/kcp/search/views/SearchListView$1;->this$0:Lcom/amazon/kcp/search/views/SearchListView;

    iput p2, p0, Lcom/amazon/kcp/search/views/SearchListView$1;->val$scrollIndex:I

    iput p3, p0, Lcom/amazon/kcp/search/views/SearchListView$1;->val$scrollOffset:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchListView$1;->this$0:Lcom/amazon/kcp/search/views/SearchListView;

    iget v1, p0, Lcom/amazon/kcp/search/views/SearchListView$1;->val$scrollIndex:I

    iget v2, p0, Lcom/amazon/kcp/search/views/SearchListView$1;->val$scrollOffset:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    return-void
.end method
