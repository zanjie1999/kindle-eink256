.class public final Lcom/amazon/kindle/tutorial/launcher/TooltipLauncher;
.super Ljava/lang/Object;
.source "TooltipLauncher.kt"

# interfaces
.implements Lcom/amazon/kindle/tutorial/launcher/TutorialLauncher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showTutorial(Lcom/amazon/kindle/tutorial/TutorialLauncherData;)Z
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/TutorialLauncherData;->getConfig()Lcom/amazon/kindle/tutorial/model/TutorialConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->getUserInterface()Lcom/amazon/kindle/tutorial/UserInterface;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 21
    invoke-static {}, Lcom/amazon/kindle/tutorial/launcher/TooltipLauncherKt;->access$getTAG$p()Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/TutorialLauncherData;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v0, :cond_3

    check-cast v0, Lcom/amazon/kindle/tutorial/model/TooltipUI;

    invoke-static {v2, v0}, Lcom/amazon/kindle/tutorial/TooltipTutorialActivity;->newTooltipIntent(Landroid/app/Activity;Lcom/amazon/kindle/tutorial/model/TooltipUI;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 25
    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/TutorialLauncherData;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/krl/R$bool;->enable_tutorial_animation:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 29
    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/TutorialLauncherData;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v4, Lcom/amazon/kindle/krl/R$anim;->fade_in:I

    invoke-static {v2, v4, v1}, Landroidx/core/app/ActivityOptionsCompat;->makeCustomAnimation(Landroid/content/Context;II)Landroidx/core/app/ActivityOptionsCompat;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/high16 v1, 0x10000

    .line 31
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "it.addFlags(Intent.FLAG_ACTIVITY_NO_ANIMATION)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v3

    .line 34
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/TutorialLauncherData;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    :cond_1
    invoke-static {p1, v0, v3}, Landroidx/core/content/ContextCompat;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    return p1

    .line 39
    :cond_2
    invoke-static {}, Lcom/amazon/kindle/tutorial/launcher/TooltipLauncherKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not launch intent for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/TutorialLauncherData;->getConfig()Lcom/amazon/kindle/tutorial/model/TutorialConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 22
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type com.amazon.kindle.tutorial.model.TooltipUI"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 43
    :cond_4
    invoke-static {}, Lcom/amazon/kindle/tutorial/launcher/TooltipLauncherKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UI element not specified tutorial "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/TutorialLauncherData;->getConfig()Lcom/amazon/kindle/tutorial/model/TutorialConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
