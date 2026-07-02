.class Lcom/amazon/whispersync/dcp/framework/IntentServiceWrapper$1;
.super Landroid/os/Handler;
.source "IntentServiceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/IntentServiceWrapper;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/dcp/framework/IntentServiceWrapper;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/IntentServiceWrapper;Landroid/os/Looper;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/IntentServiceWrapper$1;->this$0:Lcom/amazon/whispersync/dcp/framework/IntentServiceWrapper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/IntentServiceWrapper$1;->this$0:Lcom/amazon/whispersync/dcp/framework/IntentServiceWrapper;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/dcp/framework/IntentServiceWrapper;->onHandleMessage(Landroid/os/Message;)V

    return-void
.end method
