.class public Lcom/amazon/identity/auth/accounts/MultipleAccountsCommunication$DoesAccountHaveMappingAction;
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
    name = "DoesAccountHaveMappingAction"
.end annotation


# static fields
.field public static final KEY_ACCOUNT_MAPPING:Ljava/lang/String; = "mapping"

.field public static final KEY_DIRECTED_ID:Ljava/lang/String; = "directedId"

.field public static final KEY_VALUE:Ljava/lang/String; = "value"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResult(Landroid/os/Bundle;)Z
    .locals 1

    const-string/jumbo v0, "value"

    .line 123
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static parametersToBundle(Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;)Landroid/os/Bundle;
    .locals 2

    .line 128
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "directedId"

    .line 129
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    new-array p0, p0, [Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;

    const/4 v1, 0x0

    aput-object p1, p0, v1

    .line 130
    invoke-static {p0}, Lcom/amazon/identity/auth/accounts/MultipleAccountsCommunication;->b([Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "mapping"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public performIPCAction(Lcom/amazon/identity/auth/device/ed;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Landroid/os/Bundle;
    .locals 3

    if-eqz p2, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :goto_0
    const-string p3, "directedId"

    .line 140
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string/jumbo v0, "mapping"

    .line 141
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/amazon/identity/auth/accounts/MultipleAccountsCommunication;->P(Ljava/lang/String;)[Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 144
    array-length v1, p2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 146
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ab;->g(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ab;

    move-result-object p1

    .line 147
    aget-object p2, p2, v0

    invoke-virtual {p1, p3, p2}, Lcom/amazon/identity/auth/device/ab;->doesAccountHaveMapping(Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;)Z

    move-result v0

    goto :goto_1

    .line 151
    :cond_1
    invoke-static {}, Lcom/amazon/identity/auth/accounts/MultipleAccountsCommunication;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Did not specify the mappings properly"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :goto_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo p2, "value"

    .line 156
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p1
.end method
