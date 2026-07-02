.class Lcom/amazon/kcp/redding/DocumentActivity$1;
.super Ljava/lang/Object;
.source "DocumentActivity.java"

# interfaces
.implements Lcom/amazon/android/widget/SearchViewWrapper$OnFocusChangeListenerWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/redding/DocumentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/redding/DocumentActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/redding/DocumentActivity;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity$1;->this$0:Lcom/amazon/kcp/redding/DocumentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    .line 109
    iget-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity$1;->this$0:Lcom/amazon/kcp/redding/DocumentActivity;

    iget-object p2, p1, Lcom/amazon/kcp/redding/ReddingActivity;->searchViewWrapper:Lcom/amazon/android/widget/SearchViewWrapper;

    invoke-virtual {p2}, Lcom/amazon/android/widget/SearchViewWrapper;->isLayoutRequested()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/redding/DocumentActivity;->setTitleVisibility(Z)V

    return-void
.end method
