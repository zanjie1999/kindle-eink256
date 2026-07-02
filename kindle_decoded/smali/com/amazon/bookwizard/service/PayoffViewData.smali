.class public Lcom/amazon/bookwizard/service/PayoffViewData;
.super Lcom/amazon/bookwizard/service/ViewDataResponse;
.source "PayoffViewData.java"


# instance fields
.field private books:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/bookwizard/service/PayoffRec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/amazon/bookwizard/service/ViewDataResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getBooks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/bookwizard/service/PayoffRec;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/amazon/bookwizard/service/PayoffViewData;->books:Ljava/util/List;

    return-object v0
.end method
