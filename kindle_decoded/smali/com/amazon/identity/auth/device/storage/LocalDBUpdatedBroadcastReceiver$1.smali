.class Lcom/amazon/identity/auth/device/storage/LocalDBUpdatedBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/storage/LocalDBUpdatedBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ok:Lcom/amazon/identity/auth/device/storage/LocalDataStorage;

.field final synthetic ol:Lcom/amazon/identity/auth/device/storage/LocalDBUpdatedBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/storage/LocalDBUpdatedBroadcastReceiver;Lcom/amazon/identity/auth/device/storage/LocalDataStorage;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/amazon/identity/auth/device/storage/LocalDBUpdatedBroadcastReceiver$1;->ol:Lcom/amazon/identity/auth/device/storage/LocalDBUpdatedBroadcastReceiver;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/storage/LocalDBUpdatedBroadcastReceiver$1;->ok:Lcom/amazon/identity/auth/device/storage/LocalDataStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazon/identity/auth/device/storage/LocalDBUpdatedBroadcastReceiver$1;->ok:Lcom/amazon/identity/auth/device/storage/LocalDataStorage;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->fw()V

    return-void
.end method
