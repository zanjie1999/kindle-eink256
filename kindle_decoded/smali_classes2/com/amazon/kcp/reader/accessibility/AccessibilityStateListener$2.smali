.class Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener$2;
.super Ljava/lang/Object;
.source "AccessibilityStateListener.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener$2;->this$0:Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchExplorationStateChanged(Z)V
    .locals 4

    .line 54
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener$2;->this$0:Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;

    invoke-static {v0}, Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;->access$100(Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;)Ljava/lang/Runnable;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3e8

    invoke-interface {p1, v0, v2, v3, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->scheduleOnMainThread(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method
