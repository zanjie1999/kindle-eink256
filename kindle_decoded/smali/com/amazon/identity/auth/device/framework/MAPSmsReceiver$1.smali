.class Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic kv:Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;

.field final synthetic val$code:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;Ljava/lang/String;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver$1;->kv:Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver$1;->val$code:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 283
    iget-object v0, p0, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver$1;->kv:Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;

    monitor-enter v0

    :try_start_0
    const-string v1, "MAPSmsReceiver"

    .line 287
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "check if we can submit code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver$1;->kv:Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;

    invoke-static {v3}, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;->b(Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;)Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver$a;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v1, p0, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver$1;->kv:Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;->b(Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;)Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver$a;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "MAPSmsReceiver"

    const-string v2, "Start submit code"

    .line 290
    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v1, p0, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver$1;->kv:Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;->c(Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;)Z

    .line 294
    iget-object v1, p0, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver$1;->kv:Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;->d(Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;)Landroid/webkit/WebView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "javascript:submitVerificationCode(\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver$1;->val$code:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 296
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
