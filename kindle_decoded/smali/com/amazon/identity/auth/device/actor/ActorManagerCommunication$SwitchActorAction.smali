.class public Lcom/amazon/identity/auth/device/actor/ActorManagerCommunication$SwitchActorAction;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/framework/IPCCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/actor/ActorManagerCommunication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SwitchActorAction"
.end annotation


# static fields
.field public static final KEY_ACCOUNT_ID:Ljava/lang/String; = "account_id"

.field public static final KEY_ACTOR_ID:Ljava/lang/String; = "actor_id"

.field public static final KEY_ACTOR_SWITCH_MODE:Ljava/lang/String; = "actor_switch_mode"

.field public static final KEY_ACTOR_TYPE:Ljava/lang/String; = "actor_type"

.field public static final KEY_OPTIONS:Ljava/lang/String; = "options_key"

.field public static final KEY_PACAKGE_NAME:Ljava/lang/String; = "package_name"

.field public static final KEY_PROGRAM:Ljava/lang/String; = "program"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parametersToBundle(Lcom/amazon/identity/auth/device/api/MAPActorManager$ActorSwitchMode;Lcom/amazon/identity/auth/device/api/ActorInfo;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .line 366
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 367
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    const-string v1, "actor_switch_mode"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/ActorInfo;->getAccountDirectedId()Ljava/lang/String;

    move-result-object p0

    const-string v1, "account_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/ActorInfo;->getActorDirectedId()Ljava/lang/String;

    move-result-object p0

    const-string v1, "actor_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/ActorInfo;->getSuggestedActorType()Ljava/lang/String;

    move-result-object p0

    const-string v1, "actor_type"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/ActorInfo;->getProgram()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "program"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "package_name"

    .line 372
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "options_key"

    .line 373
    invoke-virtual {v0, p0, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public performIPCAction(Lcom/amazon/identity/auth/device/ed;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Landroid/os/Bundle;
    .locals 9

    if-eqz p2, :cond_0

    goto :goto_0

    .line 382
    :cond_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :goto_0
    const-string v0, "actor_switch_mode"

    .line 383
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 384
    invoke-static {v0}, Lcom/amazon/identity/auth/device/api/MAPActorManager$ActorSwitchMode;->valueOf(Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/MAPActorManager$ActorSwitchMode;

    move-result-object v2

    const-string v0, "account_id"

    .line 385
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "actor_id"

    .line 386
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "program"

    .line 387
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "actor_type"

    .line 388
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "package_name"

    .line 389
    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "options_key"

    .line 390
    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 391
    :cond_1
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    :goto_1
    const/4 v7, -0x1

    const-string v8, "callingUid"

    .line 392
    invoke-virtual {p2, v8, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v7, "MAPActorManager:switchActor"

    .line 393
    invoke-static {p2, v7}, Lcom/amazon/identity/auth/device/ej;->d(Landroid/os/Bundle;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ej;

    move-result-object v7

    .line 394
    invoke-static {v7, p3}, Lcom/amazon/identity/auth/device/mn;->a(Lcom/amazon/identity/auth/device/ej;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/Callback;

    move-result-object p2

    .line 395
    new-instance p3, Lcom/amazon/identity/auth/device/api/ActorInfo;

    invoke-direct {p3, v3, v0, v1, v4}, Lcom/amazon/identity/auth/device/api/ActorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    invoke-static {p1}, Lcom/amazon/identity/auth/device/az;->b(Lcom/amazon/identity/auth/device/ed;)Lcom/amazon/identity/auth/device/az;

    move-result-object v1

    move-object v3, p3

    move-object v4, v5

    move-object v5, v6

    move-object v6, p2

    invoke-virtual/range {v1 .. v7}, Lcom/amazon/identity/auth/device/az;->a(Lcom/amazon/identity/auth/device/api/MAPActorManager$ActorSwitchMode;Lcom/amazon/identity/auth/device/api/ActorInfo;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    const/4 p1, 0x0

    return-object p1
.end method
