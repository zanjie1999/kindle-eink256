.class public Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityEventCompat;
.super Ljava/lang/Object;
.source "AccessibilityEventCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventIcsImpl;,
        Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventStubImpl;,
        Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;
    }
.end annotation


# static fields
.field private static final IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;

.field public static final TYPE_TOUCH_EXPLORATION_GESTURE_END:I = 0x400

.field public static final TYPE_TOUCH_EXPLORATION_GESTURE_START:I = 0x200

.field public static final TYPE_VIEW_HOVER_ENTER:I = 0x80

.field public static final TYPE_VIEW_HOVER_EXIT:I = 0x100

.field public static final TYPE_VIEW_SCROLLED:I = 0x1000

.field public static final TYPE_VIEW_TEXT_SELECTION_CHANGED:I = 0x2000

.field public static final TYPE_WINDOW_CONTENT_CHANGED:I = 0x800


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 70
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 71
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventIcsImpl;

    invoke-direct {v0}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventIcsImpl;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityEventCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;

    goto :goto_0

    .line 73
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventStubImpl;

    invoke-direct {v0}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventStubImpl;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityEventCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;

    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendRecord(Landroid/view/accessibility/AccessibilityEvent;Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;)V
    .locals 1

    .line 137
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityEventCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;

    invoke-virtual {p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->getImpl()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;->appendRecord(Landroid/view/accessibility/AccessibilityEvent;Ljava/lang/Object;)V

    return-void
.end method

.method public static getRecord(Landroid/view/accessibility/AccessibilityEvent;I)Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;
    .locals 2

    .line 147
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;

    sget-object v1, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityEventCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;

    invoke-interface {v1, p0, p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;->getRecord(Landroid/view/accessibility/AccessibilityEvent;I)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static getRecordCount(Landroid/view/accessibility/AccessibilityEvent;)I
    .locals 1

    .line 125
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityEventCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;

    invoke-interface {v0, p0}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;->getRecordCount(Landroid/view/accessibility/AccessibilityEvent;)I

    move-result p0

    return p0
.end method
