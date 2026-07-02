.class Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerIcsImpl;
.super Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerStubImpl;
.source "AccessibilityManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityManagerIcsImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerStubImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;)Z
    .locals 0

    .line 94
    iget-object p2, p2, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;->mListener:Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityManagerCompatIcs;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getEnabledAccessibilityServiceList(Landroid/view/accessibility/AccessibilityManager;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityManager;",
            "I)",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .line 108
    invoke-static {p1, p2}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityManagerCompatIcs;->getEnabledAccessibilityServiceList(Landroid/view/accessibility/AccessibilityManager;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getInstalledAccessibilityServiceList(Landroid/view/accessibility/AccessibilityManager;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityManager;",
            ")",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .line 115
    invoke-static {p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityManagerCompatIcs;->getInstalledAccessibilityServiceList(Landroid/view/accessibility/AccessibilityManager;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public isTouchExplorationEnabled(Landroid/view/accessibility/AccessibilityManager;)Z
    .locals 0

    .line 120
    invoke-static {p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityManagerCompatIcs;->isTouchExplorationEnabled(Landroid/view/accessibility/AccessibilityManager;)Z

    move-result p1

    return p1
.end method

.method public newAccessiblityStateChangeListener(Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;)Ljava/lang/Object;
    .locals 1

    .line 83
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerIcsImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerIcsImpl$1;-><init>(Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerIcsImpl;Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;)V

    invoke-static {v0}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityManagerCompatIcs;->newAccessibilityStateChangeListener(Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityManagerCompatIcs$AccessibilityStateChangeListenerBridge;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;)Z
    .locals 0

    .line 101
    iget-object p2, p2, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;->mListener:Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityManagerCompatIcs;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
