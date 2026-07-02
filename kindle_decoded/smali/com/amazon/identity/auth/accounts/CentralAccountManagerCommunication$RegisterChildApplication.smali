.class public Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$RegisterChildApplication;
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
    name = "RegisterChildApplication"
.end annotation


# static fields
.field public static final KEY_DEVICE_TYPE:Ljava/lang/String; = "device_type"

.field public static final KEY_DIRECTED_ID:Ljava/lang/String; = "directed_id"

.field public static final KEY_OPTIONS:Ljava/lang/String; = "options"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parametersToBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)Landroid/os/Bundle;
    .locals 2

    .line 72
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "directed_id"

    .line 73
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "device_type"

    .line 74
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "options"

    .line 75
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p3, v0}, Lcom/amazon/identity/auth/device/ej;->A(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public performIPCAction(Lcom/amazon/identity/auth/device/ed;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Landroid/os/Bundle;
    .locals 7

    if-eqz p2, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :goto_0
    const-string v0, "directed_id"

    .line 86
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "device_type"

    .line 87
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "options"

    .line 88
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 90
    invoke-static {p1}, Lcom/amazon/identity/auth/device/h;->b(Landroid/content/Context;)Lcom/amazon/identity/auth/device/h;

    move-result-object v1

    const-string p1, "RegisterChildApplication"

    .line 92
    invoke-static {p2, p1}, Lcom/amazon/identity/auth/device/ej;->d(Landroid/os/Bundle;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ej;

    move-result-object v6

    .line 93
    invoke-static {v6, p3}, Lcom/amazon/identity/auth/device/mn;->a(Lcom/amazon/identity/auth/device/ej;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/Callback;

    move-result-object v5

    .line 94
    invoke-virtual/range {v1 .. v6}, Lcom/amazon/identity/auth/device/h;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    const/4 p1, 0x0

    return-object p1
.end method
