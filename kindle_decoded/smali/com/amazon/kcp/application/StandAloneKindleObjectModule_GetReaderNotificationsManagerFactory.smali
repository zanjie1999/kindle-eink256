.class public final Lcom/amazon/kcp/application/StandAloneKindleObjectModule_GetReaderNotificationsManagerFactory;
.super Ljava/lang/Object;
.source "StandAloneKindleObjectModule_GetReaderNotificationsManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/kcp/notifications/ReaderNotificationsManagerEx;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final kindleReaderSDKProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/KindleReaderSDK;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/amazon/kcp/application/StandAloneKindleObjectModule;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/StandAloneKindleObjectModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/application/StandAloneKindleObjectModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/KindleReaderSDK;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/amazon/kcp/application/StandAloneKindleObjectModule_GetReaderNotificationsManagerFactory;->module:Lcom/amazon/kcp/application/StandAloneKindleObjectModule;

    .line 24
    iput-object p2, p0, Lcom/amazon/kcp/application/StandAloneKindleObjectModule_GetReaderNotificationsManagerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 25
    iput-object p3, p0, Lcom/amazon/kcp/application/StandAloneKindleObjectModule_GetReaderNotificationsManagerFactory;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/amazon/kcp/application/StandAloneKindleObjectModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kcp/application/StandAloneKindleObjectModule_GetReaderNotificationsManagerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/application/StandAloneKindleObjectModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/KindleReaderSDK;",
            ">;)",
            "Lcom/amazon/kcp/application/StandAloneKindleObjectModule_GetReaderNotificationsManagerFactory;"
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/amazon/kcp/application/StandAloneKindleObjectModule_GetReaderNotificationsManagerFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/kcp/application/StandAloneKindleObjectModule_GetReaderNotificationsManagerFactory;-><init>(Lcom/amazon/kcp/application/StandAloneKindleObjectModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lcom/amazon/kcp/application/StandAloneKindleObjectModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kcp/notifications/ReaderNotificationsManagerEx;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/application/StandAloneKindleObjectModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/KindleReaderSDK;",
            ">;)",
            "Lcom/amazon/kcp/notifications/ReaderNotificationsManagerEx;"
        }
    .end annotation

    .line 38
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kindle/krx/KindleReaderSDK;

    .line 37
    invoke-static {p0, p1, p2}, Lcom/amazon/kcp/application/StandAloneKindleObjectModule_GetReaderNotificationsManagerFactory;->proxyGetReaderNotificationsManager(Lcom/amazon/kcp/application/StandAloneKindleObjectModule;Landroid/content/Context;Lcom/amazon/kindle/krx/KindleReaderSDK;)Lcom/amazon/kcp/notifications/ReaderNotificationsManagerEx;

    move-result-object p0

    return-object p0
.end method

.method public static proxyGetReaderNotificationsManager(Lcom/amazon/kcp/application/StandAloneKindleObjectModule;Landroid/content/Context;Lcom/amazon/kindle/krx/KindleReaderSDK;)Lcom/amazon/kcp/notifications/ReaderNotificationsManagerEx;
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/application/StandAloneKindleObjectModule;->getReaderNotificationsManager(Landroid/content/Context;Lcom/amazon/kindle/krx/KindleReaderSDK;)Lcom/amazon/kcp/notifications/ReaderNotificationsManagerEx;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 51
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/amazon/kcp/notifications/ReaderNotificationsManagerEx;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/amazon/kcp/notifications/ReaderNotificationsManagerEx;
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/amazon/kcp/application/StandAloneKindleObjectModule_GetReaderNotificationsManagerFactory;->module:Lcom/amazon/kcp/application/StandAloneKindleObjectModule;

    iget-object v1, p0, Lcom/amazon/kcp/application/StandAloneKindleObjectModule_GetReaderNotificationsManagerFactory;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/amazon/kcp/application/StandAloneKindleObjectModule_GetReaderNotificationsManagerFactory;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/application/StandAloneKindleObjectModule_GetReaderNotificationsManagerFactory;->provideInstance(Lcom/amazon/kcp/application/StandAloneKindleObjectModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kcp/notifications/ReaderNotificationsManagerEx;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/amazon/kcp/application/StandAloneKindleObjectModule_GetReaderNotificationsManagerFactory;->get()Lcom/amazon/kcp/notifications/ReaderNotificationsManagerEx;

    move-result-object v0

    return-object v0
.end method
