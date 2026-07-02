.class public Lcom/amazon/whisperjoin/provisionerSDK/radios/RetryHandler;
.super Ljava/lang/Object;
.source "RetryHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.whisperjoin.provisionerSDK.radios.RetryHandler"


# instance fields
.field private final mAction:Lcom/amazon/whisperjoin/provisionerSDK/radios/PromiseFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/provisionerSDK/radios/PromiseFactory<",
            "TTResult;>;"
        }
    .end annotation
.end field

.field private final mExectuorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whisperjoin/provisionerSDK/radios/PromiseFactory;Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/provisionerSDK/radios/PromiseFactory<",
            "TTResult;>;",
            "Ljava/util/concurrent/ExecutorService;",
            ")V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 31
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/RetryHandler;->mAction:Lcom/amazon/whisperjoin/provisionerSDK/radios/PromiseFactory;

    .line 32
    iput-object p2, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/RetryHandler;->mExectuorService:Ljava/util/concurrent/ExecutorService;

    return-void

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "executorService can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "action can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/amazon/whisperjoin/provisionerSDK/radios/RetryHandler;)Lcom/amazon/whisperjoin/provisionerSDK/radios/PromiseFactory;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/RetryHandler;->mAction:Lcom/amazon/whisperjoin/provisionerSDK/radios/PromiseFactory;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 16
    sget-object v0, Lcom/amazon/whisperjoin/provisionerSDK/radios/RetryHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public startAttempts(JLjava/util/concurrent/TimeUnit;JLjava/lang/String;)Ljava/util/concurrent/Future;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "J",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future<",
            "TTResult;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2

    cmp-long v2, p4, v0

    if-ltz v2, :cond_1

    if-eqz p6, :cond_0

    .line 46
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 50
    iget-object v1, v0, Lcom/amazon/whisperjoin/provisionerSDK/radios/RetryHandler;->mExectuorService:Ljava/util/concurrent/ExecutorService;

    new-instance v10, Lcom/amazon/whisperjoin/provisionerSDK/radios/RetryHandler$1;

    move-object v2, v10

    move-object v3, p0

    move-wide v4, p4

    move-wide v6, p1

    move-object v8, p3

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Lcom/amazon/whisperjoin/provisionerSDK/radios/RetryHandler$1;-><init>(Lcom/amazon/whisperjoin/provisionerSDK/radios/RetryHandler;JJLjava/util/concurrent/TimeUnit;Ljava/lang/String;)V

    invoke-interface {v1, v10}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    return-object v1

    :cond_0
    move-object v0, p0

    .line 47
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "actionName must not be null or empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move-object v0, p0

    .line 44
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxRetry must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    move-object v0, p0

    .line 41
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "timeout must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
