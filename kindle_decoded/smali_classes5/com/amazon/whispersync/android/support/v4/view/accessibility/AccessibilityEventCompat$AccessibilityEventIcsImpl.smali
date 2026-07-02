.class Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventIcsImpl;
.super Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventStubImpl;
.source "AccessibilityEventCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityEventCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityEventIcsImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventStubImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public appendRecord(Landroid/view/accessibility/AccessibilityEvent;Ljava/lang/Object;)V
    .locals 0

    .line 53
    invoke-static {p1, p2}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityEventCompatIcs;->appendRecord(Landroid/view/accessibility/AccessibilityEvent;Ljava/lang/Object;)V

    return-void
.end method

.method public getRecord(Landroid/view/accessibility/AccessibilityEvent;I)Ljava/lang/Object;
    .locals 0

    .line 58
    invoke-static {p1, p2}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityEventCompatIcs;->getRecord(Landroid/view/accessibility/AccessibilityEvent;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRecordCount(Landroid/view/accessibility/AccessibilityEvent;)I
    .locals 0

    .line 63
    invoke-static {p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityEventCompatIcs;->getRecordCount(Landroid/view/accessibility/AccessibilityEvent;)I

    move-result p1

    return p1
.end method
