.class public Lcom/amazon/whispersync/dcp/framework/iuc/SSOConnectionFactory$Factory;
.super Ljava/lang/Object;
.source "SSOConnectionFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/framework/iuc/SSOConnectionFactory;
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

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthMethod;Lcom/amazon/whispersync/dcp/framework/auth/DcpAccountManager;)Lcom/amazon/whispersync/dcp/framework/iuc/SSOConnectionFactory;
    .locals 2

    .line 41
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/iuc/SSOConnectionFactory$1;->$SwitchMap$com$amazon$dcp$framework$auth$DcpAuthType:[I

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthMethod;->getDcpAuthType()Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 47
    sget-object p1, Lcom/amazon/whispersync/dcp/sso/AuthenticationType;->OAuth:Lcom/amazon/whispersync/dcp/sso/AuthenticationType;

    goto :goto_0

    .line 50
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected Auth Type for SSO : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthMethod;->getDcpAuthType()Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthType;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 44
    :cond_1
    sget-object p1, Lcom/amazon/whispersync/dcp/sso/AuthenticationType;->ADPAuthenticator:Lcom/amazon/whispersync/dcp/sso/AuthenticationType;

    .line 53
    :goto_0
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/iuc/SSOConnectionFactory;

    invoke-direct {v0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/iuc/SSOConnectionFactory;-><init>(Lcom/amazon/whispersync/dcp/sso/AuthenticationType;Lcom/amazon/whispersync/dcp/framework/auth/DcpAccountManager;)V

    .line 55
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/SSOConnectionFactory$Factory;->mInjector:Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->injectMembers(Ljava/lang/Object;)V

    return-object v0
.end method
