.class public Lcom/amazon/whispersync/dcp/framework/iuc/MapR5ConnectionFactory$Factory;
.super Ljava/lang/Object;
.source "MapR5ConnectionFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/framework/iuc/MapR5ConnectionFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field private mInjector:Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthMethod;Lcom/amazon/whispersync/dcp/framework/auth/DcpAccountManager;)Lcom/amazon/whispersync/dcp/framework/iuc/MapR5ConnectionFactory;
    .locals 3

    .line 37
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/iuc/MapR5ConnectionFactory;

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthMethod;->getAccountId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthMethod;->getDcpAuthType()Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthType;

    move-result-object p1

    sget-object v2, Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthType;->ADPAuthenticator:Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthType;

    if-ne p1, v2, :cond_0

    sget-object p1, Lcom/amazon/identity/auth/device/api/AuthenticationType;->ADPAuthenticator:Lcom/amazon/identity/auth/device/api/AuthenticationType;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/amazon/identity/auth/device/api/AuthenticationType;->OAuth:Lcom/amazon/identity/auth/device/api/AuthenticationType;

    :goto_0
    invoke-direct {v0, v1, p2, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/MapR5ConnectionFactory;-><init>(Ljava/lang/String;Lcom/amazon/whispersync/dcp/framework/auth/DcpAccountManager;Lcom/amazon/identity/auth/device/api/AuthenticationType;)V

    .line 41
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/MapR5ConnectionFactory$Factory;->mInjector:Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->injectMembers(Ljava/lang/Object;)V

    return-object v0
.end method
