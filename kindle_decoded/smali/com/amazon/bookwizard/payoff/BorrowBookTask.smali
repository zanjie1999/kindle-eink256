.class public Lcom/amazon/bookwizard/payoff/BorrowBookTask;
.super Landroid/os/AsyncTask;
.source "BorrowBookTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_SLEEP_MS:J

.field private static final INITIAL_WAIT_MS:J

.field private static final MAX_REQUEST_ATTEMPTS:I = 0x3

.field private static final MAX_SLEEP_MS:J

.field private static final MAX_TIMEOUT:J

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private attemptCount:I

.field private currentWaitTime:I

.field private final di:Lcom/amazon/kindle/krx/application/IDeviceInformation;

.field private final downloadRunnable:Ljava/lang/Runnable;

.field private final handler:Landroid/os/Handler;

.field private final library:Lcom/amazon/kindle/krx/library/ILibraryManager;

.field private final rec:Lcom/amazon/bookwizard/service/PayoffRec;

.field private final store:Lcom/amazon/kindle/krx/store/IStoreManager;

.field private final type:Lcom/amazon/bookwizard/glide/ActionType;

.field private final weblabmanager:Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 55
    const-class v0, Lcom/amazon/bookwizard/payoff/BorrowBookTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->TAG:Ljava/lang/String;

    .line 56
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->INITIAL_WAIT_MS:J

    .line 57
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->DEFAULT_SLEEP_MS:J

    .line 58
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->MAX_SLEEP_MS:J

    .line 59
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->MAX_TIMEOUT:J

    return-void
.end method

.method public constructor <init>(Lcom/amazon/bookwizard/service/PayoffRec;Lcom/amazon/bookwizard/glide/ActionType;)V
    .locals 1

    .line 123
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->handler:Landroid/os/Handler;

    .line 70
    new-instance v0, Lcom/amazon/bookwizard/payoff/BorrowBookTask$1;

    invoke-direct {v0, p0}, Lcom/amazon/bookwizard/payoff/BorrowBookTask$1;-><init>(Lcom/amazon/bookwizard/payoff/BorrowBookTask;)V

    iput-object v0, p0, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->downloadRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 112
    iput v0, p0, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->currentWaitTime:I

    const/4 v0, 0x1

    .line 113
    iput v0, p0, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->attemptCount:I

    .line 124
    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->getSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDeviceInformation()Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->di:Lcom/amazon/kindle/krx/application/IDeviceInformation;

    .line 125
    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->getSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getStoreManager()Lcom/amazon/kindle/krx/store/IStoreManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->store:Lcom/amazon/kindle/krx/store/IStoreManager;

    .line 126
    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->getSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->library:Lcom/amazon/kindle/krx/library/ILibraryManager;

    .line 127
    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->getSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getWeblabManager()Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->weblabmanager:Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    .line 128
    iput-object p1, p0, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->rec:Lcom/amazon/bookwizard/service/PayoffRec;

    .line 129
    iput-object p2, p0, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->type:Lcom/amazon/bookwizard/glide/ActionType;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/bookwizard/payoff/BorrowBookTask;)Lcom/amazon/bookwizard/service/PayoffRec;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->rec:Lcom/amazon/bookwizard/service/PayoffRec;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/bookwizard/payoff/BorrowBookTask;)I
    .locals 0

    .line 54
    iget p0, p0, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->currentWaitTime:I

    return p0
.end method

.method static synthetic access$1000(Lcom/amazon/bookwizard/payoff/BorrowBookTask;)Landroid/os/Handler;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$102(Lcom/amazon/bookwizard/payoff/BorrowBookTask;I)I
    .locals 0

    .line 54
    iput p1, p0, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->currentWaitTime:I

    return p1
.end method

.method static synthetic access$200()J
    .locals 2

    .line 54
    sget-wide v0, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->MAX_TIMEOUT:J

    return-wide v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 54
    sget-object v0, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/amazon/bookwizard/payoff/BorrowBookTask;)Lcom/amazon/bookwizard/glide/ActionType;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->type:Lcom/amazon/bookwizard/glide/ActionType;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/bookwizard/payoff/BorrowBookTask;)Lcom/amazon/kindle/krx/library/ILibraryManager;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->library:Lcom/amazon/kindle/krx/library/ILibraryManager;

    return-object p0
.end method

