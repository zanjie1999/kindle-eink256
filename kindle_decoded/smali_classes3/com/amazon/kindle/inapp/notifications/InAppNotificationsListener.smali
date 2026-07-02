.class public final Lcom/amazon/kindle/inapp/notifications/InAppNotificationsListener;
.super Ljava/lang/Object;
.source "InAppNotificationsListener.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/startup/IStartupListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInAppNotificationsListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InAppNotificationsListener.kt\ncom/amazon/kindle/inapp/notifications/InAppNotificationsListener\n*L\n1#1,38:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final messageQueue$delegate:Lkotlin/Lazy;

.field private final networkUtil:Lcom/amazon/kindle/inapp/notifications/util/NetworkConnectionUtil;

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsListener;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "messageQueue"

    const-string v4, "getMessageQueue()Lcom/amazon/kindle/krx/events/IMessageQueue;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsListener;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    const-string v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsListener;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 15
    new-instance p1, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsListener$messageQueue$2;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsListener$messageQueue$2;-><init>(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsListener;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsListener;->messageQueue$delegate:Lkotlin/Lazy;

    .line 16
    const-class p1, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsListener;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsListener;->TAG:Ljava/lang/String;

    .line 17
    new-instance p1, Lcom/amazon/kindle/inapp/notifications/util/NetworkConnectionUtil;

    invoke-direct {p1}, Lcom/amazon/kindle/inapp/notifications/util/NetworkConnectionUtil;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsListener;->networkUtil:Lcom/amazon/kindle/inapp/notifications/util/NetworkConnectionUtil;

    return-void
.end method

.method public static final synthetic access$getSdk$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsListener;)Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsListener;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object p0
.end method

.method private final getMessageQueue()Lcom/amazon/kindle/krx/events/IMessageQueue;
    .locals 3

    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsListener;->messageQueue$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsListener;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-object v0
.end method


# virtual methods
.method public final onLibraryLifecycleEvent(Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1}, Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent;->getActivityLifecycleType()Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent$Type;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent$Type;->RESUME:Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent$Type;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 30
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsListener;->networkUtil:Lcom/amazon/kindle/inapp/notifications/util/NetworkConnectionUtil;

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/util/NetworkConnectionUtil;->isNetworkAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 31
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsListener;->getMessageQueue()Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    new-instance v0, Lcom/amazon/kindle/inapp/notifications/event/BellCountEvent;

    sget-object v1, Lcom/amazon/kindle/inapp/notifications/event/BellCountEventType;->BELL_COUNT_UPDATE:Lcom/amazon/kindle/inapp/notifications/event/BellCountEventType;

    invoke-direct {v0, v1}, Lcom/amazon/kindle/inapp/notifications/event/BellCountEvent;-><init>(Lcom/amazon/kindle/inapp/notifications/event/BellCountEventType;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    goto :goto_0

    .line 33
    :cond_0
    sget-object p1, Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder;->Companion:Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder$Companion;

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder$Companion;->getInstance()Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder;->setCount(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStartupEvent()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
