.class public Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$IsAccountRegisteredAction;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/framework/IPCCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IsAccountRegisteredAction"
.end annotation


# static fields
.field public static final KEY_DIRECTED_ID:Ljava/lang/String; = "directed_id"

.field public static final KEY_VALUE:Ljava/lang/String; = "value"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResult(Landroid/os/Bundle;)Z
    .locals 1

    const-string/jumbo v0, "value"

    .line 139
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static parametersToBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .line 132
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "directed_id"

    .line 133
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public performIPCAction(Lcom/amazon/identity/auth/device/ed;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Landroid/os/Bundle;
    .locals 0

    if-eqz p2, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :goto_0
    const-string p3, "directed_id"

    .line 148
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 150
    invoke-static {p1}, Lcom/amazon/identity/auth/device/h;->b(Landroid/content/Context;)Lcom/amazon/identity/auth/device/h;

    move-result-object p1

    .line 151
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 152
    invoke-virtual {p1, p2}, Lcom/amazon/identity/auth/device/h;->isAccountRegistered(Ljava/lang/String;)Z

    move-result p1

    const-string/jumbo p2, "value"

    .line 153
    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p3
.end method
