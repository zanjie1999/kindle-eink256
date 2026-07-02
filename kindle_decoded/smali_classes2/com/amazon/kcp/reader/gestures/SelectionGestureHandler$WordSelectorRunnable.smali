.class Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$WordSelectorRunnable;
.super Ljava/lang/Object;
.source "SelectionGestureHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WordSelectorRunnable"
.end annotation


# instance fields
.field element:Lcom/amazon/android/docviewer/mobi/MobiWordPageElement;

.field final synthetic this$0:Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;


# direct methods
.method private constructor <init>(Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;Lcom/amazon/android/docviewer/mobi/MobiWordPageElement;)V
    .locals 0

    .line 764
    iput-object p1, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$WordSelectorRunnable;->this$0:Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 765
    iput-object p2, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$WordSelectorRunnable;->element:Lcom/amazon/android/docviewer/mobi/MobiWordPageElement;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;Lcom/amazon/android/docviewer/mobi/MobiWordPageElement;Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$1;)V
    .locals 0

    .line 761
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$WordSelectorRunnable;-><init>(Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;Lcom/amazon/android/docviewer/mobi/MobiWordPageElement;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 770
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$WordSelectorRunnable;->this$0:Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;

    monitor-enter v0

    .line 771
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$WordSelectorRunnable;->this$0:Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;

    invoke-static {v1}, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->access$300(Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;)Lcom/amazon/kindle/krx/accessibility/IVirtualView;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$WordSelectorRunnable;->this$0:Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;

    invoke-static {v2}, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->access$400(Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;)Lcom/amazon/kindle/krx/accessibility/IVirtualView;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 772
    monitor-exit v0

    return-void

    .line 774
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 776
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$WordSelectorRunnable;->this$0:Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;

    invoke-static {v0}, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->access$500(Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$WordSelectorRunnable;->element:Lcom/amazon/android/docviewer/mobi/MobiWordPageElement;

    iget-object v1, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$WordSelectorRunnable;->this$0:Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;

    .line 777
    invoke-static {v1}, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->access$600(Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;)Lcom/amazon/android/docviewer/mobi/MobiWordPageElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/mobi/MobiWordPageElement;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$WordSelectorRunnable;->element:Lcom/amazon/android/docviewer/mobi/MobiWordPageElement;

    iget-object v1, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$WordSelectorRunnable;->this$0:Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;

    invoke-static {v1}, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->access$700(Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;)Lcom/amazon/android/docviewer/mobi/MobiWordPageElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/mobi/MobiWordPageElement;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 778
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$WordSelectorRunnable;->this$0:Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;

    iget-object v1, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$WordSelectorRunnable;->element:Lcom/amazon/android/docviewer/mobi/MobiWordPageElement;

    invoke-static {v0, v1}, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->access$702(Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;Lcom/amazon/android/docviewer/mobi/MobiWordPageElement;)Lcom/amazon/android/docviewer/mobi/MobiWordPageElement;

    .line 780
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$WordSelectorRunnable;->this$0:Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;

    iget-object v0, v0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureService;->getLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 782
    iget-object v1, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$WordSelectorRunnable;->element:Lcom/amazon/android/docviewer/mobi/MobiWordPageElement;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/MobiWordPageElement;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 774
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
