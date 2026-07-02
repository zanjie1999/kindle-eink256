.class public Lcom/amazon/whispersync/dcp/framework/ExponentialBackoffWaiter;
.super Ljava/lang/Object;
.source "ExponentialBackoffWaiter.java"


# instance fields
.field private mBackoffHelper:Lcom/amazon/whispersync/AmazonDevice/Common/ExponentialBackoffHelper;

.field private mFirstRetryIntervalMs:I

.field private mMaxRetryIntervalMs:I

.field private mSleeper:Lcom/amazon/whispersync/dcp/framework/SynchronizationFactory$Sleeper;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/dcp/framework/SynchronizationFactory;Ljava/lang/String;JJ)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p1, p2}, Lcom/amazon/whispersync/dcp/framework/SynchronizationFactory;->newSleeper(Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SynchronizationFactory$Sleeper;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/ExponentialBackoffWaiter;->mSleeper:Lcom/amazon/whispersync/dcp/framework/SynchronizationFactory$Sleeper;

    long-to-int p1, p3

    .line 24
    iput p1, p0, Lcom/amazon/whispersync/dcp/framework/ExponentialBackoffWaiter;->mFirstRetryIntervalMs:I

    long-to-int p2, p5

    .line 25
    iput p2, p0, Lcom/amazon/whispersync/dcp/framework/ExponentialBackoffWaiter;->mMaxRetryIntervalMs:I

    .line 26
    new-instance p3, Lcom/amazon/whispersync/AmazonDevice/Common/ExponentialBackoffHelper;

    invoke-direct {p3, p1, p2}, Lcom/amazon/whispersync/AmazonDevice/Common/ExponentialBackoffHelper;-><init>(II)V

    iput-object p3, p0, Lcom/amazon/whispersync/dcp/framework/ExponentialBackoffWaiter;->mBackoffHelper:Lcom/amazon/whispersync/AmazonDevice/Common/ExponentialBackoffHelper;

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 3

    .line 36
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Common/ExponentialBackoffHelper;

    iget v1, p0, Lcom/amazon/whispersync/dcp/framework/ExponentialBackoffWaiter;->mFirstRetryIntervalMs:I

    iget v2, p0, Lcom/amazon/whispersync/dcp/framework/ExponentialBackoffWaiter;->mMaxRetryIntervalMs:I

    invoke-direct {v0, v1, v2}, Lcom/amazon/whispersync/AmazonDevice/Common/ExponentialBackoffHelper;-><init>(II)V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ExponentialBackoffWaiter;->mBackoffHelper:Lcom/amazon/whispersync/AmazonDevice/Common/ExponentialBackoffHelper;

    return-void
.end method

.method public waitForNextInterval()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ExponentialBackoffWaiter;->mSleeper:Lcom/amazon/whispersync/dcp/framework/SynchronizationFactory$Sleeper;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/ExponentialBackoffWaiter;->mBackoffHelper:Lcom/amazon/whispersync/AmazonDevice/Common/ExponentialBackoffHelper;

    invoke-virtual {v1}, Lcom/amazon/whispersync/AmazonDevice/Common/ExponentialBackoffHelper;->nextRetryInterval()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/whispersync/dcp/framework/SynchronizationFactory$Sleeper;->sleep(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method
