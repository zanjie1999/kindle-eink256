.class public Lcom/amazon/whispersync/dcp/framework/ComponentDebugState$Factory;
.super Ljava/lang/Object;
.source "ComponentDebugState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field mInjector:Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;
    .locals 1

    .line 32
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/ComponentDebugStateProvider;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/dcp/framework/ComponentDebugState$Factory;->create(Ljava/lang/String;Landroid/net/Uri;)Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;

    move-result-object p1

    return-object p1
.end method

.method public create(Ljava/lang/String;Landroid/net/Uri;)Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;
    .locals 1

    .line 37
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;

    invoke-direct {v0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 39
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/ComponentDebugState$Factory;->mInjector:Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->injectMembers(Ljava/lang/Object;)V

    return-object v0
.end method
