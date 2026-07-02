.class public Lcom/amazon/startactions/ui/OverlayDummyActivity;
.super Landroid/app/Activity;
.source "OverlayDummyActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static anyActionsController:Lcom/amazon/startactions/ui/IAnyActionsUIController;

.field private static intent:Landroid/content/Intent;

.field private static requestCode:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/amazon/startactions/ui/OverlayDummyActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/startactions/ui/OverlayDummyActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static startActivityForResultWithDummy(Landroid/content/Intent;ILcom/amazon/startactions/ui/IAnyActionsUIController;Landroid/app/Activity;)V
    .locals 0

    .line 79
    sput-object p2, Lcom/amazon/startactions/ui/OverlayDummyActivity;->anyActionsController:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    .line 80
    sput-object p0, Lcom/amazon/startactions/ui/OverlayDummyActivity;->intent:Landroid/content/Intent;

    .line 81
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sput-object p0, Lcom/amazon/startactions/ui/OverlayDummyActivity;->requestCode:Ljava/lang/Integer;

    .line 84
    new-instance p0, Landroid/content/Intent;

    const-class p1, Lcom/amazon/startactions/ui/OverlayDummyActivity;

    invoke-direct {p0, p3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p3, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 54
    sget-object v0, Lcom/amazon/startactions/ui/OverlayDummyActivity;->anyActionsController:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p1, 0x0

    .line 57
    sput-object p1, Lcom/amazon/startactions/ui/OverlayDummyActivity;->anyActionsController:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    .line 58
    sput-object p1, Lcom/amazon/startactions/ui/OverlayDummyActivity;->requestCode:Ljava/lang/Integer;

    .line 59
    sput-object p1, Lcom/amazon/startactions/ui/OverlayDummyActivity;->intent:Landroid/content/Intent;

    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_1

    .line 29
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 30
    sget-object p1, Lcom/amazon/startactions/ui/OverlayDummyActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "only try and start an activity for result the first time. ignoring subsequent calls."

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 36
    sget-object v1, Lcom/amazon/startactions/ui/OverlayDummyActivity;->anyActionsController:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    aput-object v1, p1, v0

    const/4 v0, 0x1

    sget-object v1, Lcom/amazon/startactions/ui/OverlayDummyActivity;->requestCode:Ljava/lang/Integer;

    aput-object v1, p1, v0

    const/4 v0, 0x2

    sget-object v1, Lcom/amazon/startactions/ui/OverlayDummyActivity;->intent:Landroid/content/Intent;

    aput-object v1, p1, v0

    invoke-static {p1}, Lcom/amazon/ea/guava/Objects;->anyNull([Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 37
    sget-object p1, Lcom/amazon/startactions/ui/OverlayDummyActivity;->TAG:Ljava/lang/String;

    const-string v0, "Dummy activity was not configured with anything to launch; use startActivityForResultWithDummy. Will finish immediately."

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 44
    :cond_2
    sget-object p1, Lcom/amazon/startactions/ui/OverlayDummyActivity;->intent:Landroid/content/Intent;

    sget-object v0, Lcom/amazon/startactions/ui/OverlayDummyActivity;->requestCode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
