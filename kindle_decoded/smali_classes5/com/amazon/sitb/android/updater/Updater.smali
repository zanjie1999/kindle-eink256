.class public Lcom/amazon/sitb/android/updater/Updater;
.super Ljava/lang/Object;
.source "Updater.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/amazon/sitb/android/HasExpiration;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final log:Lcom/amazon/sitb/android/ISamplingLogger;


# instance fields
.field private final cache:Lcom/amazon/sitb/android/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/sitb/android/cache/Cache<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final connectivityService:Lcom/amazon/sitb/android/services/ConnectivityService;

.field private final requestService:Lcom/amazon/sitb/android/updater/RequestService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    invoke-static {}, Lcom/amazon/sitb/android/impl/LoggerManager;->getInstance()Lcom/amazon/sitb/android/impl/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/amazon/sitb/android/updater/Updater;

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/impl/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v0

    sput-object v0, Lcom/amazon/sitb/android/updater/Updater;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/sitb/android/cache/Cache;Lcom/amazon/sitb/android/updater/RequestService;Lcom/amazon/sitb/android/services/ConnectivityService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/sitb/android/cache/Cache<",
            "TT;>;",
            "Lcom/amazon/sitb/android/updater/RequestService;",
            "Lcom/amazon/sitb/android/services/ConnectivityService;",
            ")V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/amazon/sitb/android/updater/Updater;->cache:Lcom/amazon/sitb/android/cache/Cache;

    .line 26
    iput-object p2, p0, Lcom/amazon/sitb/android/updater/Updater;->requestService:Lcom/amazon/sitb/android/updater/RequestService;

    .line 27
    iput-object p3, p0, Lcom/amazon/sitb/android/updater/Updater;->connectivityService:Lcom/amazon/sitb/android/services/ConnectivityService;

    return-void
.end method


# virtual methods
.method public ensureRecent(Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    .line 32
    invoke-virtual {p0, p1, v0}, Lcom/amazon/sitb/android/updater/Updater;->ensureRecent(Ljava/lang/String;I)V

    return-void
.end method

.method public ensureRecent(Ljava/lang/String;I)V
    .locals 4

    .line 37
    iget-object v0, p0, Lcom/amazon/sitb/android/updater/Updater;->connectivityService:Lcom/amazon/sitb/android/services/ConnectivityService;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/services/ConnectivityService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/amazon/sitb/android/updater/Updater;->cache:Lcom/amazon/sitb/android/cache/Cache;

    invoke-virtual {v0, p1}, Lcom/amazon/sitb/android/cache/Cache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/sitb/android/HasExpiration;

    if-eqz v0, :cond_0

    .line 40
    invoke-interface {v0}, Lcom/amazon/sitb/android/HasExpiration;->shouldUpdate()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 42
    :cond_0
    sget-object v1, Lcom/amazon/sitb/android/updater/Updater;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Making request to update "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/amazon/sitb/android/updater/Updater;->requestService:Lcom/amazon/sitb/android/updater/RequestService;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/sitb/android/updater/RequestService;->makeRequest(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method
