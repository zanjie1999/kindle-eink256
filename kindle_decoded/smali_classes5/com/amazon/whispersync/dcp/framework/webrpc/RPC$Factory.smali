.class public Lcom/amazon/whispersync/dcp/framework/webrpc/RPC$Factory;
.super Ljava/lang/Object;
.source "RPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/framework/webrpc/RPC;
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

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/webrpc/RPC;
    .locals 1

    .line 31
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/webrpc/RPC;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/dcp/framework/webrpc/RPC;-><init>(Ljava/lang/String;)V

    .line 32
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/RPC$Factory;->mInjector:Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->injectMembers(Ljava/lang/Object;)V

    return-object v0
.end method