.method static synthetic access$600()J
    .locals 2

    .line 54
    sget-wide v0, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->DEFAULT_SLEEP_MS:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/amazon/bookwizard/payoff/BorrowBookTask;)I
    .locals 0

    .line 54
    iget p0, p0, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->attemptCount:I

    return p0
.end method

.method static synthetic access$708(Lcom/amazon/bookwizard/payoff/BorrowBookTask;)I
    .locals 2

    .line 54
    iget v0, p0, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->attemptCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->attemptCount:I

    return v0
.end method

.method static synthetic access$800()J
    .locals 2

    .line 54
    sget-wide v0, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->MAX_SLEEP_MS:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/amazon/bookwizard/payoff/BorrowBookTask;)Lcom/amazon/kindle/krx/store/IStoreManager;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->store:Lcom/amazon/kindle/krx/store/IStoreManager;

    return-object p0
.end method

.method private consumeAction(Lcom/android/volley/RequestQueue;Lcom/amazon/bookwizard/glide/Action;)Lcom/amazon/bookwizard/glide/BuyRequest$BuyResponse;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_0

    .line 182
    sget-object p1, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->TAG:Ljava/lang/String;

    new-array p2, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->rec:Lcom/amazon/bookwizard/service/PayoffRec;

    invoke-virtual {v1}, Lcom/amazon/bookwizard/service/PayoffRec;->getAsin()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v2

    const-string v1, "Cannot make request for null action: %s"

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/bookwizard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_2

    .line 188
    :try_start_0
    invoke-static {}, Lcom/android/volley/toolbox/RequestFuture;->newFuture()Lcom/android/volley/toolbox/RequestFuture;

    move-result-object v4

    .line 189
    new-instance v5, Lcom/amazon/bookwizard/glide/BuyRequest;

    iget-object v6, p0, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->di:Lcom/amazon/kindle/krx/application/IDeviceInformation;

    iget-object v7, p0, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->rec:Lcom/amazon/bookwizard/service/PayoffRec;

    invoke-virtual {v7}, Lcom/amazon/bookwizard/service/PayoffRec;->getAsin()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7, p2, v4}, Lcom/amazon/bookwizard/glide/BuyRequest;-><init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Ljava/lang/String;Lcom/amazon/bookwizard/glide/Action;Lcom/android/volley/toolbox/RequestFuture;)V

    invoke-virtual {p1, v5}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 190
    invoke-virtual {v4}, Lcom/android/volley/toolbox/RequestFuture;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/bookwizard/glide/BuyRequest$BuyResponse;

    if-eqz v4, :cond_1

    .line 191
    invoke-virtual {v4}, Lcom/amazon/bookwizard/glide/BuyRequest$BuyResponse;->isSuccess()Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v4

    .line 194
    :cond_1
    sget-object v4, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->TAG:Ljava/lang/String;

    const-string v5, "[GlideBuyRequest] #%d for %s not valid"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    iget-object v7, p0, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->rec:Lcom/amazon/bookwizard/service/PayoffRec;

    invoke-virtual {v7}, Lcom/amazon/bookwizard/service/PayoffRec;->getAsin()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/amazon/bookwizard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 201
    sget-object v5, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->TAG:Ljava/lang/String;

    const-string v6, "[GlideBuyRequest] Something happened"

    invoke-static {v5, v6, v4}, Lcom/amazon/bookwizard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v4

    .line 199
    sget-object v5, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->TAG:Ljava/lang/String;

    const-string v6, "[GlideBuyRequest] Execution exception"

    invoke-static {v5, v6, v4}, Lcom/amazon/bookwizard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v4

    .line 197
    sget-object v5, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->TAG:Ljava/lang/String;

    const-string v6, "[GlideBuyRequest] Interrupted"

    invoke-static {v5, v6, v4}, Lcom/amazon/bookwizard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 204
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "BuyResponseError."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->type:Lcom/amazon/bookwizard/glide/ActionType;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GlideOperation"

    invoke-static {p2, p1}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private consumeBiFrostOfferAction(Lcom/android/volley/RequestQueue;Lcom/amazon/bookwizard/bifrost/PersonalizedAction;)Lcom/amazon/bookwizard/bifrost/BifrostAcquisitionRequest$AcquisitionResponse;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_0

    .line 253
    sget-object p1, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->TAG:Ljava/lang/String;

    new-array p2, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->rec:Lcom/amazon/bookwizard/service/PayoffRec;

    invoke-virtual {v1}, Lcom/amazon/bookwizard/service/PayoffRec;->getAsin()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v2

    const-string v1, "Cannot make request for null action: %s"

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/bookwizard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_2

    .line 259
    :try_start_0
    invoke-static {}, Lcom/android/volley/toolbox/RequestFuture;->newFuture()Lcom/android/volley/toolbox/RequestFuture;

    move-result-object v4

    .line 260
    new-instance v5, Lcom/amazon/bookwizard/bifrost/BifrostAcquisitionRequest;

    invoke-virtual {p2}, Lcom/amazon/bookwizard/bifrost/PersonalizedAction;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/amazon/bookwizard/bifrost/PersonalizedAction;->getCsrfToken()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7, v4}, Lcom/amazon/bookwizard/bifrost/BifrostAcquisitionRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/toolbox/RequestFuture;)V

    invoke-virtual {p1, v5}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 261
    invoke-virtual {v4}, Lcom/android/volley/toolbox/RequestFuture;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/bookwizard/bifrost/BifrostAcquisitionRequest$AcquisitionResponse;

    if-eqz v4, :cond_1

    .line 262
    invoke-virtual {v4}, Lcom/amazon/bookwizard/bifrost/BifrostAcquisitionRequest$AcquisitionResponse;->isSuccess()Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v4

    .line 265
    :cond_1
    sget-object v4, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->TAG:Ljava/lang/String;

    const-string v5, "[GlideBuyRequest] #%d for %s not valid"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    iget-object v7, p0, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->rec:Lcom/amazon/bookwizard/service/PayoffRec;

    invoke-virtual {v7}, Lcom/amazon/bookwizard/service/PayoffRec;->getAsin()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/amazon/bookwizard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 272
    sget-object v5, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->TAG:Ljava/lang/String;

    const-string v6, "[GlideBuyRequest] Something happened"

    invoke-static {v5, v6, v4}, Lcom/amazon/bookwizard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v4

    .line 270
    sget-object v5, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->TAG:Ljava/lang/String;

    const-string v6, "[GlideBuyRequest] Execution exception"

    invoke-static {v5, v6, v4}, Lcom/amazon/bookwizard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v4

    .line 268
    sget-object v5, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->TAG:Ljava/lang/String;

    const-string v6, "[GlideBuyRequest] Interrupted"

    invoke-static {v5, v6, v4}, Lcom/amazon/bookwizard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 275
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "BuyResponseError."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->type:Lcom/amazon/bookwizard/glide/ActionType;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BifrostOperation"

    invoke-static {p2, p1}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getAction(Lcom/android/volley/RequestQueue;)Lcom/amazon/bookwizard/glide/Action;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ge v1, v2, :cond_2

    .line 219
    :try_start_0
    invoke-static {}, Lcom/android/volley/toolbox/RequestFuture;->newFuture()Lcom/android/volley/toolbox/RequestFuture;

    move-result-object v2

    .line 220
    new-instance v4, Lcom/amazon/bookwizard/glide/GetOfferRequest;

    iget-object v5, p0, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->di:Lcom/amazon/kindle/krx/application/IDeviceInformation;

    iget-object v6, p0, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->rec:Lcom/amazon/bookwizard/service/PayoffRec;

    invoke-virtual {v6}, Lcom/amazon/bookwizard/service/PayoffRec;->getAsin()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v2}, Lcom/amazon/bookwizard/glide/GetOfferRequest;-><init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Ljava/lang/String;Lcom/android/volley/toolbox/RequestFuture;)V

    invoke-virtual {p1, v4}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 221
    invoke-virtual {v2}, Lcom/android/volley/toolbox/RequestFuture;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/bookwizard/glide/AsinOffer;

    if-eqz v2, :cond_0

    .line 222
    iget-object v3, p0, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->type:Lcom/amazon/bookwizard/glide/ActionType;

    invoke-virtual {v2, v3}, Lcom/amazon/bookwizard/glide/AsinOffer;->getAction(Lcom/amazon/bookwizard/glide/ActionType;)Lcom/amazon/bookwizard/glide/Action;

    move-result-object v3

    :cond_0
    if-eqz v3, :cond_1

    return-object v3

    .line 226
    :cond_1
    sget-object v2, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->TAG:Ljava/lang/String;

    const-string v3, "[GetOfferRequest] #%d for %s not valid"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    iget-object v5, p0, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->rec:Lcom/amazon/bookwizard/service/PayoffRec;

    invoke-virtual {v5}, Lcom/amazon/bookwizard/service/PayoffRec;->getAsin()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/bookwizard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 233
    sget-object v3, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->TAG:Ljava/lang/String;

    const-string v4, "[GetOfferRequest] Something bad happened"

    invoke-static {v3, v4, v2}, Lcom/amazon/bookwizard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v2

    .line 231
    sget-object v3, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->TAG:Ljava/lang/String;

    const-string v4, "[GetOfferRequest] Execution exception"

    invoke-static {v3, v4, v2}, Lcom/amazon/bookwizard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v2

    .line 229
    sget-object v3, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->TAG:Ljava/lang/String;

    const-string v4, "[GetOfferRequest] Interrupted"

    invoke-static {v3, v4, v2}, Lcom/amazon/bookwizard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 236
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "GetOfferError."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->type:Lcom/amazon/bookwizard/glide/ActionType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GlideOperation"

    invoke-static {v0, p1}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private getBiFrostOffertAction(Lcom/android/volley/RequestQueue;)Lcom/amazon/bookwizard/bifrost/PersonalizedAction;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ge v1, v2, :cond_2

    .line 290
    :try_start_0
    invoke-static {}, Lcom/android/volley/toolbox/RequestFuture;->newFuture()Lcom/android/volley/toolbox/RequestFuture;

    move-result-object v2

    .line 291
    new-instance v4, Lcom/amazon/bookwizard/bifrost/BifrostOfferRequest;

    iget-object v5, p0, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->rec:Lcom/amazon/bookwizard/service/PayoffRec;

    invoke-virtual {v5}, Lcom/amazon/bookwizard/service/PayoffRec;->getAsin()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lcom/amazon/bookwizard/bifrost/BifrostOfferRequest;-><init>(Ljava/lang/String;Lcom/android/volley/toolbox/RequestFuture;)V

    invoke-virtual {p1, v4}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 292
    invoke-virtual {v2}, Lcom/android/volley/toolbox/RequestFuture;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/bookwizard/bifrost/BifrostOffer;

    if-eqz v2, :cond_0

    .line 293
    iget-object v3, p0, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->type:Lcom/amazon/bookwizard/glide/ActionType;

    invoke-virtual {v2, v3}, Lcom/amazon/bookwizard/bifrost/BifrostOffer;->getAction(Lcom/amazon/bookwizard/glide/ActionType;)Lcom/amazon/bookwizard/bifrost/PersonalizedAction;

    move-result-object v3

    :cond_0
    if-eqz v3, :cond_1

    return-object v3

    .line 297
    :cond_1
    sget-object v2, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->TAG:Ljava/lang/String;

    const-string v3, "[GetOfferRequest] #%d for %s not valid"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    iget-object v5, p0, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->rec:Lcom/amazon/bookwizard/service/PayoffRec;

    invoke-virtual {v5}, Lcom/amazon/bookwizard/service/PayoffRec;->getAsin()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/bookwizard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 304
    sget-object v3, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->TAG:Ljava/lang/String;

    const-string v4, "[GetOfferRequest] Something bad happened"

    invoke-static {v3, v4, v2}, Lcom/amazon/bookwizard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v2

    .line 302
    sget-object v3, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->TAG:Ljava/lang/String;

    const-string v4, "[GetOfferRequest] Execution exception"

    invoke-static {v3, v4, v2}, Lcom/amazon/bookwizard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v2

    .line 300
    sget-object v3, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->TAG:Ljava/lang/String;

    const-string v4, "[GetOfferRequest] Interrupted"

    invoke-static {v3, v4, v2}, Lcom/amazon/bookwizard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 307
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "GetOfferError."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->type:Lcom/amazon/bookwizard/glide/ActionType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BifrostOperation"

    invoke-static {v0, p1}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private useBifrostApi()Z
    .locals 5

    .line 312
    iget-object v0, p0, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->weblabmanager:Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    const-string v1, "BW_ANDROID_GETOFFER_GRUPA_DEPRECATION_376617"

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;->getWeblab(Ljava/lang/String;)Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 314
    sget-object v0, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->TAG:Ljava/lang/String;

    const-string v1, "Bifrost weblab is null, will fall back to to gurupa api"

    invoke-static {v0, v1}, Lcom/amazon/bookwizard/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 317
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getTreatmentAndRecordTrigger()Ljava/lang/String;

    move-result-object v0

    .line 318
    sget-object v3, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->TAG:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v2

    const/4 v1, 0x1

    aput-object v0, v4, v1

    const-string v1, "Treatement for %s is %s"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/amazon/bookwizard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "T1"

    .line 320
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 54
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    .line 137
    iget-object p1, p0, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->type:Lcom/amazon/bookwizard/glide/ActionType;

    const/4 v0, 0x0

    const-string v1, "GlideOperation"

    if-nez p1, :cond_0

    .line 138
    sget-object p1, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->TAG:Ljava/lang/String;

    const-string v2, "Type cannot be null for borrow task"

    invoke-static {p1, v2}, Lcom/amazon/bookwizard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "BorrowMissingType"

    .line 139
    invoke-static {v1, p1}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 143
    :cond_0
    new-instance p1, Lcom/android/volley/toolbox/BasicNetwork;

    new-instance v2, Lcom/amazon/bookwizard/http/AuthenticationAwareHurlStack;

    invoke-static {}, Lcom/amazon/bookwizard/util/BookWizardUtil;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/amazon/identity/auth/device/api/AuthenticationType;->OAuth:Lcom/amazon/identity/auth/device/api/AuthenticationType;

    invoke-direct {v2, v3, v4}, Lcom/amazon/bookwizard/http/AuthenticationAwareHurlStack;-><init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/api/AuthenticationType;)V

    invoke-direct {p1, v2}, Lcom/android/volley/toolbox/BasicNetwork;-><init>(Lcom/android/volley/toolbox/HttpStack;)V

    .line 144
    new-instance v2, Lcom/android/volley/RequestQueue;

    new-instance v3, Lcom/android/volley/toolbox/NoCache;

    invoke-direct {v3}, Lcom/android/volley/toolbox/NoCache;-><init>()V

    const/4 v4, 0x1

    invoke-direct {v2, v3, p1, v4}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;I)V

    .line 145
    invoke-virtual {v2}, Lcom/android/volley/RequestQueue;->start()V

    .line 146
    invoke-direct {p0}, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->useBifrostApi()Z

    move-result p1

    const/4 v3, 0x0

    const-string v4, "BorrowSuccessRate."

    const-string v5, "BorrowAttempt."

    if-eqz p1, :cond_2

    .line 147
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->type:Lcom/amazon/bookwizard/glide/ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BifrostOperation"

    invoke-static {v1, p1}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-direct {p0, v2}, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->getBiFrostOffertAction(Lcom/android/volley/RequestQueue;)Lcom/amazon/bookwizard/bifrost/PersonalizedAction;

    move-result-object p1

    .line 149
    invoke-direct {p0, v2, p1}, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->consumeBiFrostOfferAction(Lcom/android/volley/RequestQueue;Lcom/amazon/bookwizard/bifrost/PersonalizedAction;)Lcom/amazon/bookwizard/bifrost/BifrostAcquisitionRequest$AcquisitionResponse;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 150
    invoke-virtual {p1}, Lcom/amazon/bookwizard/bifrost/BifrostAcquisitionRequest$AcquisitionResponse;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 151
    iget-object p1, p0, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->downloadRunnable:Ljava/lang/Runnable;

    sget-wide v3, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->INITIAL_WAIT_MS:J

    invoke-virtual {p1, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 153
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->type:Lcom/amazon/bookwizard/glide/ActionType;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v3}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 156
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->type:Lcom/amazon/bookwizard/glide/ActionType;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-direct {p0, v2}, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->getAction(Lcom/android/volley/RequestQueue;)Lcom/amazon/bookwizard/glide/Action;

    move-result-object p1

    .line 158
    invoke-direct {p0, v2, p1}, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->consumeAction(Lcom/android/volley/RequestQueue;Lcom/amazon/bookwizard/glide/Action;)Lcom/amazon/bookwizard/glide/BuyRequest$BuyResponse;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 159
    invoke-virtual {p1}, Lcom/amazon/bookwizard/glide/BuyRequest$BuyResponse;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 160
    iget-object p1, p0, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->downloadRunnable:Ljava/lang/Runnable;

    sget-wide v3, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->INITIAL_WAIT_MS:J

    invoke-virtual {p1, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 162
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->type:Lcom/amazon/bookwizard/glide/ActionType;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v3}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;I)V

    .line 166
    :goto_0
    invoke-virtual {v2}, Lcom/android/volley/RequestQueue;->stop()V

    return-object v0
.end method
