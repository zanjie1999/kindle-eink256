.class public Lcom/amazon/sitb/android/impl/LoggerManager;
.super Ljava/lang/Object;
.source "LoggerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/sitb/android/impl/LoggerManager$SamplingLogger;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/amazon/sitb/android/impl/LoggerManager;


# instance fields
.field private logger:Lcom/amazon/kindle/krx/logging/ILogger;

.field private final loggers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lcom/amazon/sitb/android/ISamplingLogger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lcom/amazon/sitb/android/impl/LoggerManager;

    invoke-direct {v0}, Lcom/amazon/sitb/android/impl/LoggerManager;-><init>()V

    sput-object v0, Lcom/amazon/sitb/android/impl/LoggerManager;->INSTANCE:Lcom/amazon/sitb/android/impl/LoggerManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/sitb/android/impl/LoggerManager;->loggers:Ljava/util/Map;

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/amazon/sitb/android/impl/LoggerManager;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/sitb/android/impl/LoggerManager;)Lcom/amazon/kindle/krx/logging/ILogger;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/amazon/sitb/android/impl/LoggerManager;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    return-object p0
.end method

.method public static getInstance()Lcom/amazon/sitb/android/impl/LoggerManager;
    .locals 1

    .line 26
    sget-object v0, Lcom/amazon/sitb/android/impl/LoggerManager;->INSTANCE:Lcom/amazon/sitb/android/impl/LoggerManager;

    return-object v0
.end method


# virtual methods
.method public getLogger(Ljava/lang/Class;)Lcom/amazon/sitb/android/ISamplingLogger;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/amazon/sitb/android/impl/LoggerManager;->loggers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/sitb/android/ISamplingLogger;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/amazon/sitb/android/impl/LoggerManager$SamplingLogger;

    invoke-direct {v0, p0, p1}, Lcom/amazon/sitb/android/impl/LoggerManager$SamplingLogger;-><init>(Lcom/amazon/sitb/android/impl/LoggerManager;Ljava/lang/Class;)V

    :cond_0
    return-object v0
.end method

.method public setLogger(Lcom/amazon/kindle/krx/logging/ILogger;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/amazon/sitb/android/impl/LoggerManager;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    return-void
.end method
