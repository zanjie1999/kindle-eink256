.class Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$10;
.super Ljava/lang/Object;
.source "ReaderSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)V
    .locals 0

    .line 944
    iput-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$10;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 947
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$10;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$100(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Landroidx/appcompat/widget/SearchView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 948
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$10;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$100(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Landroidx/appcompat/widget/SearchView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    :cond_0
    return-void
.end method
