.class public Lcom/amazon/bookwizard/data/Rating;
.super Ljava/lang/Object;
.source "Rating.java"


# instance fields
.field private final category:Lcom/amazon/bookwizard/data/Category;

.field private final value:I


# direct methods
.method public constructor <init>(Lcom/amazon/bookwizard/data/Category;I)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/amazon/bookwizard/data/Rating;->category:Lcom/amazon/bookwizard/data/Category;

    .line 31
    iput p2, p0, Lcom/amazon/bookwizard/data/Rating;->value:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 74
    instance-of v0, p1, Lcom/amazon/bookwizard/data/Rating;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amazon/bookwizard/data/Rating;->value:I

    check-cast p1, Lcom/amazon/bookwizard/data/Rating;

    iget p1, p1, Lcom/amazon/bookwizard/data/Rating;->value:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getCategory()Lcom/amazon/bookwizard/data/Category;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/amazon/bookwizard/data/Rating;->category:Lcom/amazon/bookwizard/data/Category;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/amazon/bookwizard/data/Rating;->value:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 66
    iget-object v1, p0, Lcom/amazon/bookwizard/data/Rating;->category:Lcom/amazon/bookwizard/data/Category;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/bookwizard/data/Rating;->value:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isWantToRead()Z
    .locals 2

    .line 40
    iget v0, p0, Lcom/amazon/bookwizard/data/Rating;->value:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
