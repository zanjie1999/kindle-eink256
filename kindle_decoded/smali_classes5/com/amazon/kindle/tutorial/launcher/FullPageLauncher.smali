.class public final Lcom/amazon/kindle/tutorial/launcher/FullPageLauncher;
.super Ljava/lang/Object;
.source "FullPageLauncher.kt"

# interfaces
.implements Lcom/amazon/kindle/tutorial/launcher/TutorialLauncher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showTutorial(Lcom/amazon/kindle/tutorial/TutorialLauncherData;)Z
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/TutorialLauncherData;->getConfig()Lcom/amazon/kindle/tutorial/model/TutorialConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->getUserInterface()Lcom/amazon/kindle/tutorial/UserInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 18
    invoke-static {}, Lcom/amazon/kindle/tutorial/launcher/FullPageLauncherKt;->access$getTAG$p()Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/TutorialLauncherData;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v0, :cond_0

    check-cast v0, Lcom/amazon/kindle/tutorial/model/FullPageUI;

    invoke-static {v1, v0}, Lcom/amazon/kindle/tutorial/StandardFullPageActivity;->newIntent(Landroid/app/Activity;Lcom/amazon/kindle/tutorial/model/FullPageUI;)Landroid/content/Intent;

    move-result-object v0

    .line 20
    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/TutorialLauncherData;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type com.amazon.kindle.tutorial.model.FullPageUI"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/tutorial/launcher/FullPageLauncherKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UI element not specified tutorial "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/TutorialLauncherData;->getConfig()Lcom/amazon/kindle/tutorial/model/TutorialConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
