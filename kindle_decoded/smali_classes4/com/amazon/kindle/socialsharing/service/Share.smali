.class public Lcom/amazon/kindle/socialsharing/service/Share;
.super Ljava/lang/Object;
.source "Share.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/kindle/socialsharing/service/Share;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_ASIN:Ljava/lang/String; = "asin"

.field private static final KEY_AUTHORS:Ljava/lang/String; = "authors"

.field private static final KEY_BOOK_ID:Ljava/lang/String; = "bookId"

.field private static final KEY_BOOK_LANGUAGE:Ljava/lang/String; = "bookLanguage"

.field private static final KEY_DESCRIPTION:Ljava/lang/String; = "description"

.field private static final KEY_ID:Ljava/lang/String; = "id"

.field private static final KEY_IMAGE_URL:Ljava/lang/String; = "imageUrl"

.field private static final KEY_LANDING_PAGE_URL:Ljava/lang/String; = "landingPageUrl"

.field private static final KEY_PHYSICAL_ID:Ljava/lang/String; = "physicalId"

.field private static final KEY_QUOTE:Ljava/lang/String; = "quote"

.field private static final KEY_QUOTE_END:Ljava/lang/String; = "quoteEnd"

.field private static final KEY_QUOTE_START:Ljava/lang/String; = "quoteStart"

.field private static final KEY_READING_PROGRESS:Ljava/lang/String; = "readingProgress"

.field private static final KEY_SHARE_TYPE:Ljava/lang/String; = "shareType"

.field private static final KEY_TITLE:Ljava/lang/String; = "title"

.field private static final READING_PROGRESS_MAX:I = 0x64

.field private static final READING_PROGRESS_MIN:I = 0x1


# instance fields
.field private asin:Ljava/lang/String;

.field private authors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bookId:Ljava/lang/String;

.field private bookLanguage:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;

.field private landingPageUrl:Ljava/lang/String;

.field private physicalId:Ljava/lang/String;

.field private quote:Ljava/lang/String;

.field private quoteEnd:I

.field private quoteStart:I

.field private readingProgress:I

