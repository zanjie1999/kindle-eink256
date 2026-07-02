.class public final Lcom/amazon/kindle/recaps/activity/RecapsActivity$setBookOverlayViewAccessibilityDelegate$1;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "RecapsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/recaps/activity/RecapsActivity;->setBookOverlayViewAccessibilityDelegate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/recaps/activity/RecapsActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/recaps/activity/RecapsActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 251
    iput-object p1, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity$setBookOverlayViewAccessibilityDelegate$1;->this$0:Lcom/amazon/kindle/recaps/activity/RecapsActivity;

    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 257
    iget-object v0, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity$setBookOverlayViewAccessibilityDelegate$1;->this$0:Lcom/amazon/kindle/recaps/activity/RecapsActivity;

    invoke-static {v0}, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->access$getBookViewFrame$p(Lcom/amazon/kindle/recaps/activity/RecapsActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setTraversalBefore(Landroid/view/View;)V

    .line 258
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    return-void
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 0

    const p1, 0x8000

    if-ne p2, p1, :cond_1

    .line 263
    iget-object p1, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity$setBookOverlayViewAccessibilityDelegate$1;->this$0:Lcom/amazon/kindle/recaps/activity/RecapsActivity;

    invoke-static {p1}, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->access$getReadingModeBookViewController$p(Lcom/amazon/kindle/recaps/activity/RecapsActivity;)Lcom/amazon/kindle/recaps/controller/ReadingModeBookViewController;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/amazon/kindle/recaps/controller/ReadingModeBookViewController;->startTTS()V

    .line 266
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity$setBookOverlayViewAccessibilityDelegate$1;->this$0:Lcom/amazon/kindle/recaps/activity/RecapsActivity;

    invoke-static {p1}, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->access$getBookViewFrame$p(Lcom/amazon/kindle/recaps/activity/RecapsActivity;)Landroid/view/ViewGroup;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    .line 267
    iget-object p1, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity$setBookOverlayViewAccessibilityDelegate$1;->this$0:Lcom/amazon/kindle/recaps/activity/RecapsActivity;

    invoke-static {p1}, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->access$getBookViewFrame$p(Lcom/amazon/kindle/recaps/activity/RecapsActivity;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 268
    iget-object p1, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity$setBookOverlayViewAccessibilityDelegate$1;->this$0:Lcom/amazon/kindle/recaps/activity/RecapsActivity;

    invoke-static {p1}, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->access$getBookViewFrame$p(Lcom/amazon/kindle/recaps/activity/RecapsActivity;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    :cond_1
    return-void
.end method
