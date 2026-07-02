.class final Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1;
.super Ljava/lang/Object;
.source "DCPComponentInformationProvider.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider;->buildFuture(Landroid/content/Context;Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentType;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentInformation;",
        ">;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/amazon/whispersync/dcp/framework/AsyncToSyncAdapter;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mResult:Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentInformation;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$type:Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentType;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentType;Landroid/content/Context;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1;->val$type:Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentType;

    iput-object p2, p0, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance p1, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1$1;

    invoke-direct {p1, p0}, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1$1;-><init>(Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1;)V

    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1;->mConnection:Landroid/content/ServiceConnection;

    .line 145
    new-instance p1, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1$2;

    invoke-direct {p1, p0}, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1$2;-><init>(Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1;)V

    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1;->mAdapter:Lcom/amazon/whispersync/dcp/framework/AsyncToSyncAdapter;

    return-void
.end method

.method static synthetic access$002(Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1;Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentInformation;)Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentInformation;
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1;->mResult:Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentInformation;

    return-object p1
.end method

.method static synthetic access$200(Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1;)Lcom/amazon/whispersync/dcp/framework/AsyncToSyncAdapter;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1;->mAdapter:Lcom/amazon/whispersync/dcp/framework/AsyncToSyncAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1;)Landroid/content/ServiceConnection;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1;->mConnection:Landroid/content/ServiceConnection;

    return-object p0
.end method


# virtual methods
.method public call()Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentInformation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1;->mAdapter:Lcom/amazon/whispersync/dcp/framework/AsyncToSyncAdapter;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/AsyncToSyncAdapter;->run()V

    .line 174
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1;->mResult:Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentInformation;

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 94
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1;->call()Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentInformation;

    move-result-object v0

    return-object v0
.end method
