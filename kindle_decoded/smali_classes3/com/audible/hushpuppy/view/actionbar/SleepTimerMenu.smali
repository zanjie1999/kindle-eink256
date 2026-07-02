.class final Lcom/audible/hushpuppy/view/actionbar/SleepTimerMenu;
.super Lcom/audible/hushpuppy/common/dialog/ThemedAlertDialogBuilder;
.source "SleepTimerMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/hushpuppy/view/actionbar/SleepTimerMenu$NegativeListener;,
        Lcom/audible/hushpuppy/view/actionbar/SleepTimerMenu$SelectionListener;
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final context:Landroid/content/Context;

.field private final eventBus:Lde/greenrobot/event/EventBus;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/view/actionbar/SleepTimerMenu;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/view/actionbar/SleepTimerMenu;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/krx/ui/ColorMode;Lde/greenrobot/event/EventBus;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/audible/hushpuppy/common/dialog/ThemedAlertDialogBuilder;-><init>(Landroid/content/Context;Lcom/amazon/kindle/krx/ui/ColorMode;)V

    .line 55
    iput-object p1, p0, Lcom/audible/hushpuppy/view/actionbar/SleepTimerMenu;->context:Landroid/content/Context;

    .line 56
    iput-object p3, p0, Lcom/audible/hushpuppy/view/actionbar/SleepTimerMenu;->eventBus:Lde/greenrobot/event/EventBus;

    const-string p2, "accessibility"

    .line 57
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/accessibility/AccessibilityManager;

    iput-object p2, p0, Lcom/audible/hushpuppy/view/actionbar/SleepTimerMenu;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 60
    sget p3, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->dialog_sleep_title:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 62
    invoke-static {p1}, Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;->getDisplayStringArray(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p1

    .line 63
    new-instance p2, Lcom/audible/hushpuppy/view/actionbar/SleepTimerMenu$SelectionListener;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/audible/hushpuppy/view/actionbar/SleepTimerMenu$SelectionListener;-><init>(Lcom/audible/hushpuppy/view/actionbar/SleepTimerMenu;Lcom/audible/hushpuppy/view/actionbar/SleepTimerMenu$1;)V

    invoke-virtual {p0, p1, p2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 64
    sget p1, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->cancel:I

    new-instance p2, Lcom/audible/hushpuppy/view/actionbar/SleepTimerMenu$NegativeListener;

    invoke-direct {p2, p0, p3}, Lcom/audible/hushpuppy/view/actionbar/SleepTimerMenu$NegativeListener;-><init>(Lcom/audible/hushpuppy/view/actionbar/SleepTimerMenu;Lcom/audible/hushpuppy/view/actionbar/SleepTimerMenu$1;)V

    invoke-virtual {p0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method static synthetic access$200()Lcom/audible/hushpuppy/common/logging/ILogger;
    .locals 1

    .line 26
    sget-object v0, Lcom/audible/hushpuppy/view/actionbar/SleepTimerMenu;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/audible/hushpuppy/view/actionbar/SleepTimerMenu;)Lde/greenrobot/event/EventBus;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/audible/hushpuppy/view/actionbar/SleepTimerMenu;->eventBus:Lde/greenrobot/event/EventBus;

    return-object p0
.end method

.method static synthetic access$400(Lcom/audible/hushpuppy/view/actionbar/SleepTimerMenu;)Landroid/view/accessibility/AccessibilityManager;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/audible/hushpuppy/view/actionbar/SleepTimerMenu;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/audible/hushpuppy/view/actionbar/SleepTimerMenu;)Landroid/content/Context;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/audible/hushpuppy/view/actionbar/SleepTimerMenu;->context:Landroid/content/Context;

    return-object p0
.end method
