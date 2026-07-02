.class public abstract Lcom/amazon/kindle/library/household/BaseHouseholdMembersProvider;
.super Ljava/lang/Object;
.source "BaseHouseholdMembersProvider.kt"

# interfaces
.implements Lcom/amazon/kindle/library/household/HouseholdMembersProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/library/household/BaseHouseholdMembersProvider$Companion;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final LIBRARY_PREFS:Ljava/lang/String;

.field private householdMemberMapCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final householdMemberMapCacheLock:Ljava/lang/Object;

.field private final pendingGetUsersCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/kindle/library/household/HouseholdMembersProvider$GetAllUsersCallback;",
            ">;"
        }
    .end annotation
.end field

.field private sharedPreferences:Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

.field private final uiHandler:Landroid/os/Handler;

.field private updateHouseholdMembersCallback:Lcom/amazon/kindle/library/household/HouseholdMembersProvider$GetAllUsersCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/library/household/BaseHouseholdMembersProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/library/household/BaseHouseholdMembersProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 24
    const-class v0, Lcom/amazon/kindle/library/household/BaseHouseholdMembersProvider;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(BaseHouseho\u2026bersProvider::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/library/household/BaseHouseholdMembersProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "LibrarySettings"

    .line 22
    iput-object v0, p0, Lcom/amazon/kindle/library/household/BaseHouseholdMembersProvider;->LIBRARY_PREFS:Ljava/lang/String;

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amazon/kindle/library/household/BaseHouseholdMembersProvider;->uiHandler:Landroid/os/Handler;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/library/household/BaseHouseholdMembersProvider;->pendingGetUsersCallbacks:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/library/household/BaseHouseholdMembersProvider;->householdMemberMapCacheLock:Ljava/lang/Object;

    .line 41
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/library/household/BaseHouseholdMembersProvider;->LIBRARY_PREFS:Ljava/lang/String;

    .line 42
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    .line 41
    invoke-interface {v0, v1, v3, v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAndroidSharedPreferences(Ljava/lang/String;ILandroid/content/Context;)Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    move-result-object v0

    const-string v1, "Utils.getFactory().getAn\u2026aultApplicationContext())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kindle/library/household/BaseHouseholdMembersProvider;->sharedPreferences:Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    .line 43
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 44
    invoke-direct {p0}, Lcom/amazon/kindle/library/household/BaseHouseholdMembersProvider;->restoreHouseholdMemberMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/library/household/BaseHouseholdMembersProvider;->householdMemberMapCache:Ljava/util/Map;

    return-void
.end method

.method private final restoreHouseholdMemberMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/amazon/kindle/library/household/BaseHouseholdMembersProvider;->sharedPreferences:Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    const-string v1, "HouseholdMemberPersistkey"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 56
    invoke-static {v0}, Lcom/amazon/kindle/util/JsonUtils;->parseJsonMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "JsonUtils.parseJsonMap(householdMembersMapJson)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 58
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 59
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 60
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Household member restored - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-object v1

    .line 54
    :cond_3
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected final getHouseholdMemberMapCache()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/amazon/kindle/library/household/BaseHouseholdMembersProvider;->householdMemberMapCache:Ljava/util/Map;

    return-object v0
.end method

.method protected final getHouseholdMemberMapCacheLock()Ljava/lang/Object;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazon/kindle/library/household/BaseHouseholdMembersProvider;->householdMemberMapCacheLock:Ljava/lang/Object;

    return-object v0
.end method

.method protected final getUpdateHouseholdMembersCallback()Lcom/amazon/kindle/library/household/HouseholdMembersProvider$GetAllUsersCallback;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/kindle/library/household/BaseHouseholdMembersProvider;->updateHouseholdMembersCallback:Lcom/amazon/kindle/library/household/HouseholdMembersProvider$GetAllUsersCallback;

    return-object v0
.end method

.method public final onAuthenticationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;->LOGIN:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    if-ne p1, v0, :cond_0

    .line 107
    invoke-interface {p0}, Lcom/amazon/kindle/library/household/HouseholdMembersProvider;->triggerGetAllUsersRefresh()V

    :cond_0
    return-void
.end method

.method protected final postGetUsersCallback(Lcom/amazon/kindle/library/household/HouseholdMembersProvider$GetAllUsersCallback;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/library/household/HouseholdMembersProvider$GetAllUsersCallback;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "usersCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "householdMemberMap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/amazon/kindle/library/household/BaseHouseholdMembersProvider;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/amazon/kindle/library/household/BaseHouseholdMembersProvider$postGetUsersCallback$1;

    invoke-direct {v1, p1, p2}, Lcom/amazon/kindle/library/household/BaseHouseholdMembersProvider$postGetUsersCallback$1;-><init>(Lcom/amazon/kindle/library/household/HouseholdMembersProvider$GetAllUsersCallback;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected final saveHouseholdMemberMap(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "householdMemberMap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-static {p1}, Lcom/amazon/kindle/util/JsonUtils;->toJsonMap(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "JsonUtils.toJsonMap(householdMemberMap).toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/amazon/kindle/library/household/BaseHouseholdMembersProvider;->sharedPreferences:Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    const-string v1, "HouseholdMemberPersistkey"

    invoke-virtual {v0, v1, p1}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;->putStringAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAndUseUpdateHouseholdMembersCallback(Lcom/amazon/kindle/library/household/HouseholdMembersProvider$GetAllUsersCallback;)V
    .locals 2

    const-string/jumbo v0, "usersCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iput-object p1, p0, Lcom/amazon/kindle/library/household/BaseHouseholdMembersProvider;->updateHouseholdMembersCallback:Lcom/amazon/kindle/library/household/HouseholdMembersProvider$GetAllUsersCallback;

    .line 92
    iget-object v0, p0, Lcom/amazon/kindle/library/household/BaseHouseholdMembersProvider;->householdMemberMapCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/library/household/BaseHouseholdMembersProvider;->householdMemberMapCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/amazon/kindle/library/household/BaseHouseholdMembersProvider;->householdMemberMapCache:Ljava/util/Map;

    invoke-interface {p1, v1}, Lcom/amazon/kindle/library/household/HouseholdMembersProvider$GetAllUsersCallback;->callback(Ljava/util/Map;)V

    .line 96
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method protected final setHouseholdMemberMapCache(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lcom/amazon/kindle/library/household/BaseHouseholdMembersProvider;->householdMemberMapCache:Ljava/util/Map;

    return-void
.end method
