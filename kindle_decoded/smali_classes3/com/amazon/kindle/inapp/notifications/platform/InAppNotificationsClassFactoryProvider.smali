.class public final Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryProvider;
.super Ljava/lang/Object;
.source "InAppNotificationsClassFactoryProvider.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryProvider$Holder;,
        Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryProvider$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryProvider$Companion;

.field private static final instance$delegate:Lkotlin/Lazy;


# instance fields
.field private classFactory:Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryProvider;->Companion:Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryProvider$Companion;

    .line 37
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryProvider$Companion$instance$2;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryProvider$Companion$instance$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryProvider;->instance$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lkotlin/Lazy;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryProvider;->instance$delegate:Lkotlin/Lazy;

    return-object v0
.end method


# virtual methods
.method public final getFactory()Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactory;
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryProvider;->classFactory:Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactory;

    if-eqz v0, :cond_1

    if-nez v0, :cond_0

    .line 33
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    return-object v0

    .line 32
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempting to get the class factory before it was initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final declared-synchronized initializeClassFactory(Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactory;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "factory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryProvider;->classFactory:Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactory;

    if-nez v0, :cond_0

    .line 22
    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryProvider;->classFactory:Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    monitor-exit p0

    return-void

    .line 20
    :cond_0
    :try_start_1
    new-instance p1, Lcom/amazon/kindle/inapp/notifications/platform/ClassFactoryAlreadyInitializedException;

    const-string v0, "Attempting to initialize class factory after it has already been set"

    invoke-direct {p1, v0}, Lcom/amazon/kindle/inapp/notifications/platform/ClassFactoryAlreadyInitializedException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
