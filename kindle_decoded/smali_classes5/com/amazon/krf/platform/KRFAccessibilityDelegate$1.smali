.class Lcom/amazon/krf/platform/KRFAccessibilityDelegate$1;
.super Ljava/lang/Object;
.source "KRFAccessibilityDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->clearAccessibilityFocus(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/krf/platform/KRFAccessibilityDelegate;

.field final synthetic val$virtualViewID:I


# direct methods
.method constructor <init>(Lcom/amazon/krf/platform/KRFAccessibilityDelegate;I)V
    .locals 0

    .line 982
    iput-object p1, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$1;->this$0:Lcom/amazon/krf/platform/KRFAccessibilityDelegate;

    iput p2, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$1;->val$virtualViewID:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 985
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$1;->this$0:Lcom/amazon/krf/platform/KRFAccessibilityDelegate;

    invoke-static {v0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->access$200(Lcom/amazon/krf/platform/KRFAccessibilityDelegate;)Lcom/amazon/krf/internal/KRFGLESView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->getAccessibilityNodeProvider(Landroid/view/View;)Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 987
    iget v1, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$1;->val$virtualViewID:I

    const/16 v2, 0x80

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;->performAction(IILandroid/os/Bundle;)Z

    :cond_0
    return-void
.end method
