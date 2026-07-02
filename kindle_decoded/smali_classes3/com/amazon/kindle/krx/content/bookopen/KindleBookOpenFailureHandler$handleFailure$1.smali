.class final Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenFailureHandler$handleFailure$1;
.super Ljava/lang/Object;
.source "KindleBookOpenFailureHandler.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenFailureHandler;->handleFailure(Ljava/lang/String;Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $currentActivity:Landroid/app/Activity;

.field final synthetic $intent:Landroid/content/Intent;

.field final synthetic $sharedElementTransitionView:Landroid/view/View;

.field final synthetic $startWithTransition:Z


# direct methods
.method constructor <init>(Landroid/view/View;ZLandroid/app/Activity;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenFailureHandler$handleFailure$1;->$sharedElementTransitionView:Landroid/view/View;

    iput-boolean p2, p0, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenFailureHandler$handleFailure$1;->$startWithTransition:Z

    iput-object p3, p0, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenFailureHandler$handleFailure$1;->$currentActivity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenFailureHandler$handleFailure$1;->$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 23
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenFailureHandler$handleFailure$1;->$sharedElementTransitionView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenFailureHandler$handleFailure$1;->$startWithTransition:Z

    if-eqz v1, :cond_0

    const-string v1, "activity_transition_with_animation"

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenFailureHandler$handleFailure$1;->$currentActivity:Landroid/app/Activity;

    .line 26
    iget-object v2, p0, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenFailureHandler$handleFailure$1;->$sharedElementTransitionView:Landroid/view/View;

    .line 25
    invoke-static {v0, v2, v1}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenFailureHandler$handleFailure$1;->$currentActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenFailureHandler$handleFailure$1;->$intent:Landroid/content/Intent;

    sget-object v3, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->Companion:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$Companion;

    invoke-virtual {v3}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$Companion;->getDOWNLOAD_ERROR_ACTIVITY_REQUEST_CODE()I

    move-result v3

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 28
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenFailureHandler$handleFailure$1;->$currentActivity:Landroid/app/Activity;

    instance-of v1, v0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    if-eqz v1, :cond_1

    .line 29
    invoke-virtual {v0}, Landroid/app/Activity;->finishAfterTransition()V

    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenFailureHandler$handleFailure$1;->$currentActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenFailureHandler$handleFailure$1;->$intent:Landroid/content/Intent;

    sget-object v2, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->Companion:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$Companion;

    invoke-virtual {v2}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$Companion;->getDOWNLOAD_ERROR_ACTIVITY_REQUEST_CODE()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    :goto_0
    return-void
.end method
