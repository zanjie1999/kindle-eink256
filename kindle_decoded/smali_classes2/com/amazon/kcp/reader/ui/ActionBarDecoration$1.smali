.class Lcom/amazon/kcp/reader/ui/ActionBarDecoration$1;
.super Ljava/lang/Object;
.source "ActionBarDecoration.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/ActionBarDecoration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ActionBarDecoration;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ActionBarDecoration;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration$1;->this$0:Lcom/amazon/kcp/reader/ui/ActionBarDecoration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration$1;->this$0:Lcom/amazon/kcp/reader/ui/ActionBarDecoration;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->access$000(Lcom/amazon/kcp/reader/ui/ActionBarDecoration;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration$1;->this$0:Lcom/amazon/kcp/reader/ui/ActionBarDecoration;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->access$000(Lcom/amazon/kcp/reader/ui/ActionBarDecoration;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getContinuousScrollEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration$1;->this$0:Lcom/amazon/kcp/reader/ui/ActionBarDecoration;

    .line 89
    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->access$000(Lcom/amazon/kcp/reader/ui/ActionBarDecoration;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->shouldUseNonLinearNavigation(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration$1;->this$0:Lcom/amazon/kcp/reader/ui/ActionBarDecoration;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->access$100(Lcom/amazon/kcp/reader/ui/ActionBarDecoration;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration$1;->this$0:Lcom/amazon/kcp/reader/ui/ActionBarDecoration;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->updateViewsToReflectDecorationHiddenState(Z)V

    .line 91
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration$1;->this$0:Lcom/amazon/kcp/reader/ui/ActionBarDecoration;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->toggleDecorationVisibility(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
