.class Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$2;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "TooltipTutorialLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->showTutorialViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;

.field final synthetic val$anchorType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;Ljava/lang/String;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$2;->this$0:Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;

    iput-object p2, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$2;->val$anchorType:Ljava/lang/String;

    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0

    .line 214
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 215
    iget-object p1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$2;->val$anchorType:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 208
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 209
    iget-object p1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$2;->val$anchorType:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method
