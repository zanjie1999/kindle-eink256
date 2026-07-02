.class Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry$1;
.super Ljava/lang/Object;
.source "ConnectionEstablisherWithRetry.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/framework/iuc/BodyReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;->doEstablish(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionFactory;)Ljava/net/URLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry$1;->this$0:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBodyAvailable([B)Ljava/net/URLConnection;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry$1;->this$0:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;

    invoke-static {v0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;->access$200(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;[B)Ljava/net/URLConnection;

    move-result-object p1

    return-object p1
.end method
