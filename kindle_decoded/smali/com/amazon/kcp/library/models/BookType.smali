.class public final enum Lcom/amazon/kcp/library/models/BookType;
.super Ljava/lang/Enum;
.source "BookType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/library/models/BookType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/library/models/BookType;

.field public static final enum BT_AUDIBLE_AUDIOBOOK:Lcom/amazon/kcp/library/models/BookType;

.field public static final enum BT_CLOUD_DOC:Lcom/amazon/kcp/library/models/BookType;

.field public static final enum BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

.field public static final enum BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

.field public static final enum BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

.field public static final enum BT_EBOOK_PDOC:Lcom/amazon/kcp/library/models/BookType;

.field public static final enum BT_EBOOK_PSNL:Lcom/amazon/kcp/library/models/BookType;

.field public static final enum BT_EBOOK_SAMPLE:Lcom/amazon/kcp/library/models/BookType;

.field public static final enum BT_NARRATIVE_GROUP:Lcom/amazon/kcp/library/models/BookType;

.field public static final enum BT_OFFICE_DOC:Lcom/amazon/kcp/library/models/BookType;

.field public static final enum BT_PERIODICAL_GROUP:Lcom/amazon/kcp/library/models/BookType;

.field public static final enum BT_SERIES_GROUP:Lcom/amazon/kcp/library/models/BookType;

.field public static final enum BT_UNKNOWN:Lcom/amazon/kcp/library/models/BookType;

.field private static final COLLECTIBLE:I = 0x2

.field private static final DOCUMENT:I = 0x8

.field private static final GROUP:I = 0x10

.field private static final PERIODICAL:I = 0x4

.field private static final READER_CONTENT:I = 0x1


# instance fields
.field private final contentType:Lcom/amazon/kindle/krx/content/ContentType;

.field private final flags:I

