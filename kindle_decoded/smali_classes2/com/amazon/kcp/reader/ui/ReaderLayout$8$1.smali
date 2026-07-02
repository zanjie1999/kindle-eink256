.class Lcom/amazon/kcp/reader/ui/ReaderLayout$8$1;
.super Ljava/lang/Object;
.source "ReaderLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ReaderLayout$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/reader/ui/ReaderLayout$8;

.field final synthetic val$accessibilityEnabled:Z


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ReaderLayout$8;Z)V
    .locals 0

    .line 1937
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$8$1;->this$1:Lcom/amazon/kcp/reader/ui/ReaderLayout$8;

    iput-boolean p2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$8$1;->val$accessibilityEnabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1940
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$8$1;->val$accessibilityEnabled:Z

    if-eqz v0, :cond_0

    .line 1941
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$8$1;->this$1:Lcom/amazon/kcp/reader/ui/ReaderLayout$8;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/ReaderLayout$8;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    const/16 v1, 0x40

    .line 1942
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 1943
    monitor-enter v1

    .line 1944
    :try_start_0
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$8$1;->this$1:Lcom/amazon/kcp/reader/ui/ReaderLayout$8;

    iget-object v3, v3, Lcom/amazon/kcp/reader/ui/ReaderLayout$8;->val$bookInfo:Lcom/amazon/kindle/model/content/ILocalBookInfo;

    invoke-interface {v3}, Lcom/amazon/kindle/model/content/IListableBook;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1945
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1946
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method
