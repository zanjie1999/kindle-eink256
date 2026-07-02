.class Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic N:Lcom/amazon/identity/auth/device/ej;

.field final synthetic bb:Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;Lcom/amazon/identity/auth/device/ej;)V
    .locals 0

    .line 768
    iput-object p1, p0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$1;->bb:Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;

    iput-object p2, p0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$1;->N:Lcom/amazon/identity/auth/device/ej;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 773
    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$1;->bb:Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;

    new-instance v1, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$1$1;

    invoke-direct {v1, p0}, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$1$1;-><init>(Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$1;)V

    iget-object v2, p0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$1;->N:Lcom/amazon/identity/auth/device/ej;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->a(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;Landroid/os/Bundle;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    return-void
.end method
