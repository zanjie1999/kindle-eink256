.class Lcom/amazon/bookwizard/service/GetGenresRequest$GenreItemList;
.super Ljava/lang/Object;
.source "GetGenresRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/bookwizard/service/GetGenresRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GenreItemList"
.end annotation


# instance fields
.field private items:[Lcom/amazon/bookwizard/data/Genre;

.field private type:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/bookwizard/service/GetGenresRequest$GenreItemList;)[Lcom/amazon/bookwizard/data/Genre;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/amazon/bookwizard/service/GetGenresRequest$GenreItemList;->items:[Lcom/amazon/bookwizard/data/Genre;

    return-object p0
.end method
