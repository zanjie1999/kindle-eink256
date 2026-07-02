.class public Lcom/amazon/client/metrics/thirdparty/batch/transmitter/UploadResultBroadcaster;
.super Ljava/lang/Object;
.source "UploadResultBroadcaster.java"


# static fields
.field private static final DEFAULT_QUEUE_NAME:Ljava/lang/String; = "Unspecified"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/UploadResultBroadcaster;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public broadcastResult(IILjava/lang/String;)V
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/UploadResultBroadcaster;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.amazon.intent.action.METRICS_UPLOAD_RESULT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "NUM_BATCHES_SENT"

    .line 49
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p2

    const-string v1, "RESULT_CODE"

    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "QUEUE_NAME"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 48
    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
