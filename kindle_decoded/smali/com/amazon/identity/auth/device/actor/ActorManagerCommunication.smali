.class public Lcom/amazon/identity/auth/device/actor/ActorManagerCommunication;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/ba;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/actor/ActorManagerCommunication$SwitchActorAction;,
        Lcom/amazon/identity/auth/device/actor/ActorManagerCommunication$EnrollActorWithUIAction;,
        Lcom/amazon/identity/auth/device/actor/ActorManagerCommunication$SignUpAndEnrollActorWithUIAction;,
        Lcom/amazon/identity/auth/device/actor/ActorManagerCommunication$RemoveActorMappingAction;,
        Lcom/amazon/identity/auth/device/actor/ActorManagerCommunication$GetActorForMappingAction;,
        Lcom/amazon/identity/auth/device/actor/ActorManagerCommunication$SetActorMappingAction;
    }
.end annotation


# instance fields
.field private final aY:Lcom/amazon/identity/auth/device/dn;

.field private final o:Lcom/amazon/identity/auth/device/ed;


# direct methods
.method public constructor <init>(Lcom/amazon/identity/auth/device/ed;)V
    .locals 4

    .line 36
    new-instance v0, Lcom/amazon/identity/auth/device/dn;

    const/4 v1, 0x4

    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "result_code"

    const-string v3, "error_message"

    invoke-direct {v0, p1, v2, v3, v1}, Lcom/amazon/identity/auth/device/dn;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/amazon/identity/auth/device/actor/ActorManagerCommunication;-><init>(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/dn;)V

    return-void
.end method

