.class Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate$5;
.super Ljava/lang/Object;
.source "KindleAccessibilityDelegate.java"

# interfaces
.implements Landroid/view/ViewStub$OnInflateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->setupPluginOverlayListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;)V
    .locals 0

    .line 736
    iput-object p1, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate$5;->this$0:Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInflate(Landroid/view/ViewStub;Landroid/view/View;)V
    .locals 1

    .line 739
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate$5;->this$0:Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;

    iget-object v0, v0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->pluginLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const/4 p2, 0x0

    .line 740
    invoke-virtual {p1, p2}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    return-void
.end method
