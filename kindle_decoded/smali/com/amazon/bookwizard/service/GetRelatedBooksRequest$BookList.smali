.class Lcom/amazon/bookwizard/service/GetRelatedBooksRequest$BookList;
.super Ljava/lang/Object;
.source "GetRelatedBooksRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/bookwizard/service/GetRelatedBooksRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BookList"
.end annotation


# instance fields
.field private items:[Lcom/amazon/bookwizard/data/Book;

.field private type:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/bookwizard/service/GetRelatedBooksRequest$BookList;)[Lcom/amazon/bookwizard/data/Book;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/amazon/bookwizard/service/GetRelatedBooksRequest$BookList;->items:[Lcom/amazon/bookwizard/data/Book;

    return-object p0
.end method
