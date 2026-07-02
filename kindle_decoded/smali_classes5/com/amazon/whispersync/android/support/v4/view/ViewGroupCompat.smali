.class public Lcom/amazon/whispersync/android/support/v4/view/ViewGroupCompat;
.super Ljava/lang/Object;
.source "ViewGroupCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/android/support/v4/view/ViewGroupCompat$ViewGroupCompatIcsImpl;,
        Lcom/amazon/whispersync/android/support/v4/view/ViewGroupCompat$ViewGroupCompatStubImpl;,
        Lcom/amazon/whispersync/android/support/v4/view/ViewGroupCompat$ViewGroupCompatImpl;
    }
.end annotation


# static fields
.field static final IMPL:Lcom/amazon/whispersync/android/support/v4/view/ViewGroupCompat$ViewGroupCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 53
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/view/ViewGroupCompat$ViewGroupCompatIcsImpl;

    invoke-direct {v0}, Lcom/amazon/whispersync/android/support/v4/view/ViewGroupCompat$ViewGroupCompatIcsImpl;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/android/support/v4/view/ViewGroupCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/ViewGroupCompat$ViewGroupCompatImpl;

    goto :goto_0

    .line 55
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/view/ViewGroupCompat$ViewGroupCompatStubImpl;

    invoke-direct {v0}, Lcom/amazon/whispersync/android/support/v4/view/ViewGroupCompat$ViewGroupCompatStubImpl;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/android/support/v4/view/ViewGroupCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/ViewGroupCompat$ViewGroupCompatImpl;

    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 83
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/ViewGroupCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/ViewGroupCompat$ViewGroupCompatImpl;

    invoke-interface {v0, p0, p1, p2}, Lcom/amazon/whispersync/android/support/v4/view/ViewGroupCompat$ViewGroupCompatImpl;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0
.end method
