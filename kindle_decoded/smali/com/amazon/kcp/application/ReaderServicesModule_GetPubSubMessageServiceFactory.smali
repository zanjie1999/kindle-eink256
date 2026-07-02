.class public final Lcom/amazon/kcp/application/ReaderServicesModule_GetPubSubMessageServiceFactory;
.super Ljava/lang/Object;
.source "ReaderServicesModule_GetPubSubMessageServiceFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/kindle/krx/events/IPubSubEventsManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/amazon/kcp/application/ReaderServicesModule;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/ReaderServicesModule;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/amazon/kcp/application/ReaderServicesModule_GetPubSubMessageServiceFactory;->module:Lcom/amazon/kcp/application/ReaderServicesModule;

    return-void
.end method

.method public static create(Lcom/amazon/kcp/application/ReaderServicesModule;)Lcom/amazon/kcp/application/ReaderServicesModule_GetPubSubMessageServiceFactory;
    .locals 1

    .line 27
    new-instance v0, Lcom/amazon/kcp/application/ReaderServicesModule_GetPubSubMessageServiceFactory;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/ReaderServicesModule_GetPubSubMessageServiceFactory;-><init>(Lcom/amazon/kcp/application/ReaderServicesModule;)V

    return-object v0
.end method

.method public static provideInstance(Lcom/amazon/kcp/application/ReaderServicesModule;)Lcom/amazon/kindle/krx/events/IPubSubEventsManager;
    .locals 0

    .line 22
    invoke-static {p0}, Lcom/amazon/kcp/application/ReaderServicesModule_GetPubSubMessageServiceFactory;->proxyGetPubSubMessageService(Lcom/amazon/kcp/application/ReaderServicesModule;)Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p0

    return-object p0
.end method

.method public static proxyGetPubSubMessageService(Lcom/amazon/kcp/application/ReaderServicesModule;)Lcom/amazon/kindle/krx/events/IPubSubEventsManager;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/amazon/kcp/application/ReaderServicesModule;->getPubSubMessageService()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 31
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/amazon/kcp/application/ReaderServicesModule_GetPubSubMessageServiceFactory;->module:Lcom/amazon/kcp/application/ReaderServicesModule;

    invoke-static {v0}, Lcom/amazon/kcp/application/ReaderServicesModule_GetPubSubMessageServiceFactory;->provideInstance(Lcom/amazon/kcp/application/ReaderServicesModule;)Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/amazon/kcp/application/ReaderServicesModule_GetPubSubMessageServiceFactory;->get()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    return-object v0
.end method
