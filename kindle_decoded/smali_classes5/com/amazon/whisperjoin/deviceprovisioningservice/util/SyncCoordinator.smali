.class public abstract Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;
.super Ljava/lang/Object;
.source "SyncCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final mClock:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;

.field protected final mContext:Landroid/content/Context;

.field private final mDataSourceObservable:Lio/reactivex/Observable;

.field protected final mJobInfoProvider:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;

.field protected final mJobScheduler:Landroid/app/job/JobScheduler;

.field protected mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

.field private mSavedData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected final mSharedPreferencesProvider:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;


# direct methods
.method public constructor <init>(Landroid/app/job/JobScheduler;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->mJobScheduler:Landroid/app/job/JobScheduler;

    .line 51
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->mJobInfoProvider:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;

    .line 52
    iput-object p3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->mContext:Landroid/content/Context;

    .line 53
    iput-object p4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->mSharedPreferencesProvider:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;

    .line 54
    iput-object p5, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->mClock:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;

    .line 56
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->getSavedInstanceData()Lio/reactivex/Observable;

    move-result-object p1

    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->getPersistedData()Lio/reactivex/Observable;

    move-result-object p2

    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->getDataFromNetwork()Lio/reactivex/Observable;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lio/reactivex/Observable;->concat(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    const-wide/16 p2, 0x1

    .line 57
    invoke-virtual {p1, p2, p3}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object p1

    .line 58
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->tag()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Creating new subscription to getData request"

    invoke-static {p2, p3}, Lcom/amazon/whisperjoin/util/rx/RxLog;->doOnSubscribe(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/functions/Consumer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 59
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->tag()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Data retrieved"

    invoke-static {p2, p3}, Lcom/amazon/whisperjoin/util/rx/RxLog;->doOnNext(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/functions/Consumer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 60
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->tag()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Data fetch complete"

    invoke-static {p2, p3}, Lcom/amazon/whisperjoin/util/rx/RxLog;->doOnComplete(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/functions/Action;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->doOnComplete(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object p1

    .line 61
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->tag()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Error fetching data"

    invoke-static {p2, p3}, Lcom/amazon/whisperjoin/util/rx/RxLog;->doOnError(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/functions/Consumer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 62
    invoke-virtual {p1}, Lio/reactivex/Observable;->share()Lio/reactivex/Observable;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->mDataSourceObservable:Lio/reactivex/Observable;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;)Ljava/lang/Object;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->mSavedData:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$002(Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->mSavedData:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;Ljava/lang/Object;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;)Z
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->isDataValid(Ljava/lang/Object;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;)Z

    move-result p0

    return p0
.end method

.method private getPersistedData()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 119
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator$2;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator$2;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;)V

    invoke-static {v0}, Lio/reactivex/Observable;->defer(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 136
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->tag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Trying to get persisted data"

    invoke-static {v1, v2}, Lcom/amazon/whisperjoin/util/rx/RxLog;->doOnSubscribe(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/functions/Consumer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method private getSavedInstanceData()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 99
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator$1;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator$1;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;)V

    invoke-static {v0}, Lio/reactivex/Observable;->defer(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 109
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->tag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Trying to get data from saved instances"

    invoke-static {v1, v2}, Lcom/amazon/whisperjoin/util/rx/RxLog;->doOnSubscribe(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/functions/Consumer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method private isDataValid(Ljava/lang/Object;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->tag()Ljava/lang/String;

    move-result-object p1

    const-string p2, "data is null"

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    if-nez p2, :cond_1

    .line 231
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->tag()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Client data is null"

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 233
    :cond_1
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->isDataInvalid(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 234
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->tag()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Data is expired"

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 237
    :cond_2
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    invoke-virtual {p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 238
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->tag()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Policy not for current provisioner client"

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method protected abstract fetchDataFromNetwork()Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "TT;>;"
        }
    .end annotation
.end method

.method public getData()Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "TT;>;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->tag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getData"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->mDataSourceObservable:Lio/reactivex/Observable;

    invoke-virtual {v0}, Lio/reactivex/Observable;->firstOrError()Lio/reactivex/Single;

    move-result-object v0

    return-object v0

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class not yet initialized with client data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getDataFromNetwork()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 143
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator$3;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator$3;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;)V

    invoke-static {v0}, Lio/reactivex/Observable;->defer(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 158
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->tag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Trying to get data from network"

    invoke-static {v1, v2}, Lcom/amazon/whisperjoin/util/rx/RxLog;->doOnSubscribe(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/functions/Consumer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getSharedPreferences()Landroid/content/SharedPreferences;
.end method

.method public initializeWithProvisionerClientData(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 76
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    if-nez v0, :cond_0

    .line 77
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 79
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->tag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Class already initialized with different clientData"

    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->tag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Class already initialized"

    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    .line 73
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "clientData can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract isDataInvalid(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method protected abstract onDataFetchedFromNetwork(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected abstract onPersistedDataFetched(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected abstract persistDataToSharedPreferences(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected persistProvisionerClientData(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;)V
    .locals 1

    .line 206
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->writeToSharedPreferences(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method protected abstract readPersistedDataFromSharedPreferences()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected readPersistedProvisionerClientData()Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;
    .locals 1

    .line 210
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->readFromSharedPreferences(Landroid/content/SharedPreferences;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    move-result-object v0

    return-object v0
.end method

.method protected abstract tag()Ljava/lang/String;
.end method
