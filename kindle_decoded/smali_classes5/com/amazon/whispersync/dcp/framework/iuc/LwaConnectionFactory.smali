.class public final Lcom/amazon/whispersync/dcp/framework/iuc/LwaConnectionFactory;
.super Lcom/amazon/whispersync/dcp/framework/iuc/AuthenticatedConnectionFactory;
.source "LwaConnectionFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/framework/iuc/LwaConnectionFactory$Factory;
    }
.end annotation


# instance fields
.field private final mAccountId:Ljava/lang/String;

.field private final mDcpAccountManager:Lcom/amazon/whispersync/dcp/framework/auth/DcpAccountManager;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/amazon/whispersync/dcp/framework/auth/DcpAccountManager;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/AuthenticatedConnectionFactory;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LwaConnectionFactory;->mAccountId:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LwaConnectionFactory;->mDcpAccountManager:Lcom/amazon/whispersync/dcp/framework/auth/DcpAccountManager;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/amazon/whispersync/dcp/framework/auth/DcpAccountManager;Lcom/amazon/whispersync/dcp/framework/iuc/LwaConnectionFactory$1;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/iuc/LwaConnectionFactory;-><init>(Ljava/lang/String;Lcom/amazon/whispersync/dcp/framework/auth/DcpAccountManager;)V

    return-void
.end method


# virtual methods
.method public openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LwaConnectionFactory;->mDcpAccountManager:Lcom/amazon/whispersync/dcp/framework/auth/DcpAccountManager;

    invoke-interface {v0}, Lcom/amazon/whispersync/dcp/framework/auth/DcpAccountManager;->getToken()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    .line 56
    instance-of v1, p1, Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_0

    .line 58
    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bearer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Authorization"

    invoke-virtual {p1, v1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only HttpsURLConnections are supported. Got:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    .line 53
    new-instance v1, Lcom/amazon/whispersync/dcp/framework/iuc/CustomResponseFailedConnection;

    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v2

    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v2, v0}, Lcom/amazon/whispersync/dcp/framework/iuc/CustomResponseFailedConnection;-><init>(Ljava/net/URL;ILjava/lang/String;)V

    return-object v1
.end method
