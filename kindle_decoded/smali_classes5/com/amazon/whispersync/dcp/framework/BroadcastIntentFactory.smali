.class public final Lcom/amazon/whispersync/dcp/framework/BroadcastIntentFactory;
.super Ljava/lang/Object;
.source "BroadcastIntentFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createIntent()Landroid/content/Intent;
    .locals 2

    .line 27
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/16 v1, 0x20

    .line 28
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public static createIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 15
    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/BroadcastIntentFactory;->createIntent()Landroid/content/Intent;

    move-result-object v0

    .line 16
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method
