.class Lcom/amazon/kcp/search/BookReaderSearchActivity$SearchBarQueryListener;
.super Ljava/lang/Object;
.source "BookReaderSearchActivity.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/BookReaderSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchBarQueryListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/BookReaderSearchActivity;


# direct methods
.method private constructor <init>(Lcom/amazon/kcp/search/BookReaderSearchActivity;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity$SearchBarQueryListener;->this$0:Lcom/amazon/kcp/search/BookReaderSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/search/BookReaderSearchActivity;Lcom/amazon/kcp/search/BookReaderSearchActivity$1;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/BookReaderSearchActivity$SearchBarQueryListener;-><init>(Lcom/amazon/kcp/search/BookReaderSearchActivity;)V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity$SearchBarQueryListener;->this$0:Lcom/amazon/kcp/search/BookReaderSearchActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 89
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 92
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity$SearchBarQueryListener;->this$0:Lcom/amazon/kcp/search/BookReaderSearchActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v1, "query"

    .line 93
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.action.SEARCH"

    .line 94
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    iget-object p1, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity$SearchBarQueryListener;->this$0:Lcom/amazon/kcp/search/BookReaderSearchActivity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method
