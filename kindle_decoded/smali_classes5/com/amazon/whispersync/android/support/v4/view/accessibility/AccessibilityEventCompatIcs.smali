.class Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityEventCompatIcs;
.super Ljava/lang/Object;
.source "AccessibilityEventCompatIcs.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendRecord(Landroid/view/accessibility/AccessibilityEvent;Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p1, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    return-void
.end method

.method public static getRecord(Landroid/view/accessibility/AccessibilityEvent;I)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityEvent;->getRecord(I)Landroid/view/accessibility/AccessibilityRecord;

    move-result-object p0

    return-object p0
.end method

.method public static getRecordCount(Landroid/view/accessibility/AccessibilityEvent;)I
    .locals 0

    .line 28
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->getRecordCount()I

    move-result p0

    return p0
.end method
