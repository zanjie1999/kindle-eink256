.class public final Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithConnectivityEnforcement$Factory;
.super Ljava/lang/Object;
.source "ConnectionEstablisherWithConnectivityEnforcement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithConnectivityEnforcement;
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

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(JILcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;)Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithConnectivityEnforcement;
    .locals 7

    .line 36
    new-instance v6, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithConnectivityEnforcement;

    const/4 v5, 0x0

    move-object v0, v6

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithConnectivityEnforcement;-><init>(JILcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithConnectivityEnforcement$1;)V

    .line 39
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithConnectivityEnforcement$Factory;->mInjector:Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;

    invoke-virtual {p1, v6}, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->injectMembers(Ljava/lang/Object;)V

    return-object v6
.end method
