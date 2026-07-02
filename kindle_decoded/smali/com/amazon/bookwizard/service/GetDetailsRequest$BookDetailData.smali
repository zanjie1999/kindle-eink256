.class public Lcom/amazon/bookwizard/service/GetDetailsRequest$BookDetailData;
.super Lcom/amazon/bookwizard/service/DataResponse;
.source "GetDetailsRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/bookwizard/service/GetDetailsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BookDetailData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/bookwizard/service/DataResponse<",
        "Lcom/amazon/bookwizard/data/BookDetail;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/amazon/bookwizard/service/DataResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getBookDetail()Lcom/amazon/bookwizard/data/BookDetail;
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/amazon/bookwizard/service/DataResponse;->data:Ljava/util/Map;

    if-eqz v0, :cond_1

    const-string v1, "bookDetail"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/amazon/bookwizard/service/DataResponse;->data:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/bookwizard/data/BookDetail;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
