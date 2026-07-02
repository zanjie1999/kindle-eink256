.class final Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$GingerbreadBuilder;
.super Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$BaseBuilder;
.source "NotificationWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/framework/NotificationWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GingerbreadBuilder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 293
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$BaseBuilder;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public setFullScreenIntent(Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;Z)Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$Builder;
    .locals 0

    .line 299
    iget-object p2, p0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$BaseBuilder;->mInner:Lcom/amazon/whispersync/dcp/framework/NotificationWrapper;

    invoke-virtual {p2, p1}, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper;->setFullScreenIntent(Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;)V

    return-object p0
.end method
