.class public abstract Lcom/audible/mobile/framework/BaseGlobalBroadcastReceiverRegistrationSupport;
.super Landroid/content/BroadcastReceiver;
.source "BaseGlobalBroadcastReceiverRegistrationSupport.java"

# interfaces
.implements Lcom/audible/mobile/framework/Registerable;


# instance fields
.field private final context:Landroid/content/Context;

.field private final intentFilterActions:[Ljava/lang/String;


# direct methods
.method protected varargs constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/mobile/framework/BaseGlobalBroadcastReceiverRegistrationSupport;->context:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/audible/mobile/framework/BaseGlobalBroadcastReceiverRegistrationSupport;->intentFilterActions:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final register()V
    .locals 5

    .line 38
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 39
    iget-object v1, p0, Lcom/audible/mobile/framework/BaseGlobalBroadcastReceiverRegistrationSupport;->intentFilterActions:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 40
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 42
    :cond_0
    iget-object v1, p0, Lcom/audible/mobile/framework/BaseGlobalBroadcastReceiverRegistrationSupport;->context:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final unregister()V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/audible/mobile/framework/BaseGlobalBroadcastReceiverRegistrationSupport;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
