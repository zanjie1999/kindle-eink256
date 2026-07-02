.class public Lcom/amazon/sitb/android/purchase/PurchaseTaskFactory;
.super Ljava/lang/Object;
.source "PurchaseTaskFactory.java"


# instance fields
.field private final connectivityHandler:Lcom/amazon/sitb/android/ConnectivityHandler;

.field private final dialogService:Lcom/amazon/sitb/android/services/DialogService;

.field private final isGlideWeblabEnabled:Z

.field private final messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private final metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

.field private final purchaseDownloadService:Lcom/amazon/sitb/android/purchase/PurchaseDownloadService;

.field private final purchaseOwnershipService:Lcom/amazon/sitb/android/purchase/PurchaseOwnershipService;

.field private final reftagBundleService:Lcom/amazon/sitb/android/reftag/ReftagBundleService;

.field private final store:Lcom/amazon/sitb/android/IStoreActions;


# direct methods
.method public constructor <init>(Lcom/amazon/sitb/android/IStoreActions;Lcom/amazon/sitb/android/services/DialogService;Lcom/amazon/sitb/android/metrics/MetricsService;Lcom/amazon/sitb/android/reftag/ReftagBundleService;Lcom/amazon/sitb/android/purchase/PurchaseOwnershipService;Lcom/amazon/sitb/android/purchase/PurchaseDownloadService;Lcom/amazon/kindle/krx/events/IMessageQueue;Lcom/amazon/sitb/android/ConnectivityHandler;Z)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/amazon/sitb/android/purchase/PurchaseTaskFactory;->store:Lcom/amazon/sitb/android/IStoreActions;

    .line 43
    iput-object p2, p0, Lcom/amazon/sitb/android/purchase/PurchaseTaskFactory;->dialogService:Lcom/amazon/sitb/android/services/DialogService;

    .line 44
    iput-object p3, p0, Lcom/amazon/sitb/android/purchase/PurchaseTaskFactory;->metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

    .line 45
    iput-object p4, p0, Lcom/amazon/sitb/android/purchase/PurchaseTaskFactory;->reftagBundleService:Lcom/amazon/sitb/android/reftag/ReftagBundleService;

    .line 46
    iput-object p5, p0, Lcom/amazon/sitb/android/purchase/PurchaseTaskFactory;->purchaseOwnershipService:Lcom/amazon/sitb/android/purchase/PurchaseOwnershipService;

    .line 47
    iput-object p6, p0, Lcom/amazon/sitb/android/purchase/PurchaseTaskFactory;->purchaseDownloadService:Lcom/amazon/sitb/android/purchase/PurchaseDownloadService;

    .line 48
    iput-object p7, p0, Lcom/amazon/sitb/android/purchase/PurchaseTaskFactory;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 49
    iput-object p8, p0, Lcom/amazon/sitb/android/purchase/PurchaseTaskFactory;->connectivityHandler:Lcom/amazon/sitb/android/ConnectivityHandler;

    .line 50
    iput-boolean p9, p0, Lcom/amazon/sitb/android/purchase/PurchaseTaskFactory;->isGlideWeblabEnabled:Z

    return-void
.end method


