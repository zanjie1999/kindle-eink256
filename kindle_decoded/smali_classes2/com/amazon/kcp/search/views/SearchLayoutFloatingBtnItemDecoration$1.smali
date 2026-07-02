.class Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration$1;
.super Ljava/lang/Object;
.source "SearchLayoutFloatingBtnItemDecoration.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration$1;->this$0:Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessibilityStateChanged(Z)V
    .locals 0

    .line 69
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isSpokenFeedbackAccessibilityServiceEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 71
    iget-object p1, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration$1;->this$0:Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;

    invoke-static {p1}, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->access$000(Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;)V

    goto :goto_0

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration$1;->this$0:Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;

    invoke-static {p1}, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->access$100(Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;)V

    :goto_0
    return-void
.end method