.field private final name:Ljava/lang/String;

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 18
    new-instance v7, Lcom/amazon/kcp/library/models/BookType;

    sget-object v5, Lcom/amazon/kindle/krx/content/ContentType;->UNKNOWN:Lcom/amazon/kindle/krx/content/ContentType;

    const-string v1, "BT_UNKNOWN"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const-string v4, ""

    const/4 v6, 0x3

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kcp/library/models/BookType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;I)V

    sput-object v7, Lcom/amazon/kcp/library/models/BookType;->BT_UNKNOWN:Lcom/amazon/kcp/library/models/BookType;

    .line 23
    new-instance v0, Lcom/amazon/kcp/library/models/BookType;

    sget-object v13, Lcom/amazon/kindle/krx/content/ContentType;->BOOK:Lcom/amazon/kindle/krx/content/ContentType;

    const-string v9, "BT_EBOOK"

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-string v12, "EBOK"

    const/4 v14, 0x3

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/amazon/kcp/library/models/BookType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;I)V

    sput-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    .line 28
    new-instance v0, Lcom/amazon/kcp/library/models/BookType;

    sget-object v6, Lcom/amazon/kindle/krx/content/ContentType;->BOOK_SAMPLE:Lcom/amazon/kindle/krx/content/ContentType;

    const-string v2, "BT_EBOOK_SAMPLE"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, "EBSP"

    const/4 v7, 0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/amazon/kcp/library/models/BookType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;I)V

    sput-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_SAMPLE:Lcom/amazon/kcp/library/models/BookType;

    .line 33
    new-instance v0, Lcom/amazon/kcp/library/models/BookType;

    sget-object v13, Lcom/amazon/kindle/krx/content/ContentType;->MAGAZINE:Lcom/amazon/kindle/krx/content/ContentType;

    const-string v9, "BT_EBOOK_MAGAZINE"

    const/4 v10, 0x3

    const/4 v11, 0x2

    const-string v12, "MAGZ"

    const/4 v14, 0x7

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/amazon/kcp/library/models/BookType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;I)V

    sput-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    .line 39
    new-instance v0, Lcom/amazon/kcp/library/models/BookType;

    sget-object v6, Lcom/amazon/kindle/krx/content/ContentType;->NEWSPAPER:Lcom/amazon/kindle/krx/content/ContentType;

    const-string v2, "BT_EBOOK_NEWSPAPER"

    const/4 v3, 0x4

    const/4 v4, 0x3

    const-string v5, "NWPR"

    const/4 v7, 0x7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/amazon/kcp/library/models/BookType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;I)V

    sput-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    .line 45
    new-instance v0, Lcom/amazon/kcp/library/models/BookType;

    sget-object v13, Lcom/amazon/kindle/krx/content/ContentType;->PDOC:Lcom/amazon/kindle/krx/content/ContentType;

    const-string v9, "BT_EBOOK_PDOC"

    const/4 v10, 0x5

    const/4 v11, 0x4

    const-string v12, "PDOC"

    const/16 v14, 0xb

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/amazon/kcp/library/models/BookType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;I)V

    sput-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PDOC:Lcom/amazon/kcp/library/models/BookType;

    .line 52
    new-instance v0, Lcom/amazon/kcp/library/models/BookType;

    sget-object v6, Lcom/amazon/kindle/krx/content/ContentType;->PERSONAL_LETTER:Lcom/amazon/kindle/krx/content/ContentType;

    const-string v2, "BT_EBOOK_PSNL"

    const/4 v3, 0x6

    const/4 v4, 0x5

    const-string v5, "PSNL"

    const/16 v7, 0x9

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/amazon/kcp/library/models/BookType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;I)V

    sput-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PSNL:Lcom/amazon/kcp/library/models/BookType;

    .line 58
    new-instance v0, Lcom/amazon/kcp/library/models/BookType;

    sget-object v13, Lcom/amazon/kindle/krx/content/ContentType;->OFFICE:Lcom/amazon/kindle/krx/content/ContentType;

    const-string v9, "BT_OFFICE_DOC"

    const/4 v10, 0x7

    const/4 v11, 0x6

    const-string v12, "OFFICE_DOC"

    const/16 v14, 0x8

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/amazon/kcp/library/models/BookType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;I)V

    sput-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_OFFICE_DOC:Lcom/amazon/kcp/library/models/BookType;

    .line 63
    new-instance v0, Lcom/amazon/kcp/library/models/BookType;

    sget-object v6, Lcom/amazon/kindle/krx/content/ContentType;->AUDIBLE:Lcom/amazon/kindle/krx/content/ContentType;

    const-string v2, "BT_AUDIBLE_AUDIOBOOK"

    const/16 v3, 0x8

    const/4 v4, 0x7

    const-string v5, "AUDI"

    const/4 v7, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/amazon/kcp/library/models/BookType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;I)V

    sput-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_AUDIBLE_AUDIOBOOK:Lcom/amazon/kcp/library/models/BookType;

    .line 68
    new-instance v0, Lcom/amazon/kcp/library/models/BookType;

    sget-object v13, Lcom/amazon/kindle/krx/content/ContentType;->UNKNOWN:Lcom/amazon/kindle/krx/content/ContentType;

    const-string v9, "BT_CLOUD_DOC"

    const/16 v10, 0x9

    const/16 v11, 0x8

    const-string v12, "CDOC"

    const/4 v14, 0x2

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/amazon/kcp/library/models/BookType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;I)V

    sput-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_CLOUD_DOC:Lcom/amazon/kcp/library/models/BookType;

    .line 73
    new-instance v0, Lcom/amazon/kcp/library/models/BookType;

    sget-object v6, Lcom/amazon/kindle/krx/content/ContentType;->UNKNOWN:Lcom/amazon/kindle/krx/content/ContentType;

    const-string v2, "BT_SERIES_GROUP"

    const/16 v3, 0xa

    const/16 v4, 0xa

    const-string v5, "SERIES"

    const/16 v7, 0x11

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/amazon/kcp/library/models/BookType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;I)V

    sput-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_SERIES_GROUP:Lcom/amazon/kcp/library/models/BookType;

    .line 78
    new-instance v0, Lcom/amazon/kcp/library/models/BookType;

    sget-object v13, Lcom/amazon/kindle/krx/content/ContentType;->UNKNOWN:Lcom/amazon/kindle/krx/content/ContentType;

    const-string v9, "BT_PERIODICAL_GROUP"

    const/16 v10, 0xb

    const/16 v11, 0xb

    const-string v12, "PERIODICAL_GROUP"

    const/16 v14, 0x15

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/amazon/kcp/library/models/BookType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;I)V

    sput-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_PERIODICAL_GROUP:Lcom/amazon/kcp/library/models/BookType;

    .line 83
    new-instance v0, Lcom/amazon/kcp/library/models/BookType;

    sget-object v6, Lcom/amazon/kindle/krx/content/ContentType;->UNKNOWN:Lcom/amazon/kindle/krx/content/ContentType;

    const-string v2, "BT_NARRATIVE_GROUP"

    const/16 v3, 0xc

    const/16 v4, 0xc

    const-string v5, "NARRATIVE"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/amazon/kcp/library/models/BookType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;I)V

    sput-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_NARRATIVE_GROUP:Lcom/amazon/kcp/library/models/BookType;

    const/16 v1, 0xd

    new-array v1, v1, [Lcom/amazon/kcp/library/models/BookType;

    .line 14
    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_UNKNOWN:Lcom/amazon/kcp/library/models/BookType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_SAMPLE:Lcom/amazon/kcp/library/models/BookType;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PDOC:Lcom/amazon/kcp/library/models/BookType;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PSNL:Lcom/amazon/kcp/library/models/BookType;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_OFFICE_DOC:Lcom/amazon/kcp/library/models/BookType;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_AUDIBLE_AUDIOBOOK:Lcom/amazon/kcp/library/models/BookType;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_CLOUD_DOC:Lcom/amazon/kcp/library/models/BookType;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_SERIES_GROUP:Lcom/amazon/kcp/library/models/BookType;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_PERIODICAL_GROUP:Lcom/amazon/kcp/library/models/BookType;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    const/16 v2, 0xc

    aput-object v0, v1, v2

    sput-object v1, Lcom/amazon/kcp/library/models/BookType;->$VALUES:[Lcom/amazon/kcp/library/models/BookType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/krx/content/ContentType;",
            "I)V"
        }
    .end annotation

    .line 122
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 123
    iput p3, p0, Lcom/amazon/kcp/library/models/BookType;->value:I

    .line 124
    iput-object p4, p0, Lcom/amazon/kcp/library/models/BookType;->name:Ljava/lang/String;

    .line 125
    iput-object p5, p0, Lcom/amazon/kcp/library/models/BookType;->contentType:Lcom/amazon/kindle/krx/content/ContentType;

    .line 126
    iput p6, p0, Lcom/amazon/kcp/library/models/BookType;->flags:I

    return-void
.end method

.method public static getBookTypeFor(Ljava/lang/String;)Lcom/amazon/kcp/library/models/BookType;
    .locals 5

    .line 171
    invoke-static {}, Lcom/amazon/kcp/library/models/BookType;->values()[Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 172
    invoke-virtual {v3}, Lcom/amazon/kcp/library/models/BookType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 175
    :cond_1
    sget-object p0, Lcom/amazon/kcp/library/models/BookType;->BT_UNKNOWN:Lcom/amazon/kcp/library/models/BookType;

    return-object p0
.end method

.method public static getBookTypeFromContentType(Lcom/amazon/kindle/krx/content/ContentType;)Lcom/amazon/kcp/library/models/BookType;
    .locals 5

    .line 234
    sget-object v0, Lcom/amazon/kindle/krx/content/ContentType;->UNKNOWN:Lcom/amazon/kindle/krx/content/ContentType;

    if-ne p0, v0, :cond_0

    .line 235
    sget-object p0, Lcom/amazon/kcp/library/models/BookType;->BT_UNKNOWN:Lcom/amazon/kcp/library/models/BookType;

    return-object p0

    .line 237
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/library/models/BookType;->values()[Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 238
    invoke-virtual {v3}, Lcom/amazon/kcp/library/models/BookType;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v4

    if-ne v4, p0, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 242
    :cond_2
    sget-object p0, Lcom/amazon/kcp/library/models/BookType;->BT_UNKNOWN:Lcom/amazon/kcp/library/models/BookType;

    return-object p0
.end method

.method public static getCDEContentTypeFor(Lcom/amazon/kcp/library/models/BookType;)Ljava/lang/String;
    .locals 0

    .line 192
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/BookType;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPeriodicalBookTypes()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/amazon/kcp/library/models/BookType;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 201
    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/library/models/BookType;
    .locals 1

    .line 14
    const-class v0, Lcom/amazon/kcp/library/models/BookType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/library/models/BookType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/library/models/BookType;
    .locals 1

    .line 14
    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->$VALUES:[Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v0}, [Lcom/amazon/kcp/library/models/BookType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/library/models/BookType;

    return-object v0
.end method


# virtual methods
.method public getContentType()Lcom/amazon/kindle/krx/content/ContentType;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/amazon/kcp/library/models/BookType;->contentType:Lcom/amazon/kindle/krx/content/ContentType;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/amazon/kcp/library/models/BookType;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 142
    iget v0, p0, Lcom/amazon/kcp/library/models/BookType;->value:I

    return v0
.end method

.method public isDocument()Z
    .locals 1

    .line 215
    iget v0, p0, Lcom/amazon/kcp/library/models/BookType;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGroup()Z
    .locals 1

    .line 230
    iget v0, p0, Lcom/amazon/kcp/library/models/BookType;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPeriodical()Z
    .locals 1

    .line 208
    iget v0, p0, Lcom/amazon/kcp/library/models/BookType;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReaderContent()Z
    .locals 2

    .line 155
    iget v0, p0, Lcom/amazon/kcp/library/models/BookType;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
