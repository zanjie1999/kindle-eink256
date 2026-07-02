.class Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry$2;
.super Ljava/lang/Object;
.source "ConnectionEstablisherWithRetry.java"

# interfaces
.implements Lcom/amazon/messaging/odot/webservices/ConnectionFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->establishConnectionWithTimeout(JZ)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;

.field final synthetic val$connectionTimeoutNs:J


# direct methods
.method constructor <init>(Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;J)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry$2;->this$0:Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;

    iput-wide p2, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry$2;->val$connectionTimeoutNs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createConnection()Ljava/net/URLConnection;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry$2;->this$0:Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;

    invoke-static {v0}, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->access$100(Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;)Lcom/amazon/messaging/odot/webservices/ConnectionFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/messaging/odot/webservices/ConnectionFactory;->createConnection()Ljava/net/URLConnection;

    move-result-object v0

    return-object v0
.end method

.method public getTargetURL()Ljava/net/URL;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry$2;->this$0:Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;

    invoke-static {v0}, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->access$100(Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;)Lcom/amazon/messaging/odot/webservices/ConnectionFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/messaging/odot/webservices/ConnectionFactory;->getTargetURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public populateConnectionParameters(Ljava/net/URLConnection;)V
    .locals 4

    .line 129
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry$2;->this$0:Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;

    invoke-static {v0}, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->access$100(Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;)Lcom/amazon/messaging/odot/webservices/ConnectionFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/messaging/odot/webservices/ConnectionFactory;->populateConnectionParameters(Ljava/net/URLConnection;)V

    .line 130
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry$2;->val$connectionTimeoutNs:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    long-to-int v1, v0

    invoke-virtual {p1, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    return-void
.end method
