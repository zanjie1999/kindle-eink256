.class public Lcom/amazon/bookwizard/ku/PayoffDownloadManager;
.super Ljava/lang/Object;
.source "PayoffDownloadManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.bookwizard.ku.PayoffDownloadManager"


# instance fields
.field private final data:Lcom/amazon/bookwizard/data/DataProvider;

.field private hasDownloadFailed:Z

.field private final requestQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/RequestQueue;Lcom/amazon/bookwizard/data/DataProvider;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/amazon/bookwizard/ku/PayoffDownloadManager;->requestQueue:Lcom/android/volley/RequestQueue;

    .line 45
    iput-object p2, p0, Lcom/amazon/bookwizard/ku/PayoffDownloadManager;->data:Lcom/amazon/bookwizard/data/DataProvider;

    const/4 p1, 0x0

    .line 46
    iput-boolean p1, p0, Lcom/amazon/bookwizard/ku/PayoffDownloadManager;->hasDownloadFailed:Z

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/bookwizard/ku/PayoffDownloadManager;)Lcom/amazon/bookwizard/data/DataProvider;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/amazon/bookwizard/ku/PayoffDownloadManager;->data:Lcom/amazon/bookwizard/data/DataProvider;

    return-object p0
.end method

.method static synthetic access$102(Lcom/amazon/bookwizard/ku/PayoffDownloadManager;Z)Z
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/amazon/bookwizard/ku/PayoffDownloadManager;->hasDownloadFailed:Z

    return p1
.end method


# virtual methods
.method public downloadItems(Lcom/amazon/bookwizard/service/StepFlavor;Lcom/amazon/kindle/krx/application/IDeviceInformation;)V
    .locals 8

    .line 58
    iget-object v0, p0, Lcom/amazon/bookwizard/ku/PayoffDownloadManager;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/DataProvider;->getPayoffRecs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/bookwizard/ku/PayoffDownloadManager;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/DataProvider;->getPayoffFlavor()Lcom/amazon/bookwizard/service/StepFlavor;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 59
    sget-object p2, Lcom/amazon/bookwizard/ku/PayoffDownloadManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not downloading items since they are already present: flavor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/bookwizard/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/amazon/bookwizard/ku/PayoffDownloadManager;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/DataProvider;->clearPayoffs()V

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/amazon/bookwizard/ku/PayoffDownloadManager;->hasDownloadFailed:Z

    .line 65
    iget-object v0, p0, Lcom/amazon/bookwizard/ku/PayoffDownloadManager;->requestQueue:Lcom/android/volley/RequestQueue;

    new-instance v7, Lcom/amazon/bookwizard/service/GetPayoffViewDataRequest;

    iget-object v1, p0, Lcom/amazon/bookwizard/ku/PayoffDownloadManager;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v1}, Lcom/amazon/bookwizard/data/DataProvider;->getPreferredGenres()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    new-instance v5, Lcom/amazon/bookwizard/ku/PayoffDownloadManager$1;

    invoke-direct {v5, p0, p1}, Lcom/amazon/bookwizard/ku/PayoffDownloadManager$1;-><init>(Lcom/amazon/bookwizard/ku/PayoffDownloadManager;Lcom/amazon/bookwizard/service/StepFlavor;)V

    new-instance v6, Lcom/amazon/bookwizard/ku/PayoffDownloadManager$2;

    invoke-direct {v6, p0, p1}, Lcom/amazon/bookwizard/ku/PayoffDownloadManager$2;-><init>(Lcom/amazon/bookwizard/ku/PayoffDownloadManager;Lcom/amazon/bookwizard/service/StepFlavor;)V

    move-object v1, v7

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/amazon/bookwizard/service/GetPayoffViewDataRequest;-><init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Lcom/amazon/bookwizard/service/StepFlavor;Ljava/util/Collection;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-virtual {v0, v7}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method public hasDownloadFailed()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcom/amazon/bookwizard/ku/PayoffDownloadManager;->hasDownloadFailed:Z

    return v0
.end method
