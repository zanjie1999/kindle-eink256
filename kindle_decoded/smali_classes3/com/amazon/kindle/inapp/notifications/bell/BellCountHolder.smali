.class public final Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder;
.super Ljava/lang/Object;
.source "BellCountHolder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder$Holder;,
        Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBellCountHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BellCountHolder.kt\ncom/amazon/kindle/inapp/notifications/bell/BellCountHolder\n*L\n1#1,33:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder$Companion;

.field private static final instance$delegate:Lkotlin/Lazy;


# instance fields
.field private bellCount:I

.field private final messageQueue$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "messageQueue"

    const-string v4, "getMessageQueue()Lcom/amazon/kindle/krx/events/IMessageQueue;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder;->Companion:Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder$Companion;

    .line 32
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder$Companion$instance$2;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder$Companion$instance$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder;->instance$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder$messageQueue$2;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder$messageQueue$2;-><init>(Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder;->messageQueue$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lkotlin/Lazy;
    .locals 1

    .line 9
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder;->instance$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method private final getMessageQueue()Lcom/amazon/kindle/krx/events/IMessageQueue;
    .locals 3

    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder;->messageQueue$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized getCount()I
    .locals 1

    monitor-enter p0

    .line 30
    :try_start_0
    iget v0, p0, Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder;->bellCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setCount(I)V
    .locals 2

    monitor-enter p0

    .line 20
    :try_start_0
    iget v0, p0, Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder;->bellCount:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    iput p1, p0, Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder;->bellCount:I

    if-eqz v0, :cond_1

    .line 22
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder;->getMessageQueue()Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    new-instance v0, Lcom/amazon/kindle/inapp/notifications/event/BellCountEvent;

    sget-object v1, Lcom/amazon/kindle/inapp/notifications/event/BellCountEventType;->BELL_COUNT_CHANGED:Lcom/amazon/kindle/inapp/notifications/event/BellCountEventType;

    invoke-direct {v0, v1}, Lcom/amazon/kindle/inapp/notifications/event/BellCountEvent;-><init>(Lcom/amazon/kindle/inapp/notifications/event/BellCountEventType;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
