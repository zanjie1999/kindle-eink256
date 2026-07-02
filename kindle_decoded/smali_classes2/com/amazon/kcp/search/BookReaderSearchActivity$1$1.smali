.class Lcom/amazon/kcp/search/BookReaderSearchActivity$1$1;
.super Ljava/lang/Object;
.source "BookReaderSearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/BookReaderSearchActivity$1;->onSearchStarted(Lcom/amazon/kcp/search/IBookSearchController;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/search/BookReaderSearchActivity$1;

.field final synthetic val$indexAvailable:Z


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/BookReaderSearchActivity$1;Z)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity$1$1;->this$1:Lcom/amazon/kcp/search/BookReaderSearchActivity$1;

    iput-boolean p2, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity$1$1;->val$indexAvailable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 125
    iget-boolean v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity$1$1;->val$indexAvailable:Z

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity$1$1;->this$1:Lcom/amazon/kcp/search/BookReaderSearchActivity$1;

    iget-object v0, v0, Lcom/amazon/kcp/search/BookReaderSearchActivity$1;->this$0:Lcom/amazon/kcp/search/BookReaderSearchActivity;

    iget-object v1, v0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->titleView:Landroid/widget/TextView;

    sget v2, Lcom/amazon/kindle/krl/R$string;->reader_indexing:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity$1$1;->this$1:Lcom/amazon/kcp/search/BookReaderSearchActivity$1;

    iget-object v0, v0, Lcom/amazon/kcp/search/BookReaderSearchActivity$1;->this$0:Lcom/amazon/kcp/search/BookReaderSearchActivity;

    iget-object v1, v0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/search/BookReaderSearchActivity;->setSearchingText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
