.class Lcom/amazon/bookwizard/service/GetRecsBody$RatingData;
.super Ljava/lang/Object;
.source "GetRecsBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/bookwizard/service/GetRecsBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RatingData"
.end annotation


# instance fields
.field private id:Ljava/lang/String;

.field private isSelected:Z

.field private rating:I


# direct methods
.method private constructor <init>(Lcom/amazon/bookwizard/data/Book;Lcom/amazon/bookwizard/data/Rating;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p1}, Lcom/amazon/bookwizard/data/Book;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/bookwizard/service/GetRecsBody$RatingData;->id:Ljava/lang/String;

    .line 73
    invoke-virtual {p2}, Lcom/amazon/bookwizard/data/Rating;->getValue()I

    move-result p1

    const/4 v0, 0x5

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/amazon/bookwizard/service/GetRecsBody$RatingData;->rating:I

    .line 74
    invoke-virtual {p2}, Lcom/amazon/bookwizard/data/Rating;->isWantToRead()Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/bookwizard/service/GetRecsBody$RatingData;->isSelected:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/bookwizard/data/Book;Lcom/amazon/bookwizard/data/Rating;Lcom/amazon/bookwizard/service/GetRecsBody$1;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/amazon/bookwizard/service/GetRecsBody$RatingData;-><init>(Lcom/amazon/bookwizard/data/Book;Lcom/amazon/bookwizard/data/Rating;)V

    return-void
.end method
