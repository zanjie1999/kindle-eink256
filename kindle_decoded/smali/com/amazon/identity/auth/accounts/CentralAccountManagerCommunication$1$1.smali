.class Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$1$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bc:Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$1;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$1;)V
    .locals 0

    .line 774
    iput-object p1, p0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$1$1;->bc:Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/os/Bundle;)V
    .locals 1

    .line 785
    invoke-static {}, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Failed to deregister the device after detecting child device type change."

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 1

    .line 779
    invoke-static {}, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Device was deregistered due to the child device type change."

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
