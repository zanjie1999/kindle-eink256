.class Lcom/amazon/kcp/application/StrictModeWrapper$3;
.super Ljava/lang/Object;
.source "StrictModeWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/application/StrictModeWrapper;->setUiThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/application/StrictModeWrapper;

.field final synthetic val$policy:Landroid/os/StrictMode$ThreadPolicy;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/StrictModeWrapper;Landroid/os/StrictMode$ThreadPolicy;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/amazon/kcp/application/StrictModeWrapper$3;->this$0:Lcom/amazon/kcp/application/StrictModeWrapper;

    iput-object p2, p0, Lcom/amazon/kcp/application/StrictModeWrapper$3;->val$policy:Landroid/os/StrictMode$ThreadPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/amazon/kcp/application/StrictModeWrapper$3;->val$policy:Landroid/os/StrictMode$ThreadPolicy;

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 353
    iget-object v0, p0, Lcom/amazon/kcp/application/StrictModeWrapper$3;->this$0:Lcom/amazon/kcp/application/StrictModeWrapper;

    invoke-static {v0}, Lcom/amazon/kcp/application/StrictModeWrapper;->access$100(Lcom/amazon/kcp/application/StrictModeWrapper;)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StrictMode thread policy set "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method
