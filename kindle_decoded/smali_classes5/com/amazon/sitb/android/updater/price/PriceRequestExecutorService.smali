.class public Lcom/amazon/sitb/android/updater/price/PriceRequestExecutorService;
.super Ljava/lang/Object;
.source "PriceRequestExecutorService.java"

# interfaces
.implements Lcom/amazon/sitb/android/updater/RequestExecutorService;


# static fields
.field private static final log:Lcom/amazon/sitb/android/ISamplingLogger;


# instance fields
.field private isGlideWeblabEnabled:Z

.field private messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private storeActions:Lcom/amazon/sitb/android/IStoreActions;

.field private taskExecutor:Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    invoke-static {}, Lcom/amazon/sitb/android/impl/LoggerManager;->getInstance()Lcom/amazon/sitb/android/impl/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/amazon/sitb/android/updater/price/PriceRequestExecutorService;

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/impl/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v0

    sput-object v0, Lcom/amazon/sitb/android/updater/price/PriceRequestExecutorService;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/sitb/android/IStoreActions;Lcom/amazon/kindle/krx/events/IMessageQueue;Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;Z)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/amazon/sitb/android/updater/price/PriceRequestExecutorService;->storeActions:Lcom/amazon/sitb/android/IStoreActions;

    .line 32
    iput-object p2, p0, Lcom/amazon/sitb/android/updater/price/PriceRequestExecutorService;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 33
    iput-object p3, p0, Lcom/amazon/sitb/android/updater/price/PriceRequestExecutorService;->taskExecutor:Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;

    .line 34
    iput-boolean p4, p0, Lcom/amazon/sitb/android/updater/price/PriceRequestExecutorService;->isGlideWeblabEnabled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/sitb/android/updater/price/PriceRequestExecutorService;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/amazon/sitb/android/updater/price/PriceRequestExecutorService;->isGlideWeblabEnabled:Z

    return p0
.end method

.method static synthetic access$100()Lcom/amazon/sitb/android/ISamplingLogger;
    .locals 1

    .line 21
    sget-object v0, Lcom/amazon/sitb/android/updater/price/PriceRequestExecutorService;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/sitb/android/updater/price/PriceRequestExecutorService;)Lcom/amazon/sitb/android/IStoreActions;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/amazon/sitb/android/updater/price/PriceRequestExecutorService;->storeActions:Lcom/amazon/sitb/android/IStoreActions;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/sitb/android/updater/price/PriceRequestExecutorService;)Lcom/amazon/kindle/krx/events/IMessageQueue;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/amazon/sitb/android/updater/price/PriceRequestExecutorService;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-object p0
.end method


# virtual methods
.method public execute(Ljava/lang/String;ILcom/amazon/sitb/android/updater/RequestExecutorService$ResponseHandler;)V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/amazon/sitb/android/updater/price/PriceRequestExecutorService;->taskExecutor:Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;

    new-instance v1, Lcom/amazon/sitb/android/updater/price/PriceRequestExecutorService$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/amazon/sitb/android/updater/price/PriceRequestExecutorService$1;-><init>(Lcom/amazon/sitb/android/updater/price/PriceRequestExecutorService;Ljava/lang/String;ILcom/amazon/sitb/android/updater/RequestExecutorService$ResponseHandler;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;->submit(Lcom/amazon/kindle/krx/application/IAsyncTask;)Ljava/util/concurrent/Future;

    return-void
.end method
