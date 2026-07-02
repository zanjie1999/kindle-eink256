.class Lcom/amazon/kcp/search/BookReaderSearchActivity$2;
.super Ljava/lang/Object;
.source "BookReaderSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/BookReaderSearchActivity;->preSearchSetUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/BookReaderSearchActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/BookReaderSearchActivity;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity$2;->this$0:Lcom/amazon/kcp/search/BookReaderSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    if-nez p2, :cond_1

    .line 385
    iget-object p1, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity$2;->this$0:Lcom/amazon/kcp/search/BookReaderSearchActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 387
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 389
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity$2;->this$0:Lcom/amazon/kcp/search/BookReaderSearchActivity;

    invoke-static {p1}, Lcom/amazon/kcp/search/BookReaderSearchActivity;->access$300(Lcom/amazon/kcp/search/BookReaderSearchActivity;)Landroid/widget/SearchView;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0, p2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 390
    iget-object p1, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity$2;->this$0:Lcom/amazon/kcp/search/BookReaderSearchActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    :cond_1
    return-void
.end method
