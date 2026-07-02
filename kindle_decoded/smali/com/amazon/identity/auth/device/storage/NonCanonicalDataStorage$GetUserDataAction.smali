.class public Lcom/amazon/identity/auth/device/storage/NonCanonicalDataStorage$GetUserDataAction;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/framework/IPCCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/storage/NonCanonicalDataStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetUserDataAction"
.end annotation


# static fields
.field public static final KEY_DIRECTED_ID:Ljava/lang/String; = "directedId"

.field public static final KEY_KEY:Ljava/lang/String; = "key"

.field public static final KEY_VALUE:Ljava/lang/String; = "value"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResult(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "value"

    .line 88
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public performIPCAction(Lcom/amazon/identity/auth/device/ed;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Landroid/os/Bundle;
    .locals 1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :goto_0
    const-string p3, "directedId"

    .line 97
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "key"

    .line 98
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 100
    invoke-static {p1}, Lcom/amazon/identity/auth/device/storage/NonCanonicalDataStorage;->ab(Landroid/content/Context;)Lcom/amazon/identity/auth/device/gc;

    move-result-object p1

    .line 102
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 103
    invoke-virtual {p1, p3, p2}, Lcom/amazon/identity/auth/device/gc;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "value"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
