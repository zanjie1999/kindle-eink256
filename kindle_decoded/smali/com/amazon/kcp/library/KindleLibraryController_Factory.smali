.class public final Lcom/amazon/kcp/library/KindleLibraryController_Factory;
.super Ljava/lang/Object;
.source "KindleLibraryController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/kcp/library/KindleLibraryController;",
        ">;"
    }
.end annotation


# instance fields
.field private final arg0Provider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final arg1Provider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/IKindleObjectFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final arg2Provider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/IAndroidApplicationController;",
            ">;"
        }
    .end annotation
.end field

.field private final arg3Provider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/content/ILibraryService;",
            ">;"
        }
    .end annotation
.end field

.field private final arg4Provider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final arg5Provider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/scan/ScanLocalContentUtils;",
            ">;"
        }
    .end annotation
.end field

.field private final arg6Provider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/events/IPubSubEventsManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/IKindleObjectFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/IAndroidApplicationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/content/ILibraryService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/scan/ScanLocalContentUtils;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/events/IPubSubEventsManager;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/amazon/kcp/library/KindleLibraryController_Factory;->arg0Provider:Ljavax/inject/Provider;

    .line 38
    iput-object p2, p0, Lcom/amazon/kcp/library/KindleLibraryController_Factory;->arg1Provider:Ljavax/inject/Provider;

    .line 39
    iput-object p3, p0, Lcom/amazon/kcp/library/KindleLibraryController_Factory;->arg2Provider:Ljavax/inject/Provider;

    .line 40
    iput-object p4, p0, Lcom/amazon/kcp/library/KindleLibraryController_Factory;->arg3Provider:Ljavax/inject/Provider;

    .line 41
    iput-object p5, p0, Lcom/amazon/kcp/library/KindleLibraryController_Factory;->arg4Provider:Ljavax/inject/Provider;

    .line 42
    iput-object p6, p0, Lcom/amazon/kcp/library/KindleLibraryController_Factory;->arg5Provider:Ljavax/inject/Provider;

    .line 43
    iput-object p7, p0, Lcom/amazon/kcp/library/KindleLibraryController_Factory;->arg6Provider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kcp/library/KindleLibraryController_Factory;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/IKindleObjectFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/IAndroidApplicationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/content/ILibraryService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/scan/ScanLocalContentUtils;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/events/IPubSubEventsManager;",
            ">;)",
            "Lcom/amazon/kcp/library/KindleLibraryController_Factory;"
        }
    .end annotation

    .line 84
    new-instance v8, Lcom/amazon/kcp/library/KindleLibraryController_Factory;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/amazon/kcp/library/KindleLibraryController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v8
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kcp/library/KindleLibraryController;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/IKindleObjectFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/IAndroidApplicationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/content/ILibraryService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/scan/ScanLocalContentUtils;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/events/IPubSubEventsManager;",
            ">;)",
            "Lcom/amazon/kcp/library/KindleLibraryController;"
        }
    .end annotation

    .line 66
    new-instance v8, Lcom/amazon/kcp/library/KindleLibraryController;

    .line 67
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    .line 68
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/amazon/kcp/application/IKindleObjectFactory;

    .line 69
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lcom/amazon/kcp/application/IAndroidApplicationController;

    .line 70
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lcom/amazon/kindle/content/ILibraryService;

    .line 71
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Ljava/util/Set;

    .line 72
    invoke-interface {p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lcom/amazon/kindle/scan/ScanLocalContentUtils;

    .line 73
    invoke-interface {p6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/amazon/kcp/library/KindleLibraryController;-><init>(Landroid/content/Context;Lcom/amazon/kcp/application/IKindleObjectFactory;Lcom/amazon/kcp/application/IAndroidApplicationController;Lcom/amazon/kindle/content/ILibraryService;Ljava/util/Set;Lcom/amazon/kindle/scan/ScanLocalContentUtils;Lcom/amazon/kindle/krx/events/IPubSubEventsManager;)V

    return-object v8
.end method


# virtual methods
.method public get()Lcom/amazon/kcp/library/KindleLibraryController;
    .locals 7

    .line 48
    iget-object v0, p0, Lcom/amazon/kcp/library/KindleLibraryController_Factory;->arg0Provider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/amazon/kcp/library/KindleLibraryController_Factory;->arg1Provider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/amazon/kcp/library/KindleLibraryController_Factory;->arg2Provider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/amazon/kcp/library/KindleLibraryController_Factory;->arg3Provider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/amazon/kcp/library/KindleLibraryController_Factory;->arg4Provider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/amazon/kcp/library/KindleLibraryController_Factory;->arg5Provider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/amazon/kcp/library/KindleLibraryController_Factory;->arg6Provider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v6}, Lcom/amazon/kcp/library/KindleLibraryController_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kcp/library/KindleLibraryController;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/amazon/kcp/library/KindleLibraryController_Factory;->get()Lcom/amazon/kcp/library/KindleLibraryController;

    move-result-object v0

    return-object v0
.end method
