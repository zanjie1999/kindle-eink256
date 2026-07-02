.class public Lcom/amazon/identity/auth/device/token/CentralTokenManagementCommunication$GetTokenForActorCommand;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/framework/IPCCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/token/CentralTokenManagementCommunication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetTokenForActorCommand"
.end annotation


# static fields
.field public static final KEY_ACCOUNT_ID:Ljava/lang/String; = "account_id"

.field public static final KEY_ACTOR_ID:Ljava/lang/String; = "actor_id"

.field public static final KEY_OPTIONS:Ljava/lang/String; = "options_key"

.field public static final KEY_TOKEN_TYPE:Ljava/lang/String; = "token_type"

.field public static final KEY_TOKEN_VALI_FAIL_CONTEXT:Ljava/lang/String; = "failure_context"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parametersToBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .line 155
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "account_id"

    .line 156
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "actor_id"

    .line 157
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "token_type"

    .line 158
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "failure_context"

    .line 159
    invoke-virtual {v0, p0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "options_key"

    .line 160
    invoke-virtual {v0, p0, p4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public performIPCAction(Lcom/amazon/identity/auth/device/ed;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Landroid/os/Bundle;
    .locals 10

    if-eqz p2, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :goto_0
    const-string v0, "account_id"

    .line 170
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "actor_id"

    .line 171
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "token_type"

    .line 172
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "failure_context"

    .line 173
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v0, "options_key"

    .line 174
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 175
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_1
    move-object v7, v0

    const/4 v0, -0x1

    const-string v1, "callingUid"

    .line 176
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v7, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "TokenManagement:GetTokenForActor"

    .line 178
    invoke-static {p2, v0}, Lcom/amazon/identity/auth/device/ej;->d(Landroid/os/Bundle;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ej;

    move-result-object v9

    .line 179
    invoke-static {v9, p3}, Lcom/amazon/identity/auth/device/mn;->a(Lcom/amazon/identity/auth/device/ej;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/Callback;

    move-result-object v8

    .line 181
    invoke-static {p1}, Lcom/amazon/identity/auth/device/hg;->ag(Landroid/content/Context;)Lcom/amazon/identity/auth/device/hg;

    move-result-object v1

    move-object v2, p1

    .line 183
    invoke-virtual/range {v1 .. v9}, Lcom/amazon/identity/auth/device/hg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    const/4 p1, 0x0

    return-object p1
.end method
