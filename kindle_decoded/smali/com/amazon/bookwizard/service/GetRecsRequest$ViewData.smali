.class Lcom/amazon/bookwizard/service/GetRecsRequest$ViewData;
.super Ljava/lang/Object;
.source "GetRecsRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/bookwizard/service/GetRecsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewData"
.end annotation


# instance fields
.field private recommendedBooks:Lcom/amazon/bookwizard/service/BookList;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/bookwizard/service/GetRecsRequest$ViewData;)Lcom/amazon/bookwizard/service/BookList;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/amazon/bookwizard/service/GetRecsRequest$ViewData;->recommendedBooks:Lcom/amazon/bookwizard/service/BookList;

    return-object p0
.end method
