.class public Lcom/amazon/klo/infocard/KLOInfoCardPlugin;
.super Ljava/lang/Object;
.source "KLOInfoCardPlugin.java"

# interfaces
.implements Lcom/amazon/kindle/krx/plugin/IReaderPlugin;


# annotations
.annotation runtime Lcom/amazon/kindle/krx/plugin/Plugin;
    name = "KLO Card Plugin"
    scope = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Scope;->content:Lcom/amazon/kindle/krx/plugin/Plugin$Scope;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/klo/infocard/KLOInfoCardPlugin$BookOpenListener;
    }
.end annotation


# static fields
.field private static final MAX_WORDS:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "com.amazon.klo.infocard.KLOInfoCardPlugin"


# instance fields
.field private firstTimeShowingCard:Z

.field private metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

.field private provider:Lcom/amazon/kindle/krx/providers/ISortableProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Lcom/amazon/kindle/krx/ui/InfoCardView;",
            "Lcom/amazon/kindle/krx/content/IContentSelection;",
            ">;"
        }
    .end annotation
.end field

.field private sidecarHandler:Lcom/amazon/klo/sidecar/SidecarHandler;

.field private sidecarJson:Lorg/json/JSONObject;

.field private sidecarTerms:Lorg/json/JSONArray;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/amazon/klo/infocard/KLOInfoCardPlugin;->firstTimeShowingCard:Z

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lcom/amazon/klo/infocard/KLOInfoCardPlugin;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/klo/infocard/KLOInfoCardPlugin;)Lcom/amazon/kindle/krx/metrics/IMetricsManager;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/amazon/klo/infocard/KLOInfoCardPlugin;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/klo/infocard/KLOInfoCardPlugin;)Lorg/json/JSONObject;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/amazon/klo/infocard/KLOInfoCardPlugin;->sidecarJson:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic access$202(Lcom/amazon/klo/infocard/KLOInfoCardPlugin;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/amazon/klo/infocard/KLOInfoCardPlugin;->sidecarJson:Lorg/json/JSONObject;

    return-object p1
.end method

.method static synthetic access$300(Lcom/amazon/klo/infocard/KLOInfoCardPlugin;)Lorg/json/JSONArray;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/amazon/klo/infocard/KLOInfoCardPlugin;->sidecarTerms:Lorg/json/JSONArray;

    return-object p0
.end method

.method static synthetic access$302(Lcom/amazon/klo/infocard/KLOInfoCardPlugin;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/amazon/klo/infocard/KLOInfoCardPlugin;->sidecarTerms:Lorg/json/JSONArray;

    return-object p1
.end method

.method static synthetic access$400(Lcom/amazon/klo/infocard/KLOInfoCardPlugin;)Lcom/amazon/klo/sidecar/SidecarHandler;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/amazon/klo/infocard/KLOInfoCardPlugin;->sidecarHandler:Lcom/amazon/klo/sidecar/SidecarHandler;

    return-object p0
.end method

.method static synthetic access$402(Lcom/amazon/klo/infocard/KLOInfoCardPlugin;Lcom/amazon/klo/sidecar/SidecarHandler;)Lcom/amazon/klo/sidecar/SidecarHandler;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/amazon/klo/infocard/KLOInfoCardPlugin;->sidecarHandler:Lcom/amazon/klo/sidecar/SidecarHandler;

    return-object p1
.end method

.method static synthetic access$500(Lcom/amazon/klo/infocard/KLOInfoCardPlugin;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/amazon/klo/infocard/KLOInfoCardPlugin;->firstTimeShowingCard:Z

    return p0
.end method

.method static synthetic access$502(Lcom/amazon/klo/infocard/KLOInfoCardPlugin;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/amazon/klo/infocard/KLOInfoCardPlugin;->firstTimeShowingCard:Z

    return p1
.end method


# virtual methods
.method public getDependecies()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getProvider()Lcom/amazon/kindle/krx/providers/ISortableProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Lcom/amazon/kindle/krx/ui/InfoCardView;",
            "Lcom/amazon/kindle/krx/content/IContentSelection;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/amazon/klo/infocard/KLOInfoCardPlugin;->provider:Lcom/amazon/kindle/krx/providers/ISortableProvider;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/amazon/klo/infocard/KLOInfoCardPlugin$1;

    invoke-direct {v0, p0}, Lcom/amazon/klo/infocard/KLOInfoCardPlugin$1;-><init>(Lcom/amazon/klo/infocard/KLOInfoCardPlugin;)V

    iput-object v0, p0, Lcom/amazon/klo/infocard/KLOInfoCardPlugin;->provider:Lcom/amazon/kindle/krx/providers/ISortableProvider;

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/amazon/klo/infocard/KLOInfoCardPlugin;->provider:Lcom/amazon/kindle/krx/providers/ISortableProvider;

    return-object v0
.end method

.method public initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 3

    .line 143
    invoke-static {p1}, Lcom/amazon/klo/sdk/KRX;->setInstance(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 144
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/klo/infocard/KLOInfoCardPlugin;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    .line 145
    sget-object v1, Lcom/amazon/klo/infocard/KLOInfoCardPlugin;->TAG:Ljava/lang/String;

    const-string v2, "Initializing KLO info card"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/klo/infocard/KLOInfoCardPlugin;->getProvider()Lcom/amazon/kindle/krx/providers/ISortableProvider;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerInfoCardViewProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V

    .line 147
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    new-instance v0, Lcom/amazon/klo/infocard/KLOInfoCardPlugin$BookOpenListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/klo/infocard/KLOInfoCardPlugin$BookOpenListener;-><init>(Lcom/amazon/klo/infocard/KLOInfoCardPlugin;Lcom/amazon/klo/infocard/KLOInfoCardPlugin$1;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->registerReaderNavigationListener(Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;)V

    return-void
.end method
