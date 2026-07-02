.class Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerIcsImpl$1;
.super Ljava/lang/Object;
.source "AccessibilityManagerCompat.java"

# interfaces
.implements Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityManagerCompatIcs$AccessibilityStateChangeListenerBridge;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerIcsImpl;->newAccessiblityStateChangeListener(Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerIcsImpl;

.field final synthetic val$listener:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerIcsImpl;Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerIcsImpl$1;->this$0:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerIcsImpl;

    iput-object p2, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerIcsImpl$1;->val$listener:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessibilityStateChanged(Z)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerIcsImpl$1;->val$listener:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;->onAccessibilityStateChanged(Z)V

    return-void
.end method
