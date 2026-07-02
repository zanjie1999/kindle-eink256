.class Lcom/amazon/kcp/reader/gestures/MainContentVirtualView$WordSelectorRunnable;
.super Ljava/lang/Object;
.source "MainContentVirtualView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/gestures/MainContentVirtualView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WordSelectorRunnable"
.end annotation


# instance fields
.field element:Lcom/amazon/android/docviewer/mobi/MobiWordPageElement;

.field event:Lcom/amazon/kindle/krx/gesture/GestureEvent;

.field final synthetic this$0:Lcom/amazon/kcp/reader/gestures/MainContentVirtualView;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/reader/gestures/MainContentVirtualView;Lcom/amazon/android/docviewer/mobi/MobiWordPageElement;Lcom/amazon/kindle/krx/gesture/GestureEvent;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/amazon/kcp/reader/gestures/MainContentVirtualView$WordSelectorRunnable;->this$0:Lcom/amazon/kcp/reader/gestures/MainContentVirtualView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p2, p0, Lcom/amazon/kcp/reader/gestures/MainContentVirtualView$WordSelectorRunnable;->element:Lcom/amazon/android/docviewer/mobi/MobiWordPageElement;

    .line 116
    iput-object p3, p0, Lcom/amazon/kcp/reader/gestures/MainContentVirtualView$WordSelectorRunnable;->event:Lcom/amazon/kindle/krx/gesture/GestureEvent;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 121
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/MainContentVirtualView$WordSelectorRunnable;->this$0:Lcom/amazon/kcp/reader/gestures/MainContentVirtualView;

    monitor-enter v0

    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/gestures/MainContentVirtualView$WordSelectorRunnable;->this$0:Lcom/amazon/kcp/reader/gestures/MainContentVirtualView;

    invoke-static {v1}, Lcom/amazon/kcp/reader/gestures/MainContentVirtualView;->access$000(Lcom/amazon/kcp/reader/gestures/MainContentVirtualView;)I

    move-result v1

    iget-object v2, p0, Lcom/amazon/kcp/reader/gestures/MainContentVirtualView$WordSelectorRunnable;->this$0:Lcom/amazon/kcp/reader/gestures/MainContentVirtualView;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/accessibility/VirtualView;->getId()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 124
    monitor-exit v0

    return-void

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/gestures/MainContentVirtualView$WordSelectorRunnable;->event:Lcom/amazon/kindle/krx/gesture/GestureEvent;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getEventTime()J

    move-result-wide v1

    .line 128
    iget-object v3, p0, Lcom/amazon/kcp/reader/gestures/MainContentVirtualView$WordSelectorRunnable;->element:Lcom/amazon/android/docviewer/mobi/MobiWordPageElement;

    iget-object v4, p0, Lcom/amazon/kcp/reader/gestures/MainContentVirtualView$WordSelectorRunnable;->this$0:Lcom/amazon/kcp/reader/gestures/MainContentVirtualView;

    iget-object v4, v4, Lcom/amazon/kcp/reader/gestures/MainContentVirtualView;->lastReadElement:Lcom/amazon/android/docviewer/IPageElement;

    invoke-virtual {v3, v4}, Lcom/amazon/android/docviewer/mobi/MobiWordPageElement;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/amazon/kcp/reader/gestures/MainContentVirtualView$WordSelectorRunnable;->this$0:Lcom/amazon/kcp/reader/gestures/MainContentVirtualView;

    .line 129
    invoke-static {v3}, Lcom/amazon/kcp/reader/gestures/MainContentVirtualView;->access$100(Lcom/amazon/kcp/reader/gestures/MainContentVirtualView;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1

    iget-object v3, p0, Lcom/amazon/kcp/reader/gestures/MainContentVirtualView$WordSelectorRunnable;->this$0:Lcom/amazon/kcp/reader/gestures/MainContentVirtualView;

    .line 130
    invoke-static {v3}, Lcom/amazon/kcp/reader/gestures/MainContentVirtualView;->access$100(Lcom/amazon/kcp/reader/gestures/MainContentVirtualView;)J

    move-result-wide v3

    sub-long v3, v1, v3

    const-wide/16 v5, 0x1f4

    cmp-long v7, v3, v5

    if-lez v7, :cond_2

    .line 133
    :cond_1
    iget-object v3, p0, Lcom/amazon/kcp/reader/gestures/MainContentVirtualView$WordSelectorRunnable;->this$0:Lcom/amazon/kcp/reader/gestures/MainContentVirtualView;

    iget-object v4, p0, Lcom/amazon/kcp/reader/gestures/MainContentVirtualView$WordSelectorRunnable;->element:Lcom/amazon/android/docviewer/mobi/MobiWordPageElement;

    invoke-virtual {v4}, Lcom/amazon/android/docviewer/mobi/MobiWordPageElement;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/amazon/kcp/reader/gestures/MainContentVirtualView;->access$200(Lcom/amazon/kcp/reader/gestures/MainContentVirtualView;Ljava/lang/String;)V

    .line 134
    iget-object v3, p0, Lcom/amazon/kcp/reader/gestures/MainContentVirtualView$WordSelectorRunnable;->this$0:Lcom/amazon/kcp/reader/gestures/MainContentVirtualView;

    invoke-static {v3, v1, v2}, Lcom/amazon/kcp/reader/gestures/MainContentVirtualView;->access$102(Lcom/amazon/kcp/reader/gestures/MainContentVirtualView;J)J

    .line 135
    iget-object v1, p0, Lcom/amazon/kcp/reader/gestures/MainContentVirtualView$WordSelectorRunnable;->this$0:Lcom/amazon/kcp/reader/gestures/MainContentVirtualView;

    iget-object v2, p0, Lcom/amazon/kcp/reader/gestures/MainContentVirtualView$WordSelectorRunnable;->element:Lcom/amazon/android/docviewer/mobi/MobiWordPageElement;

    iput-object v2, v1, Lcom/amazon/kcp/reader/gestures/MainContentVirtualView;->lastReadElement:Lcom/amazon/android/docviewer/IPageElement;

    .line 137
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
