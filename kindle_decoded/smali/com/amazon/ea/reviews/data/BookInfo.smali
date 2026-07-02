.class public Lcom/amazon/ea/reviews/data/BookInfo;
.super Ljava/lang/Object;
.source "BookInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/ea/reviews/data/BookInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final asin:Ljava/lang/String;

.field public final authors:Ljava/lang/String;

.field public final bookId:Ljava/lang/String;

.field public final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/amazon/ea/reviews/data/BookInfo$1;

    invoke-direct {v0}, Lcom/amazon/ea/reviews/data/BookInfo$1;-><init>()V

    sput-object v0, Lcom/amazon/ea/reviews/data/BookInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {p3}, Lcom/amazon/ea/sidecar/def/data/ArabicLanguageHelper;->explicitTextDirection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 57
    iput-object p1, p0, Lcom/amazon/ea/reviews/data/BookInfo;->bookId:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/amazon/ea/reviews/data/BookInfo;->asin:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lcom/amazon/ea/reviews/data/BookInfo;->title:Ljava/lang/String;

    .line 60
    iput-object p4, p0, Lcom/amazon/ea/reviews/data/BookInfo;->authors:Ljava/lang/String;

    return-void
.end method

.method public static createInstance(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/ea/reviews/data/BookInfo;
    .locals 4

    .line 47
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getAuthors()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/ea/util/AuthorNameFormatterUtil;->splitCatalogAuthors(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 48
    invoke-static {v0}, Lcom/amazon/ea/util/AuthorNameFormatterUtil;->formatAuthorList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 50
    new-instance v1, Lcom/amazon/ea/reviews/data/BookInfo;

    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, v3, p0, v0}, Lcom/amazon/ea/reviews/data/BookInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 76
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/amazon/ea/reviews/data/BookInfo;

    if-eq v2, v3, :cond_2

    return v1

    .line 79
    :cond_2
    check-cast p1, Lcom/amazon/ea/reviews/data/BookInfo;

    .line 80
    iget-object v2, p0, Lcom/amazon/ea/reviews/data/BookInfo;->bookId:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/ea/reviews/data/BookInfo;->bookId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/ea/reviews/data/BookInfo;->asin:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/ea/reviews/data/BookInfo;->asin:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/ea/reviews/data/BookInfo;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/ea/reviews/data/BookInfo;->title:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/ea/reviews/data/BookInfo;->authors:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/ea/reviews/data/BookInfo;->authors:Ljava/lang/String;

    .line 81
    invoke-static {v2, p1}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 86
    iget-object v1, p0, Lcom/amazon/ea/reviews/data/BookInfo;->bookId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/reviews/data/BookInfo;->asin:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/reviews/data/BookInfo;->title:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/reviews/data/BookInfo;->authors:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/amazon/ea/guava/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 91
    iget-object p2, p0, Lcom/amazon/ea/reviews/data/BookInfo;->bookId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object p2, p0, Lcom/amazon/ea/reviews/data/BookInfo;->asin:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object p2, p0, Lcom/amazon/ea/reviews/data/BookInfo;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object p2, p0, Lcom/amazon/ea/reviews/data/BookInfo;->authors:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
