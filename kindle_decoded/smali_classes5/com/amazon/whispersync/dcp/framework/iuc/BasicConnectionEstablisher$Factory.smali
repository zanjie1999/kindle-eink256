.class public final Lcom/amazon/whispersync/dcp/framework/iuc/BasicConnectionEstablisher$Factory;
.super Ljava/lang/Object;
.source "BasicConnectionEstablisher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/framework/iuc/BasicConnectionEstablisher;
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

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;)Lcom/amazon/whispersync/dcp/framework/iuc/BasicConnectionEstablisher;
    .locals 2

    .line 28
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/iuc/BasicConnectionEstablisher;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amazon/whispersync/dcp/framework/iuc/BasicConnectionEstablisher;-><init>(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;Lcom/amazon/whispersync/dcp/framework/iuc/BasicConnectionEstablisher$1;)V

    .line 31
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/BasicConnectionEstablisher$Factory;->mInjector:Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->injectMembers(Ljava/lang/Object;)V

    return-object v0
.end method
