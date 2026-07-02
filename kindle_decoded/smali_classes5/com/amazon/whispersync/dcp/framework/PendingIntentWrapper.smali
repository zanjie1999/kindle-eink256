.class public Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;
.super Ljava/lang/Object;
.source "PendingIntentWrapper.java"


# instance fields
.field private final mInner:Landroid/app/PendingIntent;


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;-><init>(Landroid/app/PendingIntent;)V

    return-void
.end method

.method constructor <init>(Landroid/app/PendingIntent;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;->mInner:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;->mInner:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;->mInner:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->describeContents()I

    move-result v0

    return v0
.end method

.method public getInner()Landroid/app/PendingIntent;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;->mInner:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getIntentSender()Landroid/content/IntentSender;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;->mInner:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v0

    return-object v0
.end method

.method public getTargetPackage()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;->mInner:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public send()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;->mInner:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V

    return-void
.end method

.method public send(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;->mInner:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1}, Landroid/app/PendingIntent;->send(I)V

    return-void
.end method

.method public send(ILandroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;->mInner:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/PendingIntent;->send(ILandroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    return-void
.end method

.method public send(Landroid/content/Context;ILandroid/content/Intent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;->mInner:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V

    return-void
.end method

.method public send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;->mInner:Landroid/app/PendingIntent;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;->mInner:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, p2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
