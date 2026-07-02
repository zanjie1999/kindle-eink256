.class Lcom/audible/hushpuppy/view/actionbar/SleepTimerMenu$SelectionListener;
.super Ljava/lang/Object;
.source "SleepTimerMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/view/actionbar/SleepTimerMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/view/actionbar/SleepTimerMenu;


# direct methods
.method private constructor <init>(Lcom/audible/hushpuppy/view/actionbar/SleepTimerMenu;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/audible/hushpuppy/view/actionbar/SleepTimerMenu$SelectionListener;->this$0:Lcom/audible/hushpuppy/view/actionbar/SleepTimerMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/audible/hushpuppy/view/actionbar/SleepTimerMenu;Lcom/audible/hushpuppy/view/actionbar/SleepTimerMenu$1;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/view/actionbar/SleepTimerMenu$SelectionListener;-><init>(Lcom/audible/hushpuppy/view/actionbar/SleepTimerMenu;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .line 71
    invoke-static {p2}, Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;->fromOrdinal(I)Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 74
    invoke-static {}, Lcom/audible/hushpuppy/view/actionbar/SleepTimerMenu;->access$200()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid sleep timer setting provided! Ordinal: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v1

    invoke-interface {v0, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    .line 75
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    .line 79
    :cond_0
    iget-object p2, p0, Lcom/audible/hushpuppy/view/actionbar/SleepTimerMenu$SelectionListener;->this$0:Lcom/audible/hushpuppy/view/actionbar/SleepTimerMenu;

    invoke-static {p2}, Lcom/audible/hushpuppy/view/actionbar/SleepTimerMenu;->access$300(Lcom/audible/hushpuppy/view/actionbar/SleepTimerMenu;)Lde/greenrobot/event/EventBus;

    move-result-object p2

    invoke-virtual {v0}, Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;->getEvent()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 84
    iget-object p2, p0, Lcom/audible/hushpuppy/view/actionbar/SleepTimerMenu$SelectionListener;->this$0:Lcom/audible/hushpuppy/view/actionbar/SleepTimerMenu;

    invoke-static {p2}, Lcom/audible/hushpuppy/view/actionbar/SleepTimerMenu;->access$400(Lcom/audible/hushpuppy/view/actionbar/SleepTimerMenu;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 85
    iget-object p2, p0, Lcom/audible/hushpuppy/view/actionbar/SleepTimerMenu$SelectionListener;->this$0:Lcom/audible/hushpuppy/view/actionbar/SleepTimerMenu;

    invoke-static {p2}, Lcom/audible/hushpuppy/view/actionbar/SleepTimerMenu;->access$500(Lcom/audible/hushpuppy/view/actionbar/SleepTimerMenu;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;->getAccessiblityString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 86
    iget-object v0, p0, Lcom/audible/hushpuppy/view/actionbar/SleepTimerMenu$SelectionListener;->this$0:Lcom/audible/hushpuppy/view/actionbar/SleepTimerMenu;

    invoke-static {v0}, Lcom/audible/hushpuppy/view/actionbar/SleepTimerMenu;->access$500(Lcom/audible/hushpuppy/view/actionbar/SleepTimerMenu;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 88
    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
