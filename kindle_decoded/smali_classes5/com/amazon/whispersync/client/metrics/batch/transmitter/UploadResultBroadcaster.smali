.class public Lcom/amazon/whispersync/client/metrics/batch/transmitter/UploadResultBroadcaster;
.super Ljava/lang/Object;
.source "UploadResultBroadcaster.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/UploadResultBroadcaster;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public broadcastResult(II)V
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/UploadResultBroadcaster;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.amazon.intent.action.METRICS_UPLOAD_RESULT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "NUM_BATCHES_SENT"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p2

    const-string v1, "RESULT_CODE"

    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
