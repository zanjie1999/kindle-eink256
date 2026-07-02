.class public Lcom/localytics/android/LocalyticsSession;
.super Ljava/lang/Object;
.source "LocalyticsSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/LocalyticsSession$Triple;,
        Lcom/localytics/android/LocalyticsSession$Pair;,
        Lcom/localytics/android/LocalyticsSession$UploadHandler;,
        Lcom/localytics/android/LocalyticsSession$SessionHandler;
    }
.end annotation


# static fields
.field static final CLOSE_EVENT:Ljava/lang/String;

.field static final FLOW_EVENT:Ljava/lang/String;

.field static final OPEN_EVENT:Ljava/lang/String;

.field static final OPT_IN_EVENT:Ljava/lang/String;

.field static final OPT_OUT_EVENT:Ljava/lang/String;

.field private static lastLocation:Landroid/location/Location;

.field protected static final sIsUploadingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLocalyticsSessionHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/localytics/android/LocalyticsSession$SessionHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLocalyticsSessionIntrinsicLock:[Ljava/lang/Object;

.field private static final sSessionHandlerThread:Landroid/os/HandlerThread;

.field protected static final sUploadHandlerThread:Landroid/os/HandlerThread;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDeviceIdSeed:Ljava/lang/String;

.field private final mSessionHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "com.localytics.android"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v4, "open"

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const-string v4, "%s:%s"

    .line 164
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/localytics/android/LocalyticsSession;->OPEN_EVENT:Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/Object;

    aput-object v2, v1, v3

    const-string v6, "close"

    aput-object v6, v1, v5

    .line 169
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/localytics/android/LocalyticsSession;->CLOSE_EVENT:Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/Object;

    aput-object v2, v1, v3

    const-string v6, "opt_in"

    aput-object v6, v1, v5

    .line 174
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/localytics/android/LocalyticsSession;->OPT_IN_EVENT:Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/Object;

    aput-object v2, v1, v3

    const-string v6, "opt_out"

    aput-object v6, v1, v5

    .line 179
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/localytics/android/LocalyticsSession;->OPT_OUT_EVENT:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v3

    const-string v1, "flow"

    aput-object v1, v0, v5

    .line 184
    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/localytics/android/LocalyticsSession;->FLOW_EVENT:Ljava/lang/String;

    .line 209
    const-class v0, Lcom/localytics/android/LocalyticsSession$SessionHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/LocalyticsSession;->getHandlerThread(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v0

    sput-object v0, Lcom/localytics/android/LocalyticsSession;->sSessionHandlerThread:Landroid/os/HandlerThread;

    .line 219
    const-class v0, Lcom/localytics/android/LocalyticsSession$UploadHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/LocalyticsSession;->getHandlerThread(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v0

    sput-object v0, Lcom/localytics/android/LocalyticsSession;->sUploadHandlerThread:Landroid/os/HandlerThread;

    .line 245
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/localytics/android/LocalyticsSession;->sLocalyticsSessionHandlerMap:Ljava/util/Map;

    new-array v0, v3, [Ljava/lang/Object;

    .line 250
    sput-object v0, Lcom/localytics/android/LocalyticsSession;->sLocalyticsSessionIntrinsicLock:[Ljava/lang/Object;

    const/4 v0, 0x0

    .line 274
    sput-object v0, Lcom/localytics/android/LocalyticsSession;->lastLocation:Landroid/location/Location;

    .line 283
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/localytics/android/LocalyticsSession;->sIsUploadingMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_6

    .line 333
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    invoke-static {p1}, Lcom/localytics/android/DatapointHelper;->getLocalyticsAppKeyOrNull(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 338
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 349
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.localytics.android"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 350
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.test.IsolatedContext"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.test.RenamingDelegatingContext"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 352
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v1

    const-string p1, "context.getPackageName() returned %s"

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 366
    :cond_2
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.test.RenamingDelegatingContext"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget v0, Lcom/localytics/android/Constants;->CURRENT_API_LEVEL:I

    const/16 v2, 0x8

    if-lt v0, v2, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_3
    iput-object p1, p0, Lcom/localytics/android/LocalyticsSession;->mContext:Landroid/content/Context;

    .line 368
    iput-object p3, p0, Lcom/localytics/android/LocalyticsSession;->mDeviceIdSeed:Ljava/lang/String;

    .line 370
    sget-object p1, Lcom/localytics/android/LocalyticsSession;->sLocalyticsSessionIntrinsicLock:[Ljava/lang/Object;

    monitor-enter p1

    .line 372
    :try_start_0
    sget-object p3, Lcom/localytics/android/LocalyticsSession;->sLocalyticsSessionHandlerMap:Ljava/util/Map;

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/localytics/android/LocalyticsSession$SessionHandler;

    if-nez p3, :cond_4

    .line 376
    new-instance p3, Lcom/localytics/android/LocalyticsSession$SessionHandler;

    iget-object v0, p0, Lcom/localytics/android/LocalyticsSession;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/localytics/android/LocalyticsSession;->mDeviceIdSeed:Ljava/lang/String;

    sget-object v3, Lcom/localytics/android/LocalyticsSession;->sSessionHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {p3, v0, p2, v2, v3}, Lcom/localytics/android/LocalyticsSession$SessionHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Looper;)V

    .line 377
    sget-object v0, Lcom/localytics/android/LocalyticsSession;->sLocalyticsSessionHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    invoke-virtual {p3, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 388
    :cond_4
    iput-object p3, p0, Lcom/localytics/android/LocalyticsSession;->mSessionHandler:Landroid/os/Handler;

    .line 389
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 340
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "key cannot be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 329
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$100()Landroid/location/Location;
    .locals 1

    .line 122
    sget-object v0, Lcom/localytics/android/LocalyticsSession;->lastLocation:Landroid/location/Location;

    return-object v0
.end method

.method private static convertDimensionsToAttributes(Ljava/util/List;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1052
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    if-eqz p0, :cond_a

    const/4 v1, 0x0

    .line 1057
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1061
    sget-object v3, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_1:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    if-ne v3, v1, :cond_1

    .line 1065
    sget-object v3, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_2:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    if-ne v3, v1, :cond_2

    .line 1069
    sget-object v3, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_3:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const/4 v3, 0x3

    if-ne v3, v1, :cond_3

    .line 1073
    sget-object v3, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_4:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const/4 v3, 0x4

    if-ne v3, v1, :cond_4

    .line 1077
    sget-object v3, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_5:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    const/4 v3, 0x5

    if-ne v3, v1, :cond_5

    .line 1081
    sget-object v3, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_6:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    const/4 v3, 0x6

    if-ne v3, v1, :cond_6

    .line 1085
    sget-object v3, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_7:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    const/4 v3, 0x7

    if-ne v3, v1, :cond_7

    .line 1089
    sget-object v3, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_8:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_7
    const/16 v3, 0x8

    if-ne v3, v1, :cond_8

    .line 1093
    sget-object v3, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_9:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_8
    const/16 v3, 0x9

    if-ne v3, v1, :cond_9

    .line 1097
    sget-object v3, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_10:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_a
    return-object v0
.end method

.method private static getHandlerThread(Ljava/lang/String;)Landroid/os/HandlerThread;
    .locals 2

    .line 229
    new-instance v0, Landroid/os/HandlerThread;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 231
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    return-object v0
.end method


# virtual methods
.method public close(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 526
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 534
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 542
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 548
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 550
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "customDimensions cannot contain empty elements"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 546
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "customDimensions cannot contain null elements"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 v0, 0x2

    if-eqz p1, :cond_4

    .line 556
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 562
    :cond_3
    iget-object v1, p0, Lcom/localytics/android/LocalyticsSession;->mSessionHandler:Landroid/os/Handler;

    new-instance v2, Ljava/util/TreeMap;

    invoke-static {p1}, Lcom/localytics/android/LocalyticsSession;->convertDimensionsToAttributes(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 558
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/localytics/android/LocalyticsSession;->mSessionHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_2
    return-void
.end method

.method public open(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 451
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 459
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 467
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 473
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 475
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "customDimensions cannot contain empty elements"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 471
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "customDimensions cannot contain null elements"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 481
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 487
    :cond_3
    iget-object v1, p0, Lcom/localytics/android/LocalyticsSession;->mSessionHandler:Landroid/os/Handler;

    new-instance v2, Ljava/util/TreeMap;

    invoke-static {p1}, Lcom/localytics/android/LocalyticsSession;->convertDimensionsToAttributes(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 483
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/localytics/android/LocalyticsSession;->mSessionHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_2
    return-void
.end method

.method public tagEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 617
    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/LocalyticsSession;->tagEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;J)V

    return-void
.end method

.method public tagEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;J)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    if-eqz p1, :cond_c

    .line 671
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_b

    if-eqz p2, :cond_4

    .line 682
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    .line 690
    invoke-interface {p2}, Ljava/util/Map;->size()I

    .line 698
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 700
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 701
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v2, :cond_3

    if-eqz v1, :cond_2

    .line 711
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 715
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 717
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "attributes cannot contain empty values"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 713
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "attributes cannot contain empty keys"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 709
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "attributes cannot contain null values"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 705
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "attributes cannot contain null keys"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    if-eqz p3, :cond_7

    .line 728
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 736
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 744
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 750
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    .line 752
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "customDimensions cannot contain empty elements"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 748
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "customDimensions cannot contain null elements"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 758
    iget-object v2, p0, Lcom/localytics/android/LocalyticsSession;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "%s:%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    if-nez p2, :cond_8

    if-nez p3, :cond_8

    .line 762
    iget-object p1, p0, Lcom/localytics/android/LocalyticsSession;->mSessionHandler:Landroid/os/Handler;

    new-instance p2, Lcom/localytics/android/LocalyticsSession$Triple;

    const/4 p3, 0x0

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-direct {p2, v1, p3, p4}, Lcom/localytics/android/LocalyticsSession$Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v4, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    .line 770
    :cond_8
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    if-eqz p2, :cond_9

    .line 774
    iget-object v6, p0, Lcom/localytics/android/LocalyticsSession;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 775
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    new-array v8, v0, [Ljava/lang/Object;

    aput-object v6, v8, v3

    .line 777
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {p1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v8, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_9
    if-eqz p3, :cond_a

    .line 783
    invoke-static {p3}, Lcom/localytics/android/LocalyticsSession;->convertDimensionsToAttributes(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 794
    :cond_a
    iget-object p1, p0, Lcom/localytics/android/LocalyticsSession;->mSessionHandler:Landroid/os/Handler;

    new-instance p2, Lcom/localytics/android/LocalyticsSession$Triple;

    new-instance p3, Ljava/util/TreeMap;

    invoke-direct {p3, v5}, Ljava/util/TreeMap;-><init>(Ljava/util/SortedMap;)V

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-direct {p2, v1, p3, p4}, Lcom/localytics/android/LocalyticsSession$Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v4, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_3
    return-void

    .line 673
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "event cannot be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 668
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "event cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public tagScreen(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 814
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/localytics/android/LocalyticsSession;->mSessionHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 816
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "event cannot be empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 811
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "event cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public upload()V
    .locals 3

    .line 917
    iget-object v0, p0, Lcom/localytics/android/LocalyticsSession;->mSessionHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
