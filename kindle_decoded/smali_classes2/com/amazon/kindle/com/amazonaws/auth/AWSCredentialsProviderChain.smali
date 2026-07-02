.class public Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProviderChain;
.super Ljava/lang/Object;
.source "AWSCredentialsProviderChain.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;


# static fields
.field private static final log:Lcom/amazon/kindle/com/amazonaws/logging/Log;


# instance fields
.field private credentialsProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;",
            ">;"
        }
    .end annotation
.end field

.field private lastUsedProvider:Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;

.field private reuseLastProvider:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProviderChain;

    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/logging/LogFactory;->getLog(Ljava/lang/Class;)Lcom/amazon/kindle/com/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProviderChain;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    return-void
.end method

.method public varargs constructor <init>([Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;)V
    .locals 4

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProviderChain;->credentialsProviders:Ljava/util/List;

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProviderChain;->reuseLastProvider:Z

    if-eqz p1, :cond_1

    .line 60
    array-length v0, p1

    if-eqz v0, :cond_1

    .line 63
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 64
    iget-object v3, p0, Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProviderChain;->credentialsProviders:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 61
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No credential providers specified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getCredentials()Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;
    .locals 6

    .line 95
    iget-boolean v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProviderChain;->reuseLastProvider:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProviderChain;->lastUsedProvider:Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;

    if-eqz v0, :cond_0

    .line 96
    invoke-interface {v0}, Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;->getCredentials()Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;

    move-result-object v0

    return-object v0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProviderChain;->credentialsProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;

    .line 101
    :try_start_0
    invoke-interface {v1}, Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;->getCredentials()Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;

    move-result-object v2

    .line 103
    invoke-interface {v2}, Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;->getAWSAccessKeyId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 104
    invoke-interface {v2}, Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;->getAWSSecretKey()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 105
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProviderChain;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loading credentials from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->debug(Ljava/lang/Object;)V

    .line 107
    iput-object v1, p0, Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProviderChain;->lastUsedProvider:Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    .line 112
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProviderChain;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to load credentials from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-interface {v3, v1}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_0

    .line 117
    :cond_2
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;

    const-string v1, "Unable to load AWS credentials from any provider in the chain"

    invoke-direct {v0, v1}, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
