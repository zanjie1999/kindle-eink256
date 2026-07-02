.class public Lcom/amazon/whispersync/dcp/framework/iuc/AuthenticatedConnectionFactory$Factory;
.super Ljava/lang/Object;
.source "AuthenticatedConnectionFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/framework/iuc/AuthenticatedConnectionFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field private mDcpAccountManager:Lcom/amazon/whispersync/dcp/framework/auth/DcpAccountManager;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method create(Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthMethod;)Lcom/amazon/whispersync/dcp/framework/iuc/AuthenticatedConnectionFactory;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/AuthenticatedConnectionFactory$Factory;->mDcpAccountManager:Lcom/amazon/whispersync/dcp/framework/auth/DcpAccountManager;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/dcp/framework/auth/DcpAccountManager;->getConnectionFactory(Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthMethod;)Lcom/amazon/whispersync/dcp/framework/iuc/AuthenticatedConnectionFactory;

    move-result-object p1

    return-object p1
.end method
