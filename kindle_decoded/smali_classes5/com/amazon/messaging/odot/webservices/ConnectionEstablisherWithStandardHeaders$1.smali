.class Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithStandardHeaders$1;
.super Ljava/lang/Object;
.source "ConnectionEstablisherWithStandardHeaders.java"

# interfaces
.implements Lcom/amazon/messaging/odot/webservices/ConnectionFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithStandardHeaders;->doEstablish(Lcom/amazon/messaging/odot/webservices/ConnectionFactory;)Ljava/net/URLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithStandardHeaders;

.field final synthetic val$factory:Lcom/amazon/messaging/odot/webservices/ConnectionFactory;


# direct methods
.method constructor <init>(Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithStandardHeaders;Lcom/amazon/messaging/odot/webservices/ConnectionFactory;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithStandardHeaders$1;->this$0:Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithStandardHeaders;

    iput-object p2, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithStandardHeaders$1;->val$factory:Lcom/amazon/messaging/odot/webservices/ConnectionFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createConnection()Ljava/net/URLConnection;
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithStandardHeaders$1;->val$factory:Lcom/amazon/messaging/odot/webservices/ConnectionFactory;

    invoke-interface {v0}, Lcom/amazon/messaging/odot/webservices/ConnectionFactory;->createConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithStandardHeaders$1;->this$0:Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithStandardHeaders;

    invoke-static {v1, v0}, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithStandardHeaders;->access$000(Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithStandardHeaders;Ljava/net/URLConnection;)V

    return-object v0
.end method

.method public getTargetURL()Ljava/net/URL;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithStandardHeaders$1;->val$factory:Lcom/amazon/messaging/odot/webservices/ConnectionFactory;

    invoke-interface {v0}, Lcom/amazon/messaging/odot/webservices/ConnectionFactory;->getTargetURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public populateConnectionParameters(Ljava/net/URLConnection;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithStandardHeaders$1;->val$factory:Lcom/amazon/messaging/odot/webservices/ConnectionFactory;

    invoke-interface {v0, p1}, Lcom/amazon/messaging/odot/webservices/ConnectionFactory;->populateConnectionParameters(Ljava/net/URLConnection;)V

    .line 54
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithStandardHeaders$1;->this$0:Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithStandardHeaders;

    invoke-static {v0, p1}, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithStandardHeaders;->access$000(Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithStandardHeaders;Ljava/net/URLConnection;)V

    return-void
.end method
