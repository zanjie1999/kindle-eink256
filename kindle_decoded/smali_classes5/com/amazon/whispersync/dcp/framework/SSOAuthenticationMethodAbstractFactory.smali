.class public Lcom/amazon/whispersync/dcp/framework/SSOAuthenticationMethodAbstractFactory;
.super Ljava/lang/Object;
.source "SSOAuthenticationMethodAbstractFactory.java"


# instance fields
.field private mContext:Landroid/content/Context;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation

    .annotation runtime Lcom/amazon/whispersync/javax/inject/Named;
        value = "SystemContext"
    .end annotation
.end field

.field private mInjector:Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;
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
.method public create(Landroid/accounts/Account;)Lcom/amazon/whispersync/dcp/sso/AuthenticationMethodFactory;
    .locals 2

    .line 23
    new-instance v0, Lcom/amazon/whispersync/dcp/sso/AuthenticationMethodFactory;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/SSOAuthenticationMethodAbstractFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/amazon/whispersync/dcp/sso/AuthenticationMethodFactory;-><init>(Landroid/content/Context;Landroid/accounts/Account;)V

    .line 24
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/SSOAuthenticationMethodAbstractFactory;->mInjector:Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->injectMembers(Ljava/lang/Object;)V

    return-object v0
.end method
