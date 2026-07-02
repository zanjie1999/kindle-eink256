.class Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$1;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "DefinitionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;-><init>(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/dictionary/IDictionaryDoc;Lcom/amazon/kindle/dictionary/IDictionaryResult;Landroid/content/Context;ILcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$1;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;

    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0

    .line 118
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    const/4 p1, 0x1

    .line 120
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setFocusable(Z)V

    .line 121
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$1;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;

    iget-object p1, p1, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->definitionText:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1

    .line 126
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->sendAccessibilityEvent(Landroid/view/View;I)V

    const/16 v0, 0x80

    if-ne p2, v0, :cond_0

    const/16 p2, 0x40

    const/4 v0, 0x0

    .line 130
    invoke-static {p1, p2, v0}, Landroidx/core/view/ViewCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 131
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method