.method constructor <init>(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/dn;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/amazon/identity/auth/device/actor/ActorManagerCommunication;->o:Lcom/amazon/identity/auth/device/ed;

    .line 31
    iput-object p2, p0, Lcom/amazon/identity/auth/device/actor/ActorManagerCommunication;->aY:Lcom/amazon/identity/auth/device/dn;

    return-void
.end method

.method private aC(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Error parsing IPC request"

    .line 184
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "The given IPC information was not of a valid form"

    .line 185
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private n(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "result_code"

    .line 172
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-string v0, "error_message"

    .line 176
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/actor/ActorManagerCommunication;->aC(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string/jumbo v1, "retryable"

    .line 178
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            "Lcom/amazon/identity/auth/device/ej;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 132
    new-instance p1, Lcom/amazon/identity/auth/device/bl;

    invoke-direct {p1, p5}, Lcom/amazon/identity/auth/device/bl;-><init>(Lcom/amazon/identity/auth/device/api/Callback;)V

    .line 133
    iget-object p5, p0, Lcom/amazon/identity/auth/device/actor/ActorManagerCommunication;->aY:Lcom/amazon/identity/auth/device/dn;

    const-class p6, Lcom/amazon/identity/auth/device/actor/ActorManagerCommunication$SignUpAndEnrollActorWithUIAction;

    .line 134
    invoke-static {p2, p3, p4}, Lcom/amazon/identity/auth/device/actor/ActorManagerCommunication$SignUpAndEnrollActorWithUIAction;->parametersToBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    .line 133
    invoke-virtual {p5, p6, p2, p1}, Lcom/amazon/identity/auth/device/dn;->a(Ljava/lang/Class;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)V

    return-object p1
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            "Lcom/amazon/identity/auth/device/ej;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 148
    new-instance p1, Lcom/amazon/identity/auth/device/bl;

    invoke-direct {p1, p6}, Lcom/amazon/identity/auth/device/bl;-><init>(Lcom/amazon/identity/auth/device/api/Callback;)V

    .line 149
    iget-object p6, p0, Lcom/amazon/identity/auth/device/actor/ActorManagerCommunication;->aY:Lcom/amazon/identity/auth/device/dn;

    const-class p7, Lcom/amazon/identity/auth/device/actor/ActorManagerCommunication$EnrollActorWithUIAction;

    .line 150
    invoke-static {p2, p3, p4, p5}, Lcom/amazon/identity/auth/device/actor/ActorManagerCommunication$EnrollActorWithUIAction;->parametersToBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    .line 149
    invoke-virtual {p6, p7, p2, p1}, Lcom/amazon/identity/auth/device/dn;->a(Ljava/lang/Class;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)V

    return-object p1
.end method

.method public a(Lcom/amazon/identity/auth/device/api/MAPActorManager$ActorSwitchMode;Lcom/amazon/identity/auth/device/api/ActorInfo;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/identity/auth/device/api/MAPActorManager$ActorSwitchMode;",
            "Lcom/amazon/identity/auth/device/api/ActorInfo;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            "Lcom/amazon/identity/auth/device/ej;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 163
    new-instance p6, Lcom/amazon/identity/auth/device/bl;

    invoke-direct {p6, p5}, Lcom/amazon/identity/auth/device/bl;-><init>(Lcom/amazon/identity/auth/device/api/Callback;)V

    .line 164
    iget-object p5, p0, Lcom/amazon/identity/auth/device/actor/ActorManagerCommunication;->aY:Lcom/amazon/identity/auth/device/dn;

    const-class v0, Lcom/amazon/identity/auth/device/actor/ActorManagerCommunication$SwitchActorAction;

    .line 165
    invoke-static {p1, p2, p3, p4}, Lcom/amazon/identity/auth/device/actor/ActorManagerCommunication$SwitchActorAction;->parametersToBundle(Lcom/amazon/identity/auth/device/api/MAPActorManager$ActorSwitchMode;Lcom/amazon/identity/auth/device/api/ActorInfo;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 164
    invoke-virtual {p5, v0, p1, p6}, Lcom/amazon/identity/auth/device/dn;->a(Ljava/lang/Class;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)V

    return-object p6
.end method

.method public getActor(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .line 121
    sget-object p1, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->UNSUPPORTED_OPERATION:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const-string p2, "This API can only be called on 3P devices"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/amazon/identity/auth/device/api/MAPErrorCallbackHelper;->getErrorBundleForActorAPI(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public getActorForMapping(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .line 72
    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/actor/ActorManagerCommunication$GetActorForMappingAction;->parametersToBundle(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 73
    iget-object p2, p0, Lcom/amazon/identity/auth/device/actor/ActorManagerCommunication;->aY:Lcom/amazon/identity/auth/device/dn;

    const-class v0, Lcom/amazon/identity/auth/device/actor/ActorManagerCommunication$GetActorForMappingAction;

    invoke-virtual {p2, v0, p1}, Lcom/amazon/identity/auth/device/dn;->a(Ljava/lang/Class;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 74
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/actor/ActorManagerCommunication;->n(Landroid/os/Bundle;)V

    return-object p1
.end method

.method public getCurrentActor(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    const-string v0, "com.amazon.identity.auth.device.current.actor"

    .line 106
    invoke-virtual {p0, p1, v0}, Lcom/amazon/identity/auth/device/actor/ActorManagerCommunication;->getActorForMapping(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public removeActorMapping(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .line 91
    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/actor/ActorManagerCommunication$RemoveActorMappingAction;->parametersToBundle(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 92
    iget-object p2, p0, Lcom/amazon/identity/auth/device/actor/ActorManagerCommunication;->aY:Lcom/amazon/identity/auth/device/dn;

    const-class v0, Lcom/amazon/identity/auth/device/actor/ActorManagerCommunication$RemoveActorMappingAction;

    invoke-virtual {p2, v0, p1}, Lcom/amazon/identity/auth/device/dn;->a(Ljava/lang/Class;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 93
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/actor/ActorManagerCommunication;->n(Landroid/os/Bundle;)V

    return-object p1
.end method

.method public removeCurrentActor(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    const-string v0, "com.amazon.identity.auth.device.current.actor"

    .line 112
    invoke-virtual {p0, p1, v0}, Lcom/amazon/identity/auth/device/actor/ActorManagerCommunication;->removeActorMapping(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public setActorMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0

    .line 54
    invoke-static {p1, p2, p3}, Lcom/amazon/identity/auth/device/actor/ActorManagerCommunication$SetActorMappingAction;->parametersToBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 55
    iget-object p2, p0, Lcom/amazon/identity/auth/device/actor/ActorManagerCommunication;->aY:Lcom/amazon/identity/auth/device/dn;

    const-class p3, Lcom/amazon/identity/auth/device/actor/ActorManagerCommunication$SetActorMappingAction;

    invoke-virtual {p2, p3, p1}, Lcom/amazon/identity/auth/device/dn;->a(Ljava/lang/Class;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 56
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/actor/ActorManagerCommunication;->n(Landroid/os/Bundle;)V

    return-object p1
.end method

.method public setCurrentActor(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    const-string v0, "com.amazon.identity.auth.device.current.actor"

    .line 100
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/identity/auth/device/actor/ActorManagerCommunication;->setActorMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method
