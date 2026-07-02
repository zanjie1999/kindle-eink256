.class public final Lcom/amazon/kindle/tutorial/launcher/DialogLauncher;
.super Ljava/lang/Object;
.source "DialogLauncher.kt"

# interfaces
.implements Lcom/amazon/kindle/tutorial/launcher/TutorialLauncher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showTutorial(Lcom/amazon/kindle/tutorial/TutorialLauncherData;)Z
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/TutorialLauncherData;->getConfig()Lcom/amazon/kindle/tutorial/model/TutorialConfig;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->getUserInterface()Lcom/amazon/kindle/tutorial/UserInterface;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 21
    invoke-static {}, Lcom/amazon/kindle/tutorial/launcher/DialogLauncherKt;->access$getTAG$p()Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/TutorialLauncherData;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v1, :cond_1

    check-cast v1, Lcom/amazon/kindle/tutorial/model/FullPageUI;

    invoke-static {v2, v1}, Lcom/amazon/kindle/tutorial/DialogTutorialActivity;->newIntent(Landroid/app/Activity;Lcom/amazon/kindle/tutorial/model/FullPageUI;)Landroid/content/Intent;

    move-result-object v1

    .line 23
    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/TutorialLauncherData;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 25
    invoke-virtual {v0}, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Dark Mode Tutorial"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "darkModeIntro"

    .line 26
    invoke-static {p1}, Lcom/amazon/kcp/util/fastmetrics/JitActionFastMetrics;->reportJitShown(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 22
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type com.amazon.kindle.tutorial.model.FullPageUI"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_2
    invoke-static {}, Lcom/amazon/kindle/tutorial/launcher/DialogLauncherKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UI element not specified tutorial "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
