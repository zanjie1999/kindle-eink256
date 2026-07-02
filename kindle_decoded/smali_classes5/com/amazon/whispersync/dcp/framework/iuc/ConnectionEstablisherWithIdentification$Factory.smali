.class public final Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithIdentification$Factory;
.super Ljava/lang/Object;
.source "ConnectionEstablisherWithIdentification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithIdentification;
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

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithIdentification;
    .locals 2

    .line 25
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithIdentification;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithIdentification;-><init>(Ljava/lang/String;Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithIdentification$1;)V

    .line 28
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithIdentification$Factory;->mInjector:Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->injectMembers(Ljava/lang/Object;)V

    return-object v0
.end method
