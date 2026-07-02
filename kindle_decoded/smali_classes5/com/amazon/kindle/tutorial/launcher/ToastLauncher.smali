.class public final Lcom/amazon/kindle/tutorial/launcher/ToastLauncher;
.super Ljava/lang/Object;
.source "ToastLauncher.kt"

# interfaces
.implements Lcom/amazon/kindle/tutorial/launcher/TutorialLauncher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showTutorial(Lcom/amazon/kindle/tutorial/TutorialLauncherData;)Z
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-static {}, Lcom/amazon/kindle/tutorial/launcher/ToastLauncherKt;->access$getTAG$p()Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/TutorialLauncherData;->getConfig()Lcom/amazon/kindle/tutorial/model/TutorialConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->getUserInterface()Lcom/amazon/kindle/tutorial/UserInterface;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    if-eqz v0, :cond_5

    .line 24
    check-cast v0, Lcom/amazon/kindle/tutorial/model/ToastUI;

    .line 26
    iget-object v2, v0, Lcom/amazon/kindle/tutorial/model/ToastUI;->anchors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/tutorial/model/ToastUI$Anchor;

    .line 27
    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/TutorialLauncherData;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, v3, Lcom/amazon/kindle/tutorial/model/ToastUI$Anchor;->anchorID:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/TutorialLauncherData;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "context.activity.applicationContext"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "id"

    invoke-virtual {v4, v5, v7, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/TutorialLauncherData;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    .line 36
    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/TutorialLauncherData;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v5, Lcom/amazon/kindle/krl/R$layout;->toast_tutorial_shell:I

    invoke-virtual {v2, v5, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 38
    iget v2, v3, Lcom/amazon/kindle/tutorial/model/ToastUI$Anchor;->index:I

    if-ltz v2, :cond_2

    .line 39
    invoke-virtual {v4, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_1

    .line 41
    :cond_2
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 44
    :goto_1
    invoke-static {}, Lcom/amazon/kindle/tutorial/launcher/ToastLauncherKt;->access$getTAG$p()Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/TutorialLauncherData;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 46
    sget v1, Lcom/amazon/kindle/krl/R$id;->toast_tutorial_shell:I

    sget-object v2, Lcom/amazon/kindle/tutorial/ToastTutorialFragment;->Factory:Lcom/amazon/kindle/tutorial/ToastTutorialFragment$Factory;

    invoke-virtual {v2, v0}, Lcom/amazon/kindle/tutorial/ToastTutorialFragment$Factory;->createToastTutorialFragment(Lcom/amazon/kindle/tutorial/model/ToastUI;)Lcom/amazon/kindle/tutorial/ToastTutorialFragment;

    move-result-object v0

    const-string v2, "ToastFragment"

    invoke-virtual {p1, v1, v0, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 47
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    const/4 p1, 0x1

    return p1

    .line 45
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_4
    invoke-static {}, Lcom/amazon/kindle/tutorial/launcher/ToastLauncherKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Parent not found!"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 24
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type com.amazon.kindle.tutorial.model.ToastUI"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 56
    :cond_6
    invoke-static {}, Lcom/amazon/kindle/tutorial/launcher/ToastLauncherKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p1

    const-string v0, "No UI object found for Tutorial!"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
