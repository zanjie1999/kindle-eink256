.class Lcom/amazon/kcp/reader/accessibility/StandaloneContentViewAccessibilityMixin$1;
.super Lcom/amazon/kcp/reader/ui/ReaderLayoutEventListener;
.source "StandaloneContentViewAccessibilityMixin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/accessibility/StandaloneContentViewAccessibilityMixin;->initializeForAccessibility(Lcom/amazon/android/docviewer/KindleDocView;Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kcp/reader/ui/ReaderLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/accessibility/StandaloneContentViewAccessibilityMixin;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/accessibility/StandaloneContentViewAccessibilityMixin;Landroid/content/Context;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/amazon/kcp/reader/accessibility/StandaloneContentViewAccessibilityMixin$1;->this$0:Lcom/amazon/kcp/reader/accessibility/StandaloneContentViewAccessibilityMixin;

    iput-object p2, p0, Lcom/amazon/kcp/reader/accessibility/StandaloneContentViewAccessibilityMixin$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayoutEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onOverlayVisibilityChanged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 32
    iget-object p1, p0, Lcom/amazon/kcp/reader/accessibility/StandaloneContentViewAccessibilityMixin$1;->this$0:Lcom/amazon/kcp/reader/accessibility/StandaloneContentViewAccessibilityMixin;

    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/StandaloneContentViewAccessibilityMixin$1;->val$context:Landroid/content/Context;

    sget v1, Lcom/amazon/kindle/thirdparty/R$string;->speak_overlays_shown:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kcp/reader/accessibility/StandaloneContentViewAccessibilityMixin;->access$000(Lcom/amazon/kcp/reader/accessibility/StandaloneContentViewAccessibilityMixin;Ljava/lang/String;)V

    goto :goto_0

    .line 34
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/accessibility/StandaloneContentViewAccessibilityMixin$1;->this$0:Lcom/amazon/kcp/reader/accessibility/StandaloneContentViewAccessibilityMixin;

    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/StandaloneContentViewAccessibilityMixin$1;->val$context:Landroid/content/Context;

    sget v1, Lcom/amazon/kindle/thirdparty/R$string;->speak_overlays_hidden:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kcp/reader/accessibility/StandaloneContentViewAccessibilityMixin;->access$000(Lcom/amazon/kcp/reader/accessibility/StandaloneContentViewAccessibilityMixin;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
