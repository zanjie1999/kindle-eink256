.class Lcom/amazon/whispersync/android/support/v4/view/ViewGroupCompat$ViewGroupCompatIcsImpl;
.super Lcom/amazon/whispersync/android/support/v4/view/ViewGroupCompat$ViewGroupCompatStubImpl;
.source "ViewGroupCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/android/support/v4/view/ViewGroupCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewGroupCompatIcsImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/amazon/whispersync/android/support/v4/view/ViewGroupCompat$ViewGroupCompatStubImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 46
    invoke-static {p1, p2, p3}, Lcom/amazon/whispersync/android/support/v4/view/ViewGroupCompatIcs;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method
