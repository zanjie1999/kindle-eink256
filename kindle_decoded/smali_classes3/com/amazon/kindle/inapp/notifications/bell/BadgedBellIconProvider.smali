.class public final Lcom/amazon/kindle/inapp/notifications/bell/BadgedBellIconProvider;
.super Ljava/lang/Object;
.source "BadgedBellIconProvider.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/providers/ILandingScreenActionProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/inapp/notifications/bell/BadgedBellIconProvider$BadgedBellIconItem;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBadgedBellIconProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BadgedBellIconProvider.kt\ncom/amazon/kindle/inapp/notifications/bell/BadgedBellIconProvider\n*L\n1#1,103:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final eventManager$delegate:Lkotlin/Lazy;

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/amazon/kindle/inapp/notifications/bell/BadgedBellIconProvider;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "eventManager"

    const-string v4, "getEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kindle/inapp/notifications/bell/BadgedBellIconProvider;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    const-string v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/bell/BadgedBellIconProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 31
    new-instance p1, Lcom/amazon/kindle/inapp/notifications/bell/BadgedBellIconProvider$eventManager$2;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/inapp/notifications/bell/BadgedBellIconProvider$eventManager$2;-><init>(Lcom/amazon/kindle/inapp/notifications/bell/BadgedBellIconProvider;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/bell/BadgedBellIconProvider;->eventManager$delegate:Lkotlin/Lazy;

    .line 34
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/bell/BadgedBellIconProvider;->getEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 35
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/bell/BadgedBellIconProvider;->onBadgeCountUpdate()V

    return-void
.end method

.method private final getEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;
    .locals 3

    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/bell/BadgedBellIconProvider;->eventManager$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/amazon/kindle/inapp/notifications/bell/BadgedBellIconProvider;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    return-object v0
.end method

.method private final onBadgeCountUpdate()V
    .locals 2

    .line 97
    new-instance v0, Lcom/amazon/kindle/inapp/notifications/bell/BadgedBellIconProvider$onBadgeCountUpdate$1;

    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/bell/BadgedBellIconProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {v0, p0, v1}, Lcom/amazon/kindle/inapp/notifications/bell/BadgedBellIconProvider$onBadgeCountUpdate$1;-><init>(Lcom/amazon/kindle/inapp/notifications/bell/BadgedBellIconProvider;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    const-string v1, ""

    .line 101
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public get(Lcom/amazon/kindle/krx/ui/ILandingScreenActionContext;)Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/ui/ILandingScreenActionContext;",
            ")",
            "Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem<",
            "Lcom/amazon/kindle/krx/ui/ILandingScreenActionContext;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance p1, Lcom/amazon/kindle/inapp/notifications/bell/BadgedBellIconProvider$BadgedBellIconItem;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/inapp/notifications/bell/BadgedBellIconProvider$BadgedBellIconItem;-><init>(Lcom/amazon/kindle/inapp/notifications/bell/BadgedBellIconProvider;)V

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30
    check-cast p1, Lcom/amazon/kindle/krx/ui/ILandingScreenActionContext;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/inapp/notifications/bell/BadgedBellIconProvider;->get(Lcom/amazon/kindle/krx/ui/ILandingScreenActionContext;)Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;

    move-result-object p1

    return-object p1
.end method

.method public final getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/bell/BadgedBellIconProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object v0
.end method

.method public final onAuthenticationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;->LOGOUT:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder;->Companion:Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder$Companion;

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder$Companion;->getInstance()Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder;->setCount(I)V

    :cond_0
    return-void
.end method

.method public final onBadgeCountEvent(Lcom/amazon/kindle/inapp/notifications/event/BellCountEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/event/BellCountEvent;->getType()Lcom/amazon/kindle/inapp/notifications/event/BellCountEventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/inapp/notifications/bell/BadgedBellIconProvider$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 92
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/bell/BadgedBellIconProvider;->onBadgeCountUpdate()V

    goto :goto_0

    .line 91
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/bell/BadgedBellIconProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryUIManager()Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/ui/ILibraryUIManager;->refreshLandingScreenAction(Lcom/amazon/kindle/krx/providers/ILandingScreenActionProvider;)V

    :goto_0
    return-void
.end method
