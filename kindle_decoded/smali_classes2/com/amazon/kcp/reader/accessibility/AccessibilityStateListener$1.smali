.class Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener$1;
.super Ljava/lang/Object;
.source "AccessibilityStateListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;
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

    .line 36
    iput-object p1, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener$1;->this$0:Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener$1;->this$0:Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;

    invoke-static {v0}, Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;->access$000(Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;)V

    return-void
.end method
