.class Lcom/amazon/bookwizard/service/GetGenresRequest$GenreData;
.super Ljava/lang/Object;
.source "GetGenresRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/bookwizard/service/GetGenresRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GenreData"
.end annotation


# instance fields
.field private genres:Lcom/amazon/bookwizard/service/GetGenresRequest$GenreItemList;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/bookwizard/service/GetGenresRequest$GenreData;)Lcom/amazon/bookwizard/service/GetGenresRequest$GenreItemList;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/amazon/bookwizard/service/GetGenresRequest$GenreData;->genres:Lcom/amazon/bookwizard/service/GetGenresRequest$GenreItemList;

    return-object p0
.end method
