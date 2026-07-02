.class public abstract Lcom/amazon/whisperjoin/common/sharedtypes/reporting/AbstractProvisioningEventReporter;
.super Ljava/lang/Object;
.source "AbstractProvisioningEventReporter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AbstractProvisioningEventReporter"


# instance fields
.field private final mDSSClient:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 34
    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/AbstractProvisioningEventReporter;->mDSSClient:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

    return-void

    .line 32
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "DSSClient can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 14
    sget-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/AbstractProvisioningEventReporter;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected getBuilderForSession(Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ReportingSesssion;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;
    .locals 2

    .line 24
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;-><init>()V

    .line 25
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ReportingSesssion;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setReportingUrl(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object v0

    .line 26
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ReportingSesssion;->getNextSequenceNumber()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setSequenceNumber(I)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method protected reportEvent(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;)V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/AbstractProvisioningEventReporter;->mDSSClient:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

    invoke-interface {v0, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;->reportEvent(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;)Lio/reactivex/Completable;

    move-result-object v0

    new-instance v1, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/AbstractProvisioningEventReporter$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/AbstractProvisioningEventReporter$1;-><init>(Lcom/amazon/whisperjoin/common/sharedtypes/reporting/AbstractProvisioningEventReporter;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;)V

    .line 44
    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->subscribeWith(Lio/reactivex/CompletableObserver;)Lio/reactivex/CompletableObserver;

    return-void
.end method
