.class public Lcom/amazon/bookwizard/service/GetDetailsRequest;
.super Lcom/amazon/bookwizard/service/SarsRequest;
.source "GetDetailsRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/bookwizard/service/GetDetailsRequest$BookDetailPayload;,
        Lcom/amazon/bookwizard/service/GetDetailsRequest$GetDetailsBody;,
        Lcom/amazon/bookwizard/service/GetDetailsRequest$BookDetailData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/bookwizard/service/SarsRequest<",
        "Lcom/amazon/bookwizard/service/GetDetailsRequest$GetDetailsBody;",
        "Lcom/amazon/bookwizard/service/GetDetailsRequest$BookDetailData;",
        ">;"
    }
.end annotation


# static fields
.field private static final KEY_BOOK_DETAIL:Ljava/lang/String; = "bookDetail"


# instance fields
.field private final category:Lcom/amazon/bookwizard/data/Category;

.field private final id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Ljava/lang/String;Lcom/amazon/bookwizard/data/Category;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/application/IDeviceInformation;",
            "Ljava/lang/String;",
            "Lcom/amazon/bookwizard/data/Category;",
            "Lcom/android/volley/Response$Listener<",
            "Lcom/amazon/bookwizard/service/GetDetailsRequest$BookDetailData;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 48
    new-instance v3, Lcom/amazon/bookwizard/service/GetDetailsRequest$GetDetailsBody;

    const/4 v0, 0x0

    invoke-direct {v3, p2, v0}, Lcom/amazon/bookwizard/service/GetDetailsRequest$GetDetailsBody;-><init>(Ljava/lang/String;Lcom/amazon/bookwizard/service/GetDetailsRequest$1;)V

    const-class v4, Lcom/amazon/bookwizard/service/GetDetailsRequest$BookDetailData;

    const-string v2, "GetData"

    move-object v0, p0

    move-object v1, p1

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/amazon/bookwizard/service/SarsRequest;-><init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 50
    iput-object p3, p0, Lcom/amazon/bookwizard/service/GetDetailsRequest;->category:Lcom/amazon/bookwizard/data/Category;

    .line 51
    iput-object p2, p0, Lcom/amazon/bookwizard/service/GetDetailsRequest;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic deliverResponse(Lcom/amazon/bookwizard/http/IWithHeaders;)V
    .locals 0

    .line 32
    check-cast p1, Lcom/amazon/bookwizard/service/GetDetailsRequest$BookDetailData;

    invoke-virtual {p0, p1}, Lcom/amazon/bookwizard/service/GetDetailsRequest;->deliverResponse(Lcom/amazon/bookwizard/service/GetDetailsRequest$BookDetailData;)V

    return-void
.end method

.method protected deliverResponse(Lcom/amazon/bookwizard/service/GetDetailsRequest$BookDetailData;)V
    .locals 4

    .line 59
    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->getDataProvider()Lcom/amazon/bookwizard/data/DataProvider;

    move-result-object v0

    .line 60
    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->getRunningState()Lcom/amazon/bookwizard/service/State;

    move-result-object v1

    .line 61
    invoke-virtual {p1}, Lcom/amazon/bookwizard/service/GetDetailsRequest$BookDetailData;->getBookDetail()Lcom/amazon/bookwizard/data/BookDetail;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 63
    iget-object v3, p0, Lcom/amazon/bookwizard/service/GetDetailsRequest;->id:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/amazon/bookwizard/data/DataProvider;->getBook(Ljava/lang/String;)Lcom/amazon/bookwizard/data/Book;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amazon/bookwizard/data/BookDetail;->setBook(Lcom/amazon/bookwizard/data/Book;)V

    .line 64
    iget-object v0, p0, Lcom/amazon/bookwizard/service/GetDetailsRequest;->category:Lcom/amazon/bookwizard/data/Category;

    if-eqz v0, :cond_0

    .line 65
    invoke-interface {v0}, Lcom/amazon/bookwizard/data/Category;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amazon/bookwizard/data/BookDetail;->setCategoryId(Ljava/lang/String;)V

    .line 67
    :cond_0
    invoke-virtual {v1}, Lcom/amazon/bookwizard/service/State;->getRecSourceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amazon/bookwizard/data/BookDetail;->setRecSource(Ljava/lang/String;)V

    .line 70
    :cond_1
    invoke-super {p0, p1}, Lcom/amazon/bookwizard/service/SarsRequest;->deliverResponse(Lcom/amazon/bookwizard/http/IWithHeaders;)V

    return-void
.end method

.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p1, Lcom/amazon/bookwizard/service/GetDetailsRequest$BookDetailData;

    invoke-virtual {p0, p1}, Lcom/amazon/bookwizard/service/GetDetailsRequest;->deliverResponse(Lcom/amazon/bookwizard/service/GetDetailsRequest$BookDetailData;)V

    return-void
.end method

.method protected getMetricErrorName()Ljava/lang/String;
    .locals 1

    const-string v0, "GetDetailsFailure"

    return-object v0
.end method

.method protected getMetricSuccessName()Ljava/lang/String;
    .locals 1

    const-string v0, "GetDetailsSuccess"

    return-object v0
.end method

.method protected getMetricTimerName()Ljava/lang/String;
    .locals 1

    const-string v0, "GetDetailsTime"

    return-object v0
.end method
