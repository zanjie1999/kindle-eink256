.class public abstract Lcom/audible/mobile/player/identity/BaseLocalBroadcastReceiverRegistrationSupport;
.super Landroid/content/BroadcastReceiver;
.source "BaseLocalBroadcastReceiverRegistrationSupport.java"

# interfaces
.implements Lcom/audible/mobile/framework/Registerable;


# instance fields
.field private final intentFilterActions:[Ljava/lang/String;

.field private final localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;


# direct methods
.method protected varargs constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 32
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/mobile/player/identity/BaseLocalBroadcastReceiverRegistrationSupport;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 33
    iput-object p2, p0, Lcom/audible/mobile/player/identity/BaseLocalBroadcastReceiverRegistrationSupport;->intentFilterActions:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public register()V
    .locals 5

    .line 43
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 44
    iget-object v1, p0, Lcom/audible/mobile/player/identity/BaseLocalBroadcastReceiverRegistrationSupport;->intentFilterActions:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 45
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/audible/mobile/player/identity/BaseLocalBroadcastReceiverRegistrationSupport;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-virtual {v1, p0, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public unregister()V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/audible/mobile/player/identity/BaseLocalBroadcastReceiverRegistrationSupport;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-virtual {v0, p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
