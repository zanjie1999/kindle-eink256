.class Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithExternalConnectionFactory$1;
.super Ljava/lang/Object;
.source "ConnectionEstablisherWithExternalConnectionFactory.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/framework/iuc/BodyReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithExternalConnectionFactory;->establish(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionFactory;)Ljava/net/URLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithExternalConnectionFactory;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithExternalConnectionFactory;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithExternalConnectionFactory$1;->this$0:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithExternalConnectionFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBodyAvailable([B)Ljava/net/URLConnection;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithExternalConnectionFactory$1;->this$0:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithExternalConnectionFactory;

    invoke-static {v0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithExternalConnectionFactory;->access$100(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithExternalConnectionFactory;[B)Ljava/net/URLConnection;

    move-result-object p1

    return-object p1
.end method
