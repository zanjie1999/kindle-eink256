.class public Lcom/amazon/kindle/krx/application/AlertDialogManager;
.super Ljava/lang/Object;
.source "AlertDialogManager.java"

# interfaces
.implements Lcom/amazon/kindle/krx/application/IAlertDialogManager;


# instance fields
.field androidApplicationController:Lcom/amazon/kcp/application/IAndroidApplicationController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/krx/application/AlertDialogManager;->androidApplicationController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    return-void
.end method


# virtual methods
.method public displayAlertDialog(Lcom/amazon/kindle/krx/application/IAlertDialogManager$AlertDialogType;)V
    .locals 2

    .line 21
    sget-object v0, Lcom/amazon/kindle/krx/application/IAlertDialogManager$AlertDialogType;->CONNECTION_ERROR:Lcom/amazon/kindle/krx/application/IAlertDialogManager$AlertDialogType;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 22
    iget-object p1, p0, Lcom/amazon/kindle/krx/application/AlertDialogManager;->androidApplicationController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    const-string v0, "ConnectionError"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kcp/application/IUIMessaging;->showAlert(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 23
    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/application/IAlertDialogManager$AlertDialogType;->UNREGISTERED_USER:Lcom/amazon/kindle/krx/application/IAlertDialogManager$AlertDialogType;

    if-ne p1, v0, :cond_1

    .line 24
    iget-object p1, p0, Lcom/amazon/kindle/krx/application/AlertDialogManager;->androidApplicationController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    const-string v0, "UnregisteredUser"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kcp/application/IUIMessaging;->showAlert(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 26
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported alertDialogType!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
