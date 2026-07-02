.class public Lcom/amazon/identity/auth/device/actor/ActorManagerCommunication$GetActorForMappingAction;
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
    name = "GetActorForMappingAction"
.end annotation


# static fields
.field public static final KEY_ACCOUNT:Ljava/lang/String; = "account"

.field public static final KEY_ACTOR_MAPPING:Ljava/lang/String; = "actor_mapping"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parametersToBundle(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .line 227
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "account"

    .line 228
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "actor_mapping"

    .line 229
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public performIPCAction(Lcom/amazon/identity/auth/device/ed;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Landroid/os/Bundle;
    .locals 1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 238
    :cond_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :goto_0
    const-string p3, "account"

    .line 239
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "actor_mapping"

    .line 240
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 242
    invoke-static {p1}, Lcom/amazon/identity/auth/device/az;->b(Lcom/amazon/identity/auth/device/ed;)Lcom/amazon/identity/auth/device/az;

    move-result-object p1

    .line 244
    invoke-virtual {p1, p3, p2}, Lcom/amazon/identity/auth/device/az;->getActorForMapping(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method
