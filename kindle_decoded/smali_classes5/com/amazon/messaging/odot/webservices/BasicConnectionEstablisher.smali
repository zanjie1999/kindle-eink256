.class public Lcom/amazon/messaging/odot/webservices/BasicConnectionEstablisher;
.super Ljava/lang/Object;
.source "BasicConnectionEstablisher.java"

# interfaces
.implements Lcom/amazon/messaging/odot/webservices/ConnectionEstablisher;


# instance fields
.field private final mLogger:Lcom/amazon/messaging/odot/webservices/ConnectionLogger;


# direct methods
.method public constructor <init>(Lcom/amazon/messaging/odot/webservices/ConnectionLogger;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/BasicConnectionEstablisher;->mLogger:Lcom/amazon/messaging/odot/webservices/ConnectionLogger;

    return-void
.end method


# virtual methods
.method public establish(Lcom/amazon/messaging/odot/webservices/ConnectionFactory;)Ljava/net/URLConnection;
    .locals 2

    .line 17
    invoke-interface {p1}, Lcom/amazon/messaging/odot/webservices/ConnectionFactory;->createConnection()Ljava/net/URLConnection;

    move-result-object p1

    .line 18
    new-instance v0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;

    invoke-direct {v0, p1}, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;-><init>(Ljava/net/URLConnection;)V

    .line 21
    instance-of p1, p1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    new-instance p1, Lcom/amazon/messaging/odot/webservices/HttpsToHttpAdapter;

    invoke-direct {p1, v0}, Lcom/amazon/messaging/odot/webservices/HttpsToHttpAdapter;-><init>(Ljava/net/URLConnection;)V

    move-object v0, p1

    .line 28
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 33
    iget-object v1, p0, Lcom/amazon/messaging/odot/webservices/BasicConnectionEstablisher;->mLogger:Lcom/amazon/messaging/odot/webservices/ConnectionLogger;

    invoke-static {v0, p1, v1}, Lcom/amazon/messaging/odot/webservices/FailedConnection;->create(Ljava/net/URLConnection;Ljava/io/IOException;Lcom/amazon/messaging/odot/webservices/ConnectionLogger;)Lcom/amazon/messaging/odot/webservices/FailedConnection;

    move-result-object p1

    return-object p1
.end method
