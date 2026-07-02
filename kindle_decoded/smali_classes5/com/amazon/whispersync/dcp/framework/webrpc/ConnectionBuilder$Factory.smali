.class public Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder$Factory;
.super Ljava/lang/Object;
.source "ConnectionBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;
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

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;Ljava/net/URL;Ljava/lang/String;[B)Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;
    .locals 1

    .line 38
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;-><init>(Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;Ljava/net/URL;Ljava/lang/String;[B)V

    .line 39
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder$Factory;->mInjector:Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->injectMembers(Ljava/lang/Object;)V

    return-object v0
.end method
