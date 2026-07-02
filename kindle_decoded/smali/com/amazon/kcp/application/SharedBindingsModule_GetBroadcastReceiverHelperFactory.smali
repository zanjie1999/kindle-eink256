.class public final Lcom/amazon/kcp/application/SharedBindingsModule_GetBroadcastReceiverHelperFactory;
.super Ljava/lang/Object;
.source "SharedBindingsModule_GetBroadcastReceiverHelperFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/android/util/BroadcastReceiverHelper;",
        ">;"
    }
.end annotation


# instance fields
.field private final applicationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/amazon/kcp/application/SharedBindingsModule_GetBroadcastReceiverHelperFactory;->applicationProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/amazon/kcp/application/SharedBindingsModule_GetBroadcastReceiverHelperFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;)",
            "Lcom/amazon/kcp/application/SharedBindingsModule_GetBroadcastReceiverHelperFactory;"
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/amazon/kcp/application/SharedBindingsModule_GetBroadcastReceiverHelperFactory;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/SharedBindingsModule_GetBroadcastReceiverHelperFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lcom/amazon/android/util/BroadcastReceiverHelper;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;)",
            "Lcom/amazon/android/util/BroadcastReceiverHelper;"
        }
    .end annotation

    .line 25
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    invoke-static {p0}, Lcom/amazon/kcp/application/SharedBindingsModule_GetBroadcastReceiverHelperFactory;->proxyGetBroadcastReceiverHelper(Landroid/app/Application;)Lcom/amazon/android/util/BroadcastReceiverHelper;

    move-result-object p0

    return-object p0
.end method

.method public static proxyGetBroadcastReceiverHelper(Landroid/app/Application;)Lcom/amazon/android/util/BroadcastReceiverHelper;
    .locals 1

    .line 35
    invoke-static {p0}, Lcom/amazon/kcp/application/SharedBindingsModule;->getBroadcastReceiverHelper(Landroid/app/Application;)Lcom/amazon/android/util/BroadcastReceiverHelper;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 34
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/amazon/android/util/BroadcastReceiverHelper;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/amazon/android/util/BroadcastReceiverHelper;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amazon/kcp/application/SharedBindingsModule_GetBroadcastReceiverHelperFactory;->applicationProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/amazon/kcp/application/SharedBindingsModule_GetBroadcastReceiverHelperFactory;->provideInstance(Ljavax/inject/Provider;)Lcom/amazon/android/util/BroadcastReceiverHelper;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/amazon/kcp/application/SharedBindingsModule_GetBroadcastReceiverHelperFactory;->get()Lcom/amazon/android/util/BroadcastReceiverHelper;

    move-result-object v0

    return-object v0
.end method
