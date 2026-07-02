.class public final Lcom/amazon/kcp/application/ReaderPanelControllerModule_ProvidesPanelControllerFactory;
.super Ljava/lang/Object;
.source "ReaderPanelControllerModule_ProvidesPanelControllerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/kindle/panels/IPanelController;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/amazon/kcp/application/ReaderPanelControllerModule_ProvidesPanelControllerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/amazon/kcp/application/ReaderPanelControllerModule_ProvidesPanelControllerFactory;

    invoke-direct {v0}, Lcom/amazon/kcp/application/ReaderPanelControllerModule_ProvidesPanelControllerFactory;-><init>()V

    sput-object v0, Lcom/amazon/kcp/application/ReaderPanelControllerModule_ProvidesPanelControllerFactory;->INSTANCE:Lcom/amazon/kcp/application/ReaderPanelControllerModule_ProvidesPanelControllerFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/amazon/kcp/application/ReaderPanelControllerModule_ProvidesPanelControllerFactory;
    .locals 1

    .line 23
    sget-object v0, Lcom/amazon/kcp/application/ReaderPanelControllerModule_ProvidesPanelControllerFactory;->INSTANCE:Lcom/amazon/kcp/application/ReaderPanelControllerModule_ProvidesPanelControllerFactory;

    return-object v0
.end method

.method public static provideInstance()Lcom/amazon/kindle/panels/IPanelController;
    .locals 1

    .line 19
    invoke-static {}, Lcom/amazon/kcp/application/ReaderPanelControllerModule_ProvidesPanelControllerFactory;->proxyProvidesPanelController()Lcom/amazon/kindle/panels/IPanelController;

    move-result-object v0

    return-object v0
.end method

.method public static proxyProvidesPanelController()Lcom/amazon/kindle/panels/IPanelController;
    .locals 2

    .line 28
    invoke-static {}, Lcom/amazon/kcp/application/ReaderPanelControllerModule;->providesPanelController()Lcom/amazon/kindle/panels/IPanelController;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 27
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/kindle/panels/IPanelController;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/amazon/kindle/panels/IPanelController;
    .locals 1

    .line 15
    invoke-static {}, Lcom/amazon/kcp/application/ReaderPanelControllerModule_ProvidesPanelControllerFactory;->provideInstance()Lcom/amazon/kindle/panels/IPanelController;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/amazon/kcp/application/ReaderPanelControllerModule_ProvidesPanelControllerFactory;->get()Lcom/amazon/kindle/panels/IPanelController;

    move-result-object v0

    return-object v0
.end method
