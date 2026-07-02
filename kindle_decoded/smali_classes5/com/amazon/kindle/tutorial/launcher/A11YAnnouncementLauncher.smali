.class public final Lcom/amazon/kindle/tutorial/launcher/A11YAnnouncementLauncher;
.super Ljava/lang/Object;
.source "A11YAnnouncementLauncher.kt"

# interfaces
.implements Lcom/amazon/kindle/tutorial/launcher/TutorialLauncher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showTutorial(Lcom/amazon/kindle/tutorial/TutorialLauncherData;)Z
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lcom/amazon/kindle/tutorial/launcher/A11YAnnouncementLauncherKt;->access$getTAG$p()Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/TutorialLauncherData;->getConfig()Lcom/amazon/kindle/tutorial/model/TutorialConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->getUserInterface()Lcom/amazon/kindle/tutorial/UserInterface;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz v0, :cond_1

    .line 16
    check-cast v0, Lcom/amazon/kindle/tutorial/model/A11YAnnouncementUI;

    .line 17
    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/TutorialLauncherData;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v2, 0x1020002

    invoke-virtual {p1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    .line 20
    invoke-static {}, Lcom/amazon/kindle/tutorial/launcher/A11YAnnouncementLauncherKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unable to speak message, contentView was not found"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 24
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kindle/tutorial/model/A11YAnnouncementUI;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 25
    invoke-static {}, Lcom/amazon/kcp/info/TutorialLockHelper;->getLock()Lcom/amazon/kcp/info/TutorialLock;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/info/TutorialLock;->unlockTutorials()V

    const/4 p1, 0x1

    return p1

    .line 16
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type com.amazon.kindle.tutorial.model.A11YAnnouncementUI"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_2
    invoke-static {}, Lcom/amazon/kindle/tutorial/launcher/A11YAnnouncementLauncherKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p1

    const-string v0, "No UI object found for Tutorial!"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
