.class public final Lcom/amazon/dcp/messaging/MessagingHelper;
.super Ljava/lang/Object;
.source "MessagingHelper.java"


# static fields
.field private static final QUEUE_MESSAGE_TIMEOUT:J = 0x1eL

.field private static final TAG:Ljava/lang/String; = "com.amazon.dcp.messaging.MessagingHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static respondTo(Landroid/content/Context;Lcom/amazon/dcp/messaging/Response;)V
    .locals 1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const-string v0, "com.amazon.dcp.messaging.response.callback"

    .line 183
    invoke-static {v0}, Lcom/amazon/dcp/framework/BroadcastIntentFactory;->createIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 186
    invoke-virtual {p1, v0}, Lcom/amazon/dcp/messaging/Response;->seralizeToIntent(Landroid/content/Intent;)V

    const-string p1, "com.amazon.dcp.messaging.permission.HANDLE_DEVICE_MESSAGE"

    .line 188
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    .line 180
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Response cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 175
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Context cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
