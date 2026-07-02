.class Lcom/amazon/kcp/search/SearchActivity$3;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


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

    .line 330
    iput-object p1, p0, Lcom/amazon/kcp/search/SearchActivity$3;->this$0:Lcom/amazon/kcp/search/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 333
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/16 p2, 0x9

    if-eq p1, p2, :cond_0

    .line 344
    invoke-static {}, Lcom/amazon/kcp/search/SearchActivity;->access$100()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Detected invalid action "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " onHover event"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 336
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchActivity$3;->this$0:Lcom/amazon/kcp/search/SearchActivity;

    invoke-static {p1}, Lcom/amazon/kcp/search/SearchActivity;->access$000(Lcom/amazon/kcp/search/SearchActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 337
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchActivity$3;->this$0:Lcom/amazon/kcp/search/SearchActivity;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/SearchActivity;->performActionsForSearchBarTouch()V

    goto :goto_0

    .line 339
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchActivity$3;->this$0:Lcom/amazon/kcp/search/SearchActivity;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/SearchActivity;->executeSuggestionsForSearchBarTouch()V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
