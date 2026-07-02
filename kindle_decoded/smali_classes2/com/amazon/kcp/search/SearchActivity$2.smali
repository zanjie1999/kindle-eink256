.class Lcom/amazon/kcp/search/SearchActivity$2;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/SearchActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/SearchActivity;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/amazon/kcp/search/SearchActivity$2;->this$0:Lcom/amazon/kcp/search/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 317
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 318
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchActivity$2;->this$0:Lcom/amazon/kcp/search/SearchActivity;

    invoke-static {p1}, Lcom/amazon/kcp/search/SearchActivity;->access$000(Lcom/amazon/kcp/search/SearchActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 319
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchActivity$2;->this$0:Lcom/amazon/kcp/search/SearchActivity;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/SearchActivity;->performActionsForSearchBarTouch()V

    goto :goto_0

    .line 321
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchActivity$2;->this$0:Lcom/amazon/kcp/search/SearchActivity;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/SearchActivity;->executeSuggestionsForSearchBarTouch()V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
