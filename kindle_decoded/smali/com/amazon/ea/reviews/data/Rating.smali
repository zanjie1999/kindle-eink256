.class public Lcom/amazon/ea/reviews/data/Rating;
.super Ljava/lang/Object;
.source "Rating.java"


# instance fields
.field private asin:Ljava/lang/String;

.field private timeStamp:Ljava/util/Date;

.field private value:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 22
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/ea/reviews/data/Rating;-><init>(ILjava/lang/String;Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/util/Date;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/amazon/ea/reviews/data/Rating;->value:I

    .line 35
    iput-object p2, p0, Lcom/amazon/ea/reviews/data/Rating;->asin:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/amazon/ea/reviews/data/Rating;->timeStamp:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public getAsin()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/amazon/ea/reviews/data/Rating;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()Ljava/util/Date;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/amazon/ea/reviews/data/Rating;->timeStamp:Ljava/util/Date;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/amazon/ea/reviews/data/Rating;->value:I

    return v0
.end method

.method public setTimeStamp(Ljava/util/Date;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/amazon/ea/reviews/data/Rating;->timeStamp:Ljava/util/Date;

    return-void
.end method

.method public setValue(I)V
    .locals 0

    .line 93
    iput p1, p0, Lcom/amazon/ea/reviews/data/Rating;->value:I

    return-void
.end method
