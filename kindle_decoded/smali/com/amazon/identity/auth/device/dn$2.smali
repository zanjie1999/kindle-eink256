.class final Lcom/amazon/identity/auth/device/dn$2;
.super Lcom/amazon/identity/auth/device/dg;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/dn;->D(Landroid/content/Context;)Lcom/amazon/identity/auth/device/dg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/identity/auth/device/dg<",
        "Lcom/amazon/identity/auth/device/callback/IGenericIPC;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 517
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/dg;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method protected synthetic a(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 0

    .line 517
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/dn$2;->asInterface(Landroid/os/IBinder;)Lcom/amazon/identity/auth/device/callback/IGenericIPC;

    move-result-object p1

    return-object p1
.end method

.method protected asInterface(Landroid/os/IBinder;)Lcom/amazon/identity/auth/device/callback/IGenericIPC;
    .locals 0

    .line 521
    invoke-static {p1}, Lcom/amazon/identity/auth/device/callback/IGenericIPC$Stub;->asInterface(Landroid/os/IBinder;)Lcom/amazon/identity/auth/device/callback/IGenericIPC;

    move-result-object p1

    return-object p1
.end method