# virtual methods
.method public createBuyTask(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;Lcom/amazon/sitb/android/BookPrice;Lcom/amazon/sitb/android/metrics/MetricEvent;)Lcom/amazon/sitb/android/purchase/BuyAsinTask;
    .locals 13

    move-object v0, p0

    .line 55
    new-instance v12, Lcom/amazon/sitb/android/purchase/BuyAsinTask;

    iget-object v2, v0, Lcom/amazon/sitb/android/purchase/PurchaseTaskFactory;->store:Lcom/amazon/sitb/android/IStoreActions;

    iget-object v3, v0, Lcom/amazon/sitb/android/purchase/PurchaseTaskFactory;->metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

    iget-object v1, v0, Lcom/amazon/sitb/android/purchase/PurchaseTaskFactory;->reftagBundleService:Lcom/amazon/sitb/android/reftag/ReftagBundleService;

    move-object v4, p1

    .line 57
    invoke-virtual {v1, p1}, Lcom/amazon/sitb/android/reftag/ReftagBundleService;->getBundle(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/sitb/android/reftag/ReftagBundle;

    move-result-object v4

    iget-object v5, v0, Lcom/amazon/sitb/android/purchase/PurchaseTaskFactory;->purchaseOwnershipService:Lcom/amazon/sitb/android/purchase/PurchaseOwnershipService;

    iget-object v6, v0, Lcom/amazon/sitb/android/purchase/PurchaseTaskFactory;->purchaseDownloadService:Lcom/amazon/sitb/android/purchase/PurchaseDownloadService;

    iget-object v7, v0, Lcom/amazon/sitb/android/purchase/PurchaseTaskFactory;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    iget-boolean v1, v0, Lcom/amazon/sitb/android/purchase/PurchaseTaskFactory;->isGlideWeblabEnabled:Z

    .line 64
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    move-object v1, v12

    move-object v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-direct/range {v1 .. v11}, Lcom/amazon/sitb/android/purchase/BuyAsinTask;-><init>(Lcom/amazon/sitb/android/IStoreActions;Lcom/amazon/sitb/android/metrics/MetricsService;Lcom/amazon/sitb/android/reftag/ReftagBundle;Lcom/amazon/sitb/android/purchase/PurchaseOwnershipService;Lcom/amazon/sitb/android/purchase/PurchaseDownloadService;Lcom/amazon/kindle/krx/events/IMessageQueue;Ljava/lang/String;Lcom/amazon/sitb/android/BookPrice;Lcom/amazon/sitb/android/metrics/MetricEvent;Ljava/lang/Boolean;)V

    return-object v12
.end method

.method public createUnBuyTask(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;Lcom/amazon/sitb/android/PurchaseRecord;Lcom/amazon/sitb/android/metrics/MetricEvent;)Lcom/amazon/sitb/android/purchase/UnBuyAsinTask;
    .locals 13

    move-object v0, p0

    .line 69
    new-instance v12, Lcom/amazon/sitb/android/purchase/UnBuyAsinTask;

    iget-object v2, v0, Lcom/amazon/sitb/android/purchase/PurchaseTaskFactory;->store:Lcom/amazon/sitb/android/IStoreActions;

    iget-object v3, v0, Lcom/amazon/sitb/android/purchase/PurchaseTaskFactory;->dialogService:Lcom/amazon/sitb/android/services/DialogService;

    iget-object v4, v0, Lcom/amazon/sitb/android/purchase/PurchaseTaskFactory;->metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

    iget-object v1, v0, Lcom/amazon/sitb/android/purchase/PurchaseTaskFactory;->reftagBundleService:Lcom/amazon/sitb/android/reftag/ReftagBundleService;

    move-object v5, p1

    .line 72
    invoke-virtual {v1, p1}, Lcom/amazon/sitb/android/reftag/ReftagBundleService;->getBundle(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/sitb/android/reftag/ReftagBundle;

    move-result-object v5

    iget-object v6, v0, Lcom/amazon/sitb/android/purchase/PurchaseTaskFactory;->connectivityHandler:Lcom/amazon/sitb/android/ConnectivityHandler;

    iget-object v7, v0, Lcom/amazon/sitb/android/purchase/PurchaseTaskFactory;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    iget-boolean v11, v0, Lcom/amazon/sitb/android/purchase/PurchaseTaskFactory;->isGlideWeblabEnabled:Z

    move-object v1, v12

    move-object v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-direct/range {v1 .. v11}, Lcom/amazon/sitb/android/purchase/UnBuyAsinTask;-><init>(Lcom/amazon/sitb/android/IStoreActions;Lcom/amazon/sitb/android/services/DialogService;Lcom/amazon/sitb/android/metrics/MetricsService;Lcom/amazon/sitb/android/reftag/ReftagBundle;Lcom/amazon/sitb/android/ConnectivityHandler;Lcom/amazon/kindle/krx/events/IMessageQueue;Ljava/lang/String;Lcom/amazon/sitb/android/PurchaseRecord;Lcom/amazon/sitb/android/metrics/MetricEvent;Z)V

    return-object v12
.end method
