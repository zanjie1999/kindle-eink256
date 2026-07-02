.class public Lcom/amazon/bookwizard/service/PayoffRec;
.super Ljava/lang/Object;
.source "PayoffRec.java"


# instance fields
.field private asin:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "asin"
    .end annotation
.end field

.field private author:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "author"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private imageUri:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "imageURI"
    .end annotation
.end field

.field private rating:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rating"
    .end annotation
.end field

.field private reason:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recommendedReason"
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 111
    instance-of v0, p1, Lcom/amazon/bookwizard/service/PayoffRec;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/bookwizard/service/PayoffRec;->asin:Ljava/lang/String;

    check-cast p1, Lcom/amazon/bookwizard/service/PayoffRec;

    .line 112
    invoke-virtual {p1}, Lcom/amazon/bookwizard/service/PayoffRec;->getAsin()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getAsin()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/amazon/bookwizard/service/PayoffRec;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/amazon/bookwizard/service/PayoffRec;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazon/bookwizard/service/PayoffRec;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/amazon/bookwizard/service/PayoffRec;->imageUri:Ljava/lang/String;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/amazon/bookwizard/service/PayoffRec;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/bookwizard/service/PayoffRec;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 103
    iget-object v1, p0, Lcom/amazon/bookwizard/service/PayoffRec;->asin:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
