.class Lcom/amazon/kcp/search/SearchActivity$1;
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

    .line 305
    iput-object p1, p0, Lcom/amazon/kcp/search/SearchActivity$1;->this$0:Lcom/amazon/kcp/search/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 308
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchActivity$1;->this$0:Lcom/amazon/kcp/search/SearchActivity;

    iget-object p1, p1, Lcom/amazon/kcp/search/SearchActivity;->searchInput:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/amazon/android/util/UIUtils;->closeSoftKeyboard(Landroid/view/View;)V

    .line 309
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchActivity$1;->this$0:Lcom/amazon/kcp/search/SearchActivity;

    iget-object p1, p1, Lcom/amazon/kcp/search/SearchActivity;->searchInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    const/4 p1, 0x0

    return p1
.end method
