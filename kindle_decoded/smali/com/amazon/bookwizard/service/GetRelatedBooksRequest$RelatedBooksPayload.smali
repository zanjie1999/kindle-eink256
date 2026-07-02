.class Lcom/amazon/bookwizard/service/GetRelatedBooksRequest$RelatedBooksPayload;
.super Ljava/lang/Object;
.source "GetRelatedBooksRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/bookwizard/service/GetRelatedBooksRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RelatedBooksPayload"
.end annotation


# instance fields
.field private bookId:Ljava/lang/String;

.field private numBooks:I

.field private recSourceId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/amazon/bookwizard/service/State;Lcom/amazon/bookwizard/data/Book;)V
    .locals 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 111
    iput v0, p0, Lcom/amazon/bookwizard/service/GetRelatedBooksRequest$RelatedBooksPayload;->numBooks:I

    .line 114
    invoke-virtual {p1}, Lcom/amazon/bookwizard/service/State;->getRecSourceId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/bookwizard/service/GetRelatedBooksRequest$RelatedBooksPayload;->recSourceId:Ljava/lang/String;

    .line 115
    invoke-virtual {p2}, Lcom/amazon/bookwizard/data/Book;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/bookwizard/service/GetRelatedBooksRequest$RelatedBooksPayload;->bookId:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/bookwizard/service/State;Lcom/amazon/bookwizard/data/Book;Lcom/amazon/bookwizard/service/GetRelatedBooksRequest$1;)V
    .locals 0

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/amazon/bookwizard/service/GetRelatedBooksRequest$RelatedBooksPayload;-><init>(Lcom/amazon/bookwizard/service/State;Lcom/amazon/bookwizard/data/Book;)V

    return-void
.end method
