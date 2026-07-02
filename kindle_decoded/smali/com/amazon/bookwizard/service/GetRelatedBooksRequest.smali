.class public Lcom/amazon/bookwizard/service/GetRelatedBooksRequest;
.super Lcom/amazon/bookwizard/service/SarsRequest;
.source "GetRelatedBooksRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/bookwizard/service/GetRelatedBooksRequest$RelatedBooksPayload;,
        Lcom/amazon/bookwizard/service/GetRelatedBooksRequest$GetRelatedBooksBody;,
        Lcom/amazon/bookwizard/service/GetRelatedBooksRequest$BookList;,
        Lcom/amazon/bookwizard/service/GetRelatedBooksRequest$RelatedBooks;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/bookwizard/service/SarsRequest<",
        "Lcom/amazon/bookwizard/service/GetRelatedBooksRequest$GetRelatedBooksBody;",
        "Lcom/amazon/bookwizard/service/GetRelatedBooksRequest$RelatedBooks;",
        ">;"
    }
.end annotation


# static fields
.field private static final KEY_RELATED_BOOKS:Ljava/lang/String; = "relatedBooks"

.field private static final NUM_RELATED_BOOKS:I = 0x4


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Lcom/amazon/bookwizard/service/State;Lcom/amazon/bookwizard/data/Book;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/application/IDeviceInformation;",
            "Lcom/amazon/bookwizard/service/State;",
            "Lcom/amazon/bookwizard/data/Book;",
            "Lcom/android/volley/Response$Listener<",
            "Lcom/amazon/bookwizard/service/GetRelatedBooksRequest$RelatedBooks;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 46
    new-instance v3, Lcom/amazon/bookwizard/service/GetRelatedBooksRequest$GetRelatedBooksBody;

    const/4 v0, 0x0

    invoke-direct {v3, p2, p3, v0}, Lcom/amazon/bookwizard/service/GetRelatedBooksRequest$GetRelatedBooksBody;-><init>(Lcom/amazon/bookwizard/service/State;Lcom/amazon/bookwizard/data/Book;Lcom/amazon/bookwizard/service/GetRelatedBooksRequest$1;)V

    const-class v4, Lcom/amazon/bookwizard/service/GetRelatedBooksRequest$RelatedBooks;

    const-string v2, "GetData"

    move-object v0, p0

    move-object v1, p1

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/amazon/bookwizard/service/SarsRequest;-><init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method protected getMetricErrorName()Ljava/lang/String;
    .locals 1

    const-string v0, "GetRelatedBooksFailure"

    return-object v0
.end method

.method protected getMetricSuccessName()Ljava/lang/String;
    .locals 1

    const-string v0, "GetRelatedBooksSuccess"

    return-object v0
.end method

.method protected getMetricTimerName()Ljava/lang/String;
    .locals 1

    const-string v0, "GetRelatedBooksTime"

    return-object v0
.end method
