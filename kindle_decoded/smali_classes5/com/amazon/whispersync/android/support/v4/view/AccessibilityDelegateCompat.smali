.class public Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat;
.super Ljava/lang/Object;
.source "AccessibilityDelegateCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl;,
        Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateStubImpl;,
        Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;
    }
.end annotation


# static fields
.field private static final DEFAULT_DELEGATE:Ljava/lang/Object;

.field private static final IMPL:Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;


# instance fields
.field final mBridge:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 192
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 193
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl;

    invoke-direct {v0}, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;

    goto :goto_0

    .line 195
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateStubImpl;

    invoke-direct {v0}, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateStubImpl;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;

    .line 197
    :goto_0
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;

    invoke-interface {v0}, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->newAccessiblityDelegateDefaultImpl()Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;

    invoke-interface {v0, p0}, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->newAccessiblityDelegateBridge(Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat;->mBridge:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .line 274
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;

    sget-object v1, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->dispatchPopulateAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method getBridge()Ljava/lang/Object;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat;->mBridge:Ljava/lang/Object;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 314
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;

    sget-object v1, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->onInitializeAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2

    .line 333
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;

    sget-object v1, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->onInitializeAccessibilityNodeInfo(Ljava/lang/Object;Landroid/view/View;Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 294
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;

    sget-object v1, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->onPopulateAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .line 357
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;

    sget-object v1, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->onRequestSendAccessibilityEvent(Ljava/lang/Object;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 2

    .line 231
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;

    sget-object v1, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->sendAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;I)V

    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 253
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;

    sget-object v1, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->sendAccessibilityEventUnchecked(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method
