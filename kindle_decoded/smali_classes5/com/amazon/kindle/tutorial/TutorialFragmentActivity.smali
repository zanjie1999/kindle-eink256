.class public Lcom/amazon/kindle/tutorial/TutorialFragmentActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "TutorialFragmentActivity.java"


# static fields
.field protected static final FULLSCREEN_KEY:Ljava/lang/String; = "isFullScreen"

.field private static final TAG:Ljava/lang/String;

.field protected static final UI_KEY:Ljava/lang/String; = "userInterface"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/amazon/kindle/tutorial/TutorialFragmentActivity;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/tutorial/TutorialFragmentActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method protected static newBaseIntent(Ljava/lang/Class;Landroid/app/Activity;Lcom/amazon/kindle/tutorial/UserInterface;)Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/kindle/tutorial/TutorialFragmentActivity;",
            ">;",
            "Landroid/app/Activity;",
            "Lcom/amazon/kindle/tutorial/UserInterface;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 44
    invoke-static {p0, p1, p2, v0}, Lcom/amazon/kindle/tutorial/TutorialFragmentActivity;->newBaseIntent(Ljava/lang/Class;Landroid/app/Activity;Lcom/amazon/kindle/tutorial/UserInterface;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method protected static newBaseIntent(Ljava/lang/Class;Landroid/app/Activity;Lcom/amazon/kindle/tutorial/UserInterface;Z)Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/kindle/tutorial/TutorialFragmentActivity;",
            ">;",
            "Landroid/app/Activity;",
            "Lcom/amazon/kindle/tutorial/UserInterface;",
            "Z)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 34
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo p1, "userInterface"

    .line 36
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p1, "isFullScreen"

    .line 37
    invoke-virtual {p0, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 38
    invoke-virtual {v0, p0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public TutorialDismissEventListener(Lcom/amazon/kindle/tutorial/TutorialDismissEvent;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 83
    invoke-virtual {p0}, Lcom/amazon/kindle/tutorial/TutorialFragmentActivity;->finish()V

    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1

    .line 72
    new-instance v0, Lcom/amazon/kcp/reader/ReaderContextWrapper;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/reader/ReaderContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-super {p0, v0}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public finish()V
    .locals 1

    .line 65
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 67
    invoke-static {}, Lcom/amazon/kcp/info/TutorialLockHelper;->getLock()Lcom/amazon/kcp/info/TutorialLock;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/info/TutorialLock;->unlockTutorials()V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 76
    invoke-static {}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->getInstance()Lcom/amazon/kindle/tutorial/AndroidTutorialManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->getCurrentLifecycleListener()Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;

    move-result-object v0

    .line 77
    sget-object v1, Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DismissalType;->DISMISSED_BY_BACK_BUTTON:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DismissalType;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;->onTutorialDismissed(Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DismissalType;)V

    .line 78
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 49
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 51
    sget v0, Lcom/amazon/kindle/krl/R$bool;->should_set_fullscreen_to_false_for_tutorial:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 52
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->createOverlayController(Landroid/view/Window;)Lcom/amazon/android/util/IOsOverlayController;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/amazon/android/util/IOsOverlayController;->setFullscreen(Z)V

    .line 54
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 59
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 60
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    return-void
.end method
