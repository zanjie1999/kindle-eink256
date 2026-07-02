.class public Lcom/amazon/kcp/library/customerbenefits/CustomerBenefits;
.super Ljava/lang/Object;
.source "CustomerBenefits.java"

# interfaces
.implements Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;


# static fields
.field private static final ATTR_CHANNELS:Ljava/lang/String; = "channels"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PROGRAMS:Ljava/lang/String; = "programs"

.field private static final ATTR_START_TIME:Ljava/lang/String; = "startTime"

.field private static final CLIENT_ID:Ljava/lang/String; = "KindleReaderLibraryAndroid"

.field private static final LIBRARY_PREFS:Ljava/lang/String; = "LibrarySettings"

.field private static final ONE_MIN_IN_MILLISEC:Ljava/lang/Long;

.field private static final RETRY_REQUEST_DURATION_MINS:Ljava/lang/Long;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private applicationManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

.field private volatile hasComicsUnlimited:Z

.field private volatile hasKindleUnlimited:Z

.field private volatile hasPrime:Z

.field private sharedPreferences:Lcom/amazon/kindle/persistence/AndroidSharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    const-class v0, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefits;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefits;->TAG:Ljava/lang/String;

    const-wide/16 v0, 0x1e0

    .line 45
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefits;->RETRY_REQUEST_DURATION_MINS:Ljava/lang/Long;

    const-wide/32 v0, 0xea60

    .line 46
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefits;->ONE_MIN_IN_MILLISEC:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "LibrarySettings"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAndroidSharedPreferences(Ljava/lang/String;ILandroid/content/Context;)Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefits;->sharedPreferences:Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    return-void
.end method

.method private requestCustomerBenefits()V
    .locals 4

    .line 114
    new-instance v0, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefitsWebRequest;

    iget-object v1, p0, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefits;->applicationManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

    new-instance v2, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefits$1;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefits$1;-><init>(Lcom/amazon/kcp/library/customerbenefits/CustomerBenefits;)V

    const-string v3, "KindleReaderLibraryAndroid"

    invoke-direct {v0, v3, v1, v2}, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefitsWebRequest;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/application/IApplicationManager;Lcom/amazon/kindle/callback/ICallback;)V

    .line 121
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getWebRequestManager()Lcom/amazon/kindle/webservices/IWebRequestManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/webservices/IWebRequestManager;->addWebRequest(Lcom/amazon/kindle/webservices/IWebRequest;)Z

    return-void
.end method


