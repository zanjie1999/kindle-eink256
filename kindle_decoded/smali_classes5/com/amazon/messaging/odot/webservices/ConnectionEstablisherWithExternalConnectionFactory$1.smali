.class Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithExternalConnectionFactory$1;
.super Ljava/lang/Object;
.source "ConnectionEstablisherWithExternalConnectionFactory.java"

# interfaces
.implements Lcom/amazon/messaging/odot/webservices/BodyReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithExternalConnectionFactory;->establish(Lcom/amazon/messaging/odot/webservices/ConnectionFactory;)Ljava/net/URLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithExternalConnectionFactory;


# direct methods
.method constructor <init>(Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithExternalConnectionFactory;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithExternalConnectionFactory$1;->this$0:Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithExternalConnectionFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBodyAvailable([B)Ljava/net/URLConnection;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithExternalConnectionFactory$1;->this$0:Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithExternalConnectionFactory;

    invoke-static {v0, p1}, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithExternalConnectionFactory;->access$000(Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithExternalConnectionFactory;[B)Ljava/net/URLConnection;

    move-result-object p1

    return-object p1
.end method
