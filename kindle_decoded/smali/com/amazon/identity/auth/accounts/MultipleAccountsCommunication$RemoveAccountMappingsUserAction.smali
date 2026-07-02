.class public Lcom/amazon/identity/auth/accounts/MultipleAccountsCommunication$RemoveAccountMappingsUserAction;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/framework/IPCCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/accounts/MultipleAccountsCommunication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoveAccountMappingsUserAction"
.end annotation


# static fields
.field public static final KEY_ACCOUNT_MAPPINGS:Ljava/lang/String; = "mappings"

.field public static final KEY_DIRECTED_ID:Ljava/lang/String; = "directedId"

.field public static final KEY_VALUE:Ljava/lang/String; = "value"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResult(Landroid/os/Bundle;)Z
    .locals 1

    const-string/jumbo v0, "value"

    .line 84
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static varargs parametersToBundle(Ljava/lang/String;[Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;)Landroid/os/Bundle;
    .locals 2

    .line 89
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "directedId"

    .line 90
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-static {p1}, Lcom/amazon/identity/auth/accounts/MultipleAccountsCommunication;->b([Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "mappings"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public performIPCAction(Lcom/amazon/identity/auth/device/ed;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Landroid/os/Bundle;
    .locals 1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :goto_0
    const-string p3, "directedId"

    .line 101
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string/jumbo v0, "mappings"

    .line 102
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/amazon/identity/auth/accounts/MultipleAccountsCommunication;->P(Ljava/lang/String;)[Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;

    move-result-object p2

    .line 104
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ab;->g(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ab;

    move-result-object p1

    .line 106
    invoke-virtual {p1, p3, p2}, Lcom/amazon/identity/auth/device/ab;->removeAccountMappings(Ljava/lang/String;[Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;)Z

    move-result p1

    .line 108
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo p3, "value"

    .line 109
    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p2
.end method