# virtual methods
.method getStartTime(Lorg/json/JSONObject;)J
    .locals 2

    :try_start_0
    const-string/jumbo v0, "startTime"

    .line 181
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method handleCustomerBenefitsResponse(Lcom/amazon/kindle/callback/OperationResult;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/callback/OperationResult<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 128
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/kindle/callback/OperationResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p1}, Lcom/amazon/kindle/callback/OperationResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    const-string/jumbo v0, "programs"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 130
    invoke-static {}, Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;->values()[Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 131
    invoke-virtual {p0, v3, p1}, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefits;->handleProgram(Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;Lorg/json/JSONObject;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 136
    :cond_0
    sget-object p1, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefits;->TAG:Ljava/lang/String;

    const-string v0, "Request failed (e.g. Wifi/Data off) OR invalid response."

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 140
    :catch_0
    sget-object p1, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefits;->TAG:Ljava/lang/String;

    const-string v0, "Invalid json object."

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method handleProgram(Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;Lorg/json/JSONObject;)V
    .locals 3

    if-nez p2, :cond_0

    .line 147
    sget-object p1, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefits;->TAG:Ljava/lang/String;

    const-string p2, "Program benefits are null"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 151
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;->getProgramKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 152
    invoke-virtual {p0, p2, p1}, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefits;->isProgramEnabled(Lorg/json/JSONObject;Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;)Z

    move-result v0

    invoke-virtual {p0, p2}, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefits;->getStartTime(Lorg/json/JSONObject;)J

    move-result-wide v1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefits;->setProgramBenefit(Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;ZJ)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p2, 0x0

    const-wide/16 v0, -0x1

    .line 154
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefits;->setProgramBenefit(Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;ZJ)V

    :goto_0
    return-void
.end method

.method public hasCUSubscription()Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefits;->hasComicsUnlimited:Z

    return v0
.end method

.method public hasKUSubscription()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefits;->hasKindleUnlimited:Z

    return v0
.end method

.method public hasPrimeSubscription()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefits;->hasPrime:Z

    return v0
.end method

.method public initialize(Lcom/amazon/kindle/krx/application/IApplicationManager;)V
    .locals 2

    .line 51
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 52
    iput-object p1, p0, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefits;->applicationManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

    .line 53
    iget-object p1, p0, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefits;->sharedPreferences:Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    sget-object v0, Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;->KINDLE_UNLIMITED:Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;->getProgramPersistKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefits;->hasKindleUnlimited:Z

    .line 54
    iget-object p1, p0, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefits;->sharedPreferences:Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    sget-object v0, Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;->PRIME:Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;->getProgramPersistKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefits;->hasPrime:Z

    .line 55
    iget-object p1, p0, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefits;->sharedPreferences:Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    sget-object v0, Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;->COMICS_UNLIMITED:Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;->getProgramPersistKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefits;->hasComicsUnlimited:Z

    .line 57
    invoke-virtual {p0}, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefits;->requestCustomerBenefitsWithThrottle()V

    return-void
.end method

.method isProgramEnabled(Lorg/json/JSONObject;Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    :try_start_0
    const-string v1, "channels"

    .line 162
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    .line 163
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 164
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2}, Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;->getChannelKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 169
    sget-object p2, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefits;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Program/channel not found. Message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v0
.end method

.method public onAppForegroundEvent(Lcom/amazon/kcp/application/AppForegroundEvent;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 83
    iget-object p1, p0, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefits;->applicationManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/application/IUserAccount;->isAuthenticated()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefits;->requestCustomerBenefitsWithThrottle()V

    :cond_0
    return-void
.end method

.method public onAuthenticationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 5
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 99
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;->LOGIN:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    if-ne v0, v1, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefits;->requestCustomerBenefits()V

    goto :goto_1

    .line 101
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;->LOGOUT:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 102
    iput-boolean p1, p0, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefits;->hasKindleUnlimited:Z

    .line 103
    iput-boolean p1, p0, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefits;->hasPrime:Z

    .line 104
    iput-boolean p1, p0, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefits;->hasComicsUnlimited:Z

    .line 105
    iget-object v0, p0, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefits;->sharedPreferences:Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    const-string v1, "LastRequestTimeStampKey"

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;->remove(Ljava/lang/String;)Z

    .line 106
    invoke-static {}, Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;->values()[Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge p1, v1, :cond_1

    aget-object v2, v0, p1

    .line 107
    iget-object v3, p0, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefits;->sharedPreferences:Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    invoke-virtual {v2}, Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;->getProgramPersistKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;->remove(Ljava/lang/String;)Z

    .line 108
    iget-object v3, p0, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefits;->sharedPreferences:Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    invoke-virtual {v2}, Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;->getProgramStartKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;->remove(Ljava/lang/String;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method requestCustomerBenefitsWithThrottle()V
    .locals 7

    .line 89
    iget-object v0, p0, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefits;->sharedPreferences:Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    const-string v1, "LastRequestTimeStampKey"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefits;->ONE_MIN_IN_MILLISEC:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 91
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    sget-object v0, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefits;->RETRY_REQUEST_DURATION_MINS:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-lez v0, :cond_0

    .line 92
    invoke-direct {p0}, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefits;->requestCustomerBenefits()V

    .line 93
    iget-object v0, p0, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefits;->sharedPreferences:Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;->putLong(Ljava/lang/String;Ljava/lang/Long;)Z

    :cond_0
    return-void
.end method

.method declared-synchronized setProgramBenefit(Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;ZJ)V
    .locals 3

    monitor-enter p0

    .line 191
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting program benefit "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;->getProgramKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    iget-object v0, p0, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefits;->sharedPreferences:Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;->getProgramPersistKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z

    .line 193
    iget-object v0, p0, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefits;->sharedPreferences:Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;->getProgramStartKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;->putLong(Ljava/lang/String;Ljava/lang/Long;)Z

    .line 194
    sget-object p3, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefits$2;->$SwitchMap$com$amazon$kcp$library$customerbenefits$SubscriptionType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x1

    if-eq p1, p3, :cond_2

    const/4 p3, 0x2

    if-eq p1, p3, :cond_1

    const/4 p3, 0x3

    if-eq p1, p3, :cond_0

    goto :goto_0

    .line 202
    :cond_0
    iput-boolean p2, p0, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefits;->hasComicsUnlimited:Z

    goto :goto_0

    .line 199
    :cond_1
    iput-boolean p2, p0, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefits;->hasPrime:Z

    goto :goto_0

    .line 196
    :cond_2
    iput-boolean p2, p0, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefits;->hasKindleUnlimited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
