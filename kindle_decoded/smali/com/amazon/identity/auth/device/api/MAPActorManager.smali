.class public Lcom/amazon/identity/auth/device/api/MAPActorManager;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/api/MAPActorManager$ActorSwitchMode;
    }
.end annotation


# static fields
.field public static final ERROR_ACCOUNT_NOT_EXIST:I = 0x2
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final ERROR_INVALID_INPUT:I = 0x5
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final ERROR_UNKNOWN_DB_FAILURE:I = 0x3
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final ERROR_UNKNOWN_IPC_ERROR:I = 0x4
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_ACCOUNT_ID:Ljava/lang/String; = "account_id"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_ACTOR_ID:Ljava/lang/String; = "actor_id"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_ACTOR_TYPE:Ljava/lang/String; = "actor_type"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_DO_NOT_PASS_PACKAGE_NAME_TO_APS:Ljava/lang/String; = "do_not_pass_package_name_to_aps"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_ERROR_MESSAGE:Ljava/lang/String; = "error_message"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_PROGRAM:Ljava/lang/String; = "program"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_RESULT_ACTOR_TYPE:Ljava/lang/String; = "result_actor_type"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_RESULT_CODE:Ljava/lang/String; = "result_code"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_RETRYABLE:Ljava/lang/String; = "retryable"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final SUCCESS:I = 0x1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field


# instance fields
.field private o:Lcom/amazon/identity/auth/device/ed;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    invoke-static {p1}, Lcom/amazon/identity/auth/device/api/MAPInit;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/api/MAPInit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MAPInit;->initialize()V

    .line 112
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/MAPActorManager;->o:Lcom/amazon/identity/auth/device/ed;

    return-void
.end method


# virtual methods
.method public enrollActorWithUI(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 9
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    const-string v0, "EnrollActorWithUI"

    .line 411
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ej;->by(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ej;

    move-result-object v8

    .line 412
    invoke-virtual {v8}, Lcom/amazon/identity/auth/device/ej;->dZ()Lcom/amazon/identity/auth/device/ms;

    move-result-object v0

    .line 413
    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/MAPActorManager;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/ay;->a(Lcom/amazon/identity/auth/device/ed;)Lcom/amazon/identity/auth/device/ba;

    move-result-object v1

    .line 414
    invoke-static {v8, v0, p6}, Lcom/amazon/identity/auth/device/mn;->a(Lcom/amazon/identity/auth/device/ej;Lcom/amazon/identity/auth/device/ms;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/Callback;

    move-result-object v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v8}, Lcom/amazon/identity/auth/device/ba;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object p1

    return-object p1
.end method

.method public getActor(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPActorManager;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/ay;->a(Lcom/amazon/identity/auth/device/ed;)Lcom/amazon/identity/auth/device/ba;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/amazon/identity/auth/device/ba;->getActor(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public getActorForMapping(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPActorManager;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/ay;->a(Lcom/amazon/identity/auth/device/ed;)Lcom/amazon/identity/auth/device/ba;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/amazon/identity/auth/device/ba;->getActorForMapping(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentActor(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 287
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPActorManager;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/ay;->a(Lcom/amazon/identity/auth/device/ed;)Lcom/amazon/identity/auth/device/ba;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/identity/auth/device/ba;->getCurrentActor(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public removeActorMapping(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPActorManager;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/ay;->a(Lcom/amazon/identity/auth/device/ed;)Lcom/amazon/identity/auth/device/ba;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/amazon/identity/auth/device/ba;->removeActorMapping(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public removeCurrentActor(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 317
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPActorManager;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/ay;->a(Lcom/amazon/identity/auth/device/ed;)Lcom/amazon/identity/auth/device/ba;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/identity/auth/device/ba;->removeCurrentActor(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public setActorMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPActorManager;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/ay;->a(Lcom/amazon/identity/auth/device/ed;)Lcom/amazon/identity/auth/device/ba;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/identity/auth/device/ba;->setActorMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public setCurrentActor(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 251
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPActorManager;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/ay;->a(Lcom/amazon/identity/auth/device/ed;)Lcom/amazon/identity/auth/device/ba;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/amazon/identity/auth/device/ba;->setCurrentActor(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public signUpAndEnrollActorWithUI(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 8
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    const-string v0, "SignUpAndEnrollActorWithUI"

    .line 466
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ej;->by(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ej;

    move-result-object v7

    .line 467
    invoke-virtual {v7}, Lcom/amazon/identity/auth/device/ej;->dZ()Lcom/amazon/identity/auth/device/ms;

    move-result-object v0

    .line 468
    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/MAPActorManager;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/ay;->a(Lcom/amazon/identity/auth/device/ed;)Lcom/amazon/identity/auth/device/ba;

    move-result-object v1

    .line 469
    invoke-static {v7, v0, p5}, Lcom/amazon/identity/auth/device/mn;->a(Lcom/amazon/identity/auth/device/ej;Lcom/amazon/identity/auth/device/ms;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/Callback;

    move-result-object v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v1 .. v7}, Lcom/amazon/identity/auth/device/ba;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object p1

    return-object p1
.end method

.method public switchActor(Lcom/amazon/identity/auth/device/api/MAPActorManager$ActorSwitchMode;Lcom/amazon/identity/auth/device/api/ActorInfo;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 8
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/identity/auth/device/api/MAPActorManager$ActorSwitchMode;",
            "Lcom/amazon/identity/auth/device/api/ActorInfo;",
            "Landroid/os/Bundle;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "switchActor"

    .line 505
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ej;->by(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ej;

    move-result-object v7

    .line 506
    invoke-virtual {v7}, Lcom/amazon/identity/auth/device/ej;->dZ()Lcom/amazon/identity/auth/device/ms;

    move-result-object v0

    .line 507
    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/MAPActorManager;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/ay;->a(Lcom/amazon/identity/auth/device/ed;)Lcom/amazon/identity/auth/device/ba;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/MAPActorManager;->o:Lcom/amazon/identity/auth/device/ed;

    .line 508
    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v0, p4}, Lcom/amazon/identity/auth/device/mn;->a(Lcom/amazon/identity/auth/device/ej;Lcom/amazon/identity/auth/device/ms;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/Callback;

    move-result-object v6

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-interface/range {v1 .. v7}, Lcom/amazon/identity/auth/device/ba;->a(Lcom/amazon/identity/auth/device/api/MAPActorManager$ActorSwitchMode;Lcom/amazon/identity/auth/device/api/ActorInfo;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object p1

    return-object p1
.end method
