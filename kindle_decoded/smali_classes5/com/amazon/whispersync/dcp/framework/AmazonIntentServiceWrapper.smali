.class public abstract Lcom/amazon/whispersync/dcp/framework/AmazonIntentServiceWrapper;
.super Lcom/amazon/whispersync/dcp/framework/IntentServiceWrapper;
.source "AmazonIntentServiceWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    const-class v0, Lcom/amazon/whispersync/dcp/framework/AmazonIntentServiceWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/AmazonIntentServiceWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/IntentServiceWrapper;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3

    .line 19
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/AmazonIntentServiceWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/IntentServiceWrapper;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/dcp/framework/AmazonIntentServiceWrapper;->protectedOnHandleIntent(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 32
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$Impl;->stopSelf()V

    .line 33
    throw p1

    :catch_1
    move-exception p1

    .line 27
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$Impl;->stopSelf()V

    .line 28
    throw p1
.end method

.method protected abstract protectedOnHandleIntent(Landroid/content/Intent;)V
.end method
