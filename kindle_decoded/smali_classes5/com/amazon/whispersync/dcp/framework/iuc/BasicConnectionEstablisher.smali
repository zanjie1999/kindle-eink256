.class final Lcom/amazon/whispersync/dcp/framework/iuc/BasicConnectionEstablisher;
.super Ljava/lang/Object;
.source "BasicConnectionEstablisher.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/framework/iuc/BasicConnectionEstablisher$Factory;
    }
.end annotation


# instance fields
.field private final mLogger:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;

.field private mTracer:Lcom/amazon/whispersync/dcp/framework/iuc/Tracer;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/BasicConnectionEstablisher;->mLogger:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;Lcom/amazon/whispersync/dcp/framework/iuc/BasicConnectionEstablisher$1;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/BasicConnectionEstablisher;-><init>(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;)V

    return-void
.end method


# virtual methods
.method public establish(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionFactory;)Ljava/net/URLConnection;
    .locals 4

    .line 48
    invoke-interface {p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionFactory;->createConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 49
    new-instance v1, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;

    invoke-interface {p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionFactory;->createConnection()Ljava/net/URLConnection;

    move-result-object p1

    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/iuc/BasicConnectionEstablisher;->mTracer:Lcom/amazon/whispersync/dcp/framework/iuc/Tracer;

    iget-object v3, p0, Lcom/amazon/whispersync/dcp/framework/iuc/BasicConnectionEstablisher;->mLogger:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;

    invoke-direct {v1, p1, v2, v3}, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;-><init>(Ljava/net/URLConnection;Lcom/amazon/whispersync/dcp/framework/iuc/Tracer;Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;)V

    .line 53
    instance-of p1, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    new-instance p1, Lcom/amazon/whispersync/dcp/framework/iuc/HttpsToHttpAdapter;

    invoke-direct {p1, v1}, Lcom/amazon/whispersync/dcp/framework/iuc/HttpsToHttpAdapter;-><init>(Ljava/net/URLConnection;)V

    move-object v1, p1

    .line 64
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 71
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/BasicConnectionEstablisher;->mLogger:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;

    invoke-static {v1, p1, v0}, Lcom/amazon/whispersync/dcp/framework/iuc/FailedConnection;->create(Ljava/net/URLConnection;Ljava/io/IOException;Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;)Lcom/amazon/whispersync/dcp/framework/iuc/FailedConnection;

    move-result-object p1

    return-object p1
.end method