.field private shareType:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 278
    new-instance v0, Lcom/amazon/kindle/socialsharing/service/Share$1;

    invoke-direct {v0}, Lcom/amazon/kindle/socialsharing/service/Share$1;-><init>()V

    sput-object v0, Lcom/amazon/kindle/socialsharing/service/Share;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-eqz p1, :cond_2

    .line 103
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/amazon/kindle/socialsharing/service/Share;

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    if-ne p1, p0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 109
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/amazon/kindle/socialsharing/service/Share;

    .line 110
    new-instance v1, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;-><init>()V

    .line 111
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v1, p1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->appendSuper(Z)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    iget-object p1, p0, Lcom/amazon/kindle/socialsharing/service/Share;->id:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/kindle/socialsharing/service/Share;->id:Ljava/lang/String;

    .line 112
    invoke-virtual {v1, p1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    iget-object p1, p0, Lcom/amazon/kindle/socialsharing/service/Share;->asin:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/kindle/socialsharing/service/Share;->asin:Ljava/lang/String;

    .line 113
    invoke-virtual {v1, p1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    iget-object p1, p0, Lcom/amazon/kindle/socialsharing/service/Share;->landingPageUrl:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/kindle/socialsharing/service/Share;->landingPageUrl:Ljava/lang/String;

    .line 114
    invoke-virtual {v1, p1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    iget-object p1, p0, Lcom/amazon/kindle/socialsharing/service/Share;->imageUrl:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/kindle/socialsharing/service/Share;->imageUrl:Ljava/lang/String;

    .line 115
    invoke-virtual {v1, p1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    iget-object p1, p0, Lcom/amazon/kindle/socialsharing/service/Share;->physicalId:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/kindle/socialsharing/service/Share;->physicalId:Ljava/lang/String;

    .line 116
    invoke-virtual {v1, p1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    iget-object p1, p0, Lcom/amazon/kindle/socialsharing/service/Share;->title:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/kindle/socialsharing/service/Share;->title:Ljava/lang/String;

    .line 117
    invoke-virtual {v1, p1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    iget-object p1, p0, Lcom/amazon/kindle/socialsharing/service/Share;->authors:Ljava/util/List;

    iget-object v2, v0, Lcom/amazon/kindle/socialsharing/service/Share;->authors:Ljava/util/List;

    .line 118
    invoke-virtual {v1, p1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    iget-object p1, p0, Lcom/amazon/kindle/socialsharing/service/Share;->description:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/kindle/socialsharing/service/Share;->description:Ljava/lang/String;

    .line 119
    invoke-virtual {v1, p1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    iget-object p1, p0, Lcom/amazon/kindle/socialsharing/service/Share;->quote:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/kindle/socialsharing/service/Share;->quote:Ljava/lang/String;

    .line 120
    invoke-virtual {v1, p1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    iget p1, p0, Lcom/amazon/kindle/socialsharing/service/Share;->quoteStart:I

    iget v2, v0, Lcom/amazon/kindle/socialsharing/service/Share;->quoteStart:I

    .line 121
    invoke-virtual {v1, p1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(II)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    iget p1, p0, Lcom/amazon/kindle/socialsharing/service/Share;->quoteEnd:I

    iget v2, v0, Lcom/amazon/kindle/socialsharing/service/Share;->quoteEnd:I

    .line 122
    invoke-virtual {v1, p1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(II)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    iget-object p1, p0, Lcom/amazon/kindle/socialsharing/service/Share;->bookLanguage:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/kindle/socialsharing/service/Share;->bookLanguage:Ljava/lang/String;

    .line 123
    invoke-virtual {v1, p1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    iget p1, p0, Lcom/amazon/kindle/socialsharing/service/Share;->readingProgress:I

    iget v2, v0, Lcom/amazon/kindle/socialsharing/service/Share;->readingProgress:I

    .line 124
    invoke-virtual {v1, p1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(II)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    iget-object p1, p0, Lcom/amazon/kindle/socialsharing/service/Share;->bookId:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/kindle/socialsharing/service/Share;->bookId:Ljava/lang/String;

    .line 125
    invoke-virtual {v1, p1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    iget-object p1, p0, Lcom/amazon/kindle/socialsharing/service/Share;->shareType:Ljava/lang/String;

    iget-object v0, v0, Lcom/amazon/kindle/socialsharing/service/Share;->shareType:Ljava/lang/String;

    .line 126
    invoke-virtual {v1, p1, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    .line 127
    invoke-virtual {v1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getAsin()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/service/Share;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/service/Share;->authors:Ljava/util/List;

    return-object v0
.end method

.method public getAuthorsString()Ljava/lang/String;
    .locals 4

    .line 71
    invoke-virtual {p0}, Lcom/amazon/kindle/socialsharing/service/Share;->getAuthors()Ljava/util/List;

    move-result-object v0

    .line 72
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 73
    sget v2, Lcom/amazon/kindle/socialsharing/common/R$string;->author_anonymity:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_0

    .line 74
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 75
    sget v2, Lcom/amazon/kindle/socialsharing/common/R$string;->authors_separator:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    return-object v2
.end method

.method public getBookId()Ljava/lang/String;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/service/Share;->bookId:Ljava/lang/String;

    return-object v0
.end method

.method public getBookLanguage()Ljava/lang/String;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/service/Share;->bookLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/service/Share;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/service/Share;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/service/Share;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLandingPageUrl()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/service/Share;->landingPageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getQuote()Ljava/lang/String;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/service/Share;->quote:Ljava/lang/String;

    return-object v0
.end method

.method public getQuoteEnd()I
    .locals 1

    .line 211
    iget v0, p0, Lcom/amazon/kindle/socialsharing/service/Share;->quoteEnd:I

    return v0
.end method

.method public getQuoteStart()I
    .locals 1

    .line 203
    iget v0, p0, Lcom/amazon/kindle/socialsharing/service/Share;->quoteStart:I

    return v0
.end method

.method public getReadingProgress()I
    .locals 1

    .line 227
    iget v0, p0, Lcom/amazon/kindle/socialsharing/service/Share;->readingProgress:I

    return v0
.end method

.method public getShareType()Ljava/lang/String;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/service/Share;->shareType:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/service/Share;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 82
    new-instance v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    const/16 v1, 0x11

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;-><init>(II)V

    iget-object v1, p0, Lcom/amazon/kindle/socialsharing/service/Share;->id:Ljava/lang/String;

    .line 83
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/socialsharing/service/Share;->asin:Ljava/lang/String;

    .line 84
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/socialsharing/service/Share;->landingPageUrl:Ljava/lang/String;

    .line 85
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/socialsharing/service/Share;->imageUrl:Ljava/lang/String;

    .line 86
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/socialsharing/service/Share;->physicalId:Ljava/lang/String;

    .line 87
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/socialsharing/service/Share;->title:Ljava/lang/String;

    .line 88
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/socialsharing/service/Share;->authors:Ljava/util/List;

    .line 89
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/socialsharing/service/Share;->description:Ljava/lang/String;

    .line 90
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/socialsharing/service/Share;->quote:Ljava/lang/String;

    .line 91
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    iget v1, p0, Lcom/amazon/kindle/socialsharing/service/Share;->quoteStart:I

    .line 92
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(I)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    iget v1, p0, Lcom/amazon/kindle/socialsharing/service/Share;->quoteEnd:I

    .line 93
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(I)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/socialsharing/service/Share;->bookLanguage:Ljava/lang/String;

    .line 94
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    iget v1, p0, Lcom/amazon/kindle/socialsharing/service/Share;->readingProgress:I

    .line 95
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(I)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/socialsharing/service/Share;->bookId:Ljava/lang/String;

    .line 96
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/socialsharing/service/Share;->shareType:Ljava/lang/String;

    .line 97
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    .line 98
    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public setAsin(Ljava/lang/String;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/service/Share;->asin:Ljava/lang/String;

    return-void
.end method

.method setAuthors(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 183
    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/service/Share;->authors:Ljava/util/List;

    return-void
.end method

.method public setBookId(Ljava/lang/String;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/service/Share;->bookId:Ljava/lang/String;

    return-void
.end method

.method setBookLanguage(Ljava/lang/String;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/service/Share;->bookLanguage:Ljava/lang/String;

    return-void
.end method

.method setDescription(Ljava/lang/String;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/service/Share;->description:Ljava/lang/String;

    return-void
.end method

.method setId(Ljava/lang/String;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/service/Share;->id:Ljava/lang/String;

    return-void
.end method

.method setImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/service/Share;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method setLandingPageUrl(Ljava/lang/String;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/service/Share;->landingPageUrl:Ljava/lang/String;

    return-void
.end method

.method setPhysicalId(Ljava/lang/String;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/service/Share;->physicalId:Ljava/lang/String;

    return-void
.end method

.method setQuote(Ljava/lang/String;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/service/Share;->quote:Ljava/lang/String;

    return-void
.end method

.method setQuoteEnd(I)V
    .locals 0

    .line 215
    iput p1, p0, Lcom/amazon/kindle/socialsharing/service/Share;->quoteEnd:I

    return-void
.end method

.method setQuoteStart(I)V
    .locals 0

    .line 207
    iput p1, p0, Lcom/amazon/kindle/socialsharing/service/Share;->quoteStart:I

    return-void
.end method

.method setReadingProgress(I)V
    .locals 1

    const/4 v0, 0x1

    .line 231
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v0, 0x64

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/socialsharing/service/Share;->readingProgress:I

    return-void
.end method

.method setShareType(Ljava/lang/String;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/service/Share;->shareType:Ljava/lang/String;

    return-void
.end method

.method setTitle(Ljava/lang/String;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/service/Share;->title:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 256
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 258
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/service/Share;->id:Ljava/lang/String;

    const-string v1, "id"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/service/Share;->asin:Ljava/lang/String;

    const-string v1, "asin"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/service/Share;->landingPageUrl:Ljava/lang/String;

    const-string v1, "landingPageUrl"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/service/Share;->imageUrl:Ljava/lang/String;

    const-string v1, "imageUrl"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/service/Share;->physicalId:Ljava/lang/String;

    const-string v1, "physicalId"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/service/Share;->title:Ljava/lang/String;

    const-string v1, "title"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/service/Share;->authors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 265
    iget-object v1, p0, Lcom/amazon/kindle/socialsharing/service/Share;->authors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const-string v1, "authors"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/service/Share;->description:Ljava/lang/String;

    const-string v1, "description"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/service/Share;->quote:Ljava/lang/String;

    const-string v1, "quote"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget v0, p0, Lcom/amazon/kindle/socialsharing/service/Share;->quoteStart:I

    const-string v1, "quoteStart"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 269
    iget v0, p0, Lcom/amazon/kindle/socialsharing/service/Share;->quoteEnd:I

    const-string v1, "quoteEnd"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 270
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/service/Share;->bookLanguage:Ljava/lang/String;

    const-string v1, "bookLanguage"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget v0, p0, Lcom/amazon/kindle/socialsharing/service/Share;->readingProgress:I

    const-string v1, "readingProgress"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 272
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/service/Share;->bookId:Ljava/lang/String;

    const-string v1, "bookId"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/service/Share;->shareType:Ljava/lang/String;

    const-string v1, "shareType"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
