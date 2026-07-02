.class Lcom/amazon/krf/platform/KRFAccessibilityDelegate$KRFAccessibilityStateChangeListener$1;
.super Ljava/lang/Object;
.source "KRFAccessibilityDelegate.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/krf/platform/KRFAccessibilityDelegate$KRFAccessibilityStateChangeListener;-><init>(Lcom/amazon/krf/platform/KRFAccessibilityDelegate;Landroid/view/accessibility/AccessibilityManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/krf/platform/KRFAccessibilityDelegate$KRFAccessibilityStateChangeListener;

.field final synthetic val$this$0:Lcom/amazon/krf/platform/KRFAccessibilityDelegate;


# direct methods
.method constructor <init>(Lcom/amazon/krf/platform/KRFAccessibilityDelegate$KRFAccessibilityStateChangeListener;Lcom/amazon/krf/platform/KRFAccessibilityDelegate;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$KRFAccessibilityStateChangeListener$1;->this$1:Lcom/amazon/krf/platform/KRFAccessibilityDelegate$KRFAccessibilityStateChangeListener;

    iput-object p2, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$KRFAccessibilityStateChangeListener$1;->val$this$0:Lcom/amazon/krf/platform/KRFAccessibilityDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchExplorationStateChanged(Z)V
    .locals 0

    .line 150
    iget-object p1, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$KRFAccessibilityStateChangeListener$1;->this$1:Lcom/amazon/krf/platform/KRFAccessibilityDelegate$KRFAccessibilityStateChangeListener;

    invoke-virtual {p1}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$KRFAccessibilityStateChangeListener;->updateAccessibilityState()V

    return-void
.end method
