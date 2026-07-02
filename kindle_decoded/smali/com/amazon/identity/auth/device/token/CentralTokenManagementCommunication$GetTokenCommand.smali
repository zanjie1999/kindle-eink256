.class public Lcom/amazon/identity/auth/device/token/CentralTokenManagementCommunication$GetTokenCommand;
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
    name = "GetTokenCommand"
.end annotation


# static fields
.field public static final KEY_DIRECTED_ID:Ljava/lang/String; = "directed_id"

.field public static final KEY_OPTIONS:Ljava/lang/String; = "options_key"

.field public static final KEY_TOKEN:Ljava/lang/String; = "token_key"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parametersToBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .line 32
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "directed_id"

    .line 33
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "token_key"

    .line 34
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "options_key"

    .line 35
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public performIPCAction(Lcom/amazon/identity/auth/device/ed;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Landroid/os/Bundle;
    .locals 7

    if-eqz p2, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :goto_0
    const-string v0, "directed_id"

    .line 45
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "token_key"

    .line 46
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "options_key"

    .line 47
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 48
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_1
    move-object v4, v0

    const/4 v0, -0x1

    const-string v1, "callingUid"

    .line 49
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "TokenManagement:GetToken"

    .line 51
    invoke-static {p2, v0}, Lcom/amazon/identity/auth/device/ej;->d(Landroid/os/Bundle;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ej;

    move-result-object v6

    .line 52
    invoke-static {v6, p3}, Lcom/amazon/identity/auth/device/mn;->a(Lcom/amazon/identity/auth/device/ej;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/Callback;

    move-result-object v5

    .line 54
    invoke-static {p1}, Lcom/amazon/identity/auth/device/hg;->ag(Landroid/content/Context;)Lcom/amazon/identity/auth/device/hg;

    move-result-object v1

    .line 56
    invoke-virtual/range {v1 .. v6}, Lcom/amazon/identity/auth/device/hg;->e(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    const/4 p1, 0x0

    return-object p1
.end method
