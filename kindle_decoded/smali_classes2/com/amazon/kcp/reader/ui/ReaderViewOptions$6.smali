.class Lcom/amazon/kcp/reader/ui/ReaderViewOptions$6;
.super Ljava/lang/Object;
.source "ReaderViewOptions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->displayOptions(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ReaderViewOptions;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ReaderViewOptions;Z)V
    .locals 0

    .line 813
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions$6;->this$0:Lcom/amazon/kcp/reader/ui/ReaderViewOptions;

    iput-boolean p2, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions$6;->val$show:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 816
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions$6;->val$show:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 817
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions$6;->this$0:Lcom/amazon/kcp/reader/ui/ReaderViewOptions;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->updateRowStates()V

    .line 818
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions$6;->this$0:Lcom/amazon/kcp/reader/ui/ReaderViewOptions;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->setVisibility(I)V

    .line 819
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions$6;->this$0:Lcom/amazon/kcp/reader/ui/ReaderViewOptions;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 820
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions$6;->this$0:Lcom/amazon/kcp/reader/ui/ReaderViewOptions;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->requestFocus()Z

    .line 823
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions$6;->this$0:Lcom/amazon/kcp/reader/ui/ReaderViewOptions;

    const/16 v2, 0x40

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/widget/ScrollView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 825
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions$6;->this$0:Lcom/amazon/kcp/reader/ui/ReaderViewOptions;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->setVisibility(I)V

    .line 827
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions$6;->this$0:Lcom/amazon/kcp/reader/ui/ReaderViewOptions;

    iput-boolean v1, v0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->isAnimating:Z

    return-void
.end method
