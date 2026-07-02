.class public final Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry$Factory;
.super Ljava/lang/Object;
.source "ConnectionEstablisherWithRetry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private mInjector:Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(ILcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;)Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;
    .locals 4

    .line 39
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;

    new-instance v1, Lcom/amazon/whispersync/AmazonDevice/Common/ExponentialBackoffHelper;

    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;->access$000()I

    move-result v2

    const/16 v3, 0x1f4

    invoke-direct {v1, v3, v2}, Lcom/amazon/whispersync/AmazonDevice/Common/ExponentialBackoffHelper;-><init>(II)V

    const/4 v2, 0x0

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;-><init>(ILcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;Lcom/amazon/whispersync/AmazonDevice/Common/ExponentialBackoffHelper;Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry$1;)V

    .line 46
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry$Factory;->mInjector:Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->injectMembers(Ljava/lang/Object;)V

    return-object v0
.end method
