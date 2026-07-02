.class public Lcom/amazon/rma/rs/encoding/ContentType;
.super Ljava/lang/Object;
.source "ContentType.java"


# static fields
.field public static final AUDIBLE:Lcom/amazon/rma/rs/encoding/ContentType;

.field public static final BLOG:Lcom/amazon/rma/rs/encoding/ContentType;

.field public static final EBOOK:Lcom/amazon/rma/rs/encoding/ContentType;

.field public static final EBOOK_SAMPLE:Lcom/amazon/rma/rs/encoding/ContentType;

.field public static final KDK:Lcom/amazon/rma/rs/encoding/ContentType;

.field public static final MAGAZINE:Lcom/amazon/rma/rs/encoding/ContentType;

.field public static final NEWSPAPER:Lcom/amazon/rma/rs/encoding/ContentType;

.field public static final PDOC:Lcom/amazon/rma/rs/encoding/ContentType;

.field public static final PERSONAL_LETTER:Lcom/amazon/rma/rs/encoding/ContentType;

.field public static final SIDELOADED:Lcom/amazon/rma/rs/encoding/ContentType;

.field public static final UNKNOWN:Lcom/amazon/rma/rs/encoding/ContentType;


# instance fields
.field public final cdeType:Ljava/lang/String;

.field public final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 9
    new-instance v0, Lcom/amazon/rma/rs/encoding/ContentType;

    const/4 v1, 0x0

    const-string v2, "EBOK"

    invoke-direct {v0, v1, v2}, Lcom/amazon/rma/rs/encoding/ContentType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/rma/rs/encoding/ContentType;->EBOOK:Lcom/amazon/rma/rs/encoding/ContentType;

    .line 10
    new-instance v0, Lcom/amazon/rma/rs/encoding/ContentType;

    const/4 v1, 0x1

    const-string v2, "EBSP"

    invoke-direct {v0, v1, v2}, Lcom/amazon/rma/rs/encoding/ContentType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/rma/rs/encoding/ContentType;->EBOOK_SAMPLE:Lcom/amazon/rma/rs/encoding/ContentType;

    .line 11
    new-instance v0, Lcom/amazon/rma/rs/encoding/ContentType;

    const/4 v1, 0x2

    const-string v2, "MAGZ"

    invoke-direct {v0, v1, v2}, Lcom/amazon/rma/rs/encoding/ContentType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/rma/rs/encoding/ContentType;->MAGAZINE:Lcom/amazon/rma/rs/encoding/ContentType;

    .line 12
    new-instance v0, Lcom/amazon/rma/rs/encoding/ContentType;

    const/4 v1, 0x3

    const-string v2, "NWPR"

    invoke-direct {v0, v1, v2}, Lcom/amazon/rma/rs/encoding/ContentType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/rma/rs/encoding/ContentType;->NEWSPAPER:Lcom/amazon/rma/rs/encoding/ContentType;

    .line 13
    new-instance v0, Lcom/amazon/rma/rs/encoding/ContentType;

    const/4 v1, 0x4

    const-string v2, "BLOG"

    invoke-direct {v0, v1, v2}, Lcom/amazon/rma/rs/encoding/ContentType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/rma/rs/encoding/ContentType;->BLOG:Lcom/amazon/rma/rs/encoding/ContentType;

    .line 14
    new-instance v0, Lcom/amazon/rma/rs/encoding/ContentType;

    const/4 v1, 0x5

    const-string v2, "PDOC"

    invoke-direct {v0, v1, v2}, Lcom/amazon/rma/rs/encoding/ContentType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/rma/rs/encoding/ContentType;->PDOC:Lcom/amazon/rma/rs/encoding/ContentType;

    .line 15
    new-instance v0, Lcom/amazon/rma/rs/encoding/ContentType;

    const/4 v1, 0x6

    const-string v2, "SIDE"

    invoke-direct {v0, v1, v2}, Lcom/amazon/rma/rs/encoding/ContentType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/rma/rs/encoding/ContentType;->SIDELOADED:Lcom/amazon/rma/rs/encoding/ContentType;

    .line 16
    new-instance v0, Lcom/amazon/rma/rs/encoding/ContentType;

    const/4 v1, 0x7

    const-string v2, "UNK"

    invoke-direct {v0, v1, v2}, Lcom/amazon/rma/rs/encoding/ContentType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/rma/rs/encoding/ContentType;->UNKNOWN:Lcom/amazon/rma/rs/encoding/ContentType;

    .line 17
    new-instance v0, Lcom/amazon/rma/rs/encoding/ContentType;

    const/16 v1, 0x8

    const-string v2, "AUDIBLE"

    invoke-direct {v0, v1, v2}, Lcom/amazon/rma/rs/encoding/ContentType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/rma/rs/encoding/ContentType;->AUDIBLE:Lcom/amazon/rma/rs/encoding/ContentType;

    .line 18
    new-instance v0, Lcom/amazon/rma/rs/encoding/ContentType;

    const/16 v1, 0x9

    const-string v2, "KDK"

    invoke-direct {v0, v1, v2}, Lcom/amazon/rma/rs/encoding/ContentType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/rma/rs/encoding/ContentType;->KDK:Lcom/amazon/rma/rs/encoding/ContentType;

    .line 19
    new-instance v0, Lcom/amazon/rma/rs/encoding/ContentType;

    const/16 v1, 0xa

    const-string v2, "PSNL"

    invoke-direct {v0, v1, v2}, Lcom/amazon/rma/rs/encoding/ContentType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/rma/rs/encoding/ContentType;->PERSONAL_LETTER:Lcom/amazon/rma/rs/encoding/ContentType;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput p1, p0, Lcom/amazon/rma/rs/encoding/ContentType;->id:I

    .line 88
    iput-object p2, p0, Lcom/amazon/rma/rs/encoding/ContentType;->cdeType:Ljava/lang/String;

    return-void
.end method

.method public static fromCdeType(Ljava/lang/String;)Lcom/amazon/rma/rs/encoding/ContentType;
    .locals 1

    .line 27
    sget-object v0, Lcom/amazon/rma/rs/encoding/ContentType;->EBOOK:Lcom/amazon/rma/rs/encoding/ContentType;

    iget-object v0, v0, Lcom/amazon/rma/rs/encoding/ContentType;->cdeType:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    sget-object p0, Lcom/amazon/rma/rs/encoding/ContentType;->EBOOK:Lcom/amazon/rma/rs/encoding/ContentType;

    return-object p0

    .line 29
    :cond_0
    sget-object v0, Lcom/amazon/rma/rs/encoding/ContentType;->EBOOK_SAMPLE:Lcom/amazon/rma/rs/encoding/ContentType;

    iget-object v0, v0, Lcom/amazon/rma/rs/encoding/ContentType;->cdeType:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    sget-object p0, Lcom/amazon/rma/rs/encoding/ContentType;->EBOOK_SAMPLE:Lcom/amazon/rma/rs/encoding/ContentType;

    return-object p0

    .line 31
    :cond_1
    sget-object v0, Lcom/amazon/rma/rs/encoding/ContentType;->MAGAZINE:Lcom/amazon/rma/rs/encoding/ContentType;

    iget-object v0, v0, Lcom/amazon/rma/rs/encoding/ContentType;->cdeType:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 32
    sget-object p0, Lcom/amazon/rma/rs/encoding/ContentType;->MAGAZINE:Lcom/amazon/rma/rs/encoding/ContentType;

    return-object p0

    .line 33
    :cond_2
    sget-object v0, Lcom/amazon/rma/rs/encoding/ContentType;->NEWSPAPER:Lcom/amazon/rma/rs/encoding/ContentType;

    iget-object v0, v0, Lcom/amazon/rma/rs/encoding/ContentType;->cdeType:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 34
    sget-object p0, Lcom/amazon/rma/rs/encoding/ContentType;->NEWSPAPER:Lcom/amazon/rma/rs/encoding/ContentType;

    return-object p0

    .line 35
    :cond_3
    sget-object v0, Lcom/amazon/rma/rs/encoding/ContentType;->BLOG:Lcom/amazon/rma/rs/encoding/ContentType;

    iget-object v0, v0, Lcom/amazon/rma/rs/encoding/ContentType;->cdeType:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 36
    sget-object p0, Lcom/amazon/rma/rs/encoding/ContentType;->BLOG:Lcom/amazon/rma/rs/encoding/ContentType;

    return-object p0

    .line 37
    :cond_4
    sget-object v0, Lcom/amazon/rma/rs/encoding/ContentType;->PDOC:Lcom/amazon/rma/rs/encoding/ContentType;

    iget-object v0, v0, Lcom/amazon/rma/rs/encoding/ContentType;->cdeType:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 38
    sget-object p0, Lcom/amazon/rma/rs/encoding/ContentType;->PDOC:Lcom/amazon/rma/rs/encoding/ContentType;

    return-object p0

    .line 39
    :cond_5
    sget-object v0, Lcom/amazon/rma/rs/encoding/ContentType;->SIDELOADED:Lcom/amazon/rma/rs/encoding/ContentType;

    iget-object v0, v0, Lcom/amazon/rma/rs/encoding/ContentType;->cdeType:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    if-nez p0, :cond_6

    goto :goto_0

    .line 41
    :cond_6
    sget-object v0, Lcom/amazon/rma/rs/encoding/ContentType;->AUDIBLE:Lcom/amazon/rma/rs/encoding/ContentType;

    iget-object v0, v0, Lcom/amazon/rma/rs/encoding/ContentType;->cdeType:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 42
    sget-object p0, Lcom/amazon/rma/rs/encoding/ContentType;->AUDIBLE:Lcom/amazon/rma/rs/encoding/ContentType;

    return-object p0

    .line 43
    :cond_7
    sget-object v0, Lcom/amazon/rma/rs/encoding/ContentType;->KDK:Lcom/amazon/rma/rs/encoding/ContentType;

    iget-object v0, v0, Lcom/amazon/rma/rs/encoding/ContentType;->cdeType:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 44
    sget-object p0, Lcom/amazon/rma/rs/encoding/ContentType;->KDK:Lcom/amazon/rma/rs/encoding/ContentType;

    return-object p0

    .line 45
    :cond_8
    sget-object v0, Lcom/amazon/rma/rs/encoding/ContentType;->PERSONAL_LETTER:Lcom/amazon/rma/rs/encoding/ContentType;

    iget-object v0, v0, Lcom/amazon/rma/rs/encoding/ContentType;->cdeType:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 46
    sget-object p0, Lcom/amazon/rma/rs/encoding/ContentType;->PERSONAL_LETTER:Lcom/amazon/rma/rs/encoding/ContentType;

    return-object p0

    .line 48
    :cond_9
    sget-object p0, Lcom/amazon/rma/rs/encoding/ContentType;->UNKNOWN:Lcom/amazon/rma/rs/encoding/ContentType;

    return-object p0

    .line 40
    :cond_a
    :goto_0
    sget-object p0, Lcom/amazon/rma/rs/encoding/ContentType;->SIDELOADED:Lcom/amazon/rma/rs/encoding/ContentType;

    return-object p0
.end method

.method public static fromID(I)Lcom/amazon/rma/rs/encoding/ContentType;
    .locals 2

    .line 57
    sget-object v0, Lcom/amazon/rma/rs/encoding/ContentType;->EBOOK:Lcom/amazon/rma/rs/encoding/ContentType;

    iget v1, v0, Lcom/amazon/rma/rs/encoding/ContentType;->id:I

    if-ne p0, v1, :cond_0

    return-object v0

    .line 59
    :cond_0
    sget-object v0, Lcom/amazon/rma/rs/encoding/ContentType;->EBOOK_SAMPLE:Lcom/amazon/rma/rs/encoding/ContentType;

    iget v1, v0, Lcom/amazon/rma/rs/encoding/ContentType;->id:I

    if-ne p0, v1, :cond_1

    return-object v0

    .line 61
    :cond_1
    sget-object v0, Lcom/amazon/rma/rs/encoding/ContentType;->MAGAZINE:Lcom/amazon/rma/rs/encoding/ContentType;

    iget v1, v0, Lcom/amazon/rma/rs/encoding/ContentType;->id:I

    if-ne p0, v1, :cond_2

    return-object v0

    .line 63
    :cond_2
    sget-object v0, Lcom/amazon/rma/rs/encoding/ContentType;->NEWSPAPER:Lcom/amazon/rma/rs/encoding/ContentType;

    iget v1, v0, Lcom/amazon/rma/rs/encoding/ContentType;->id:I

    if-ne p0, v1, :cond_3

    return-object v0

    .line 65
    :cond_3
    sget-object v0, Lcom/amazon/rma/rs/encoding/ContentType;->BLOG:Lcom/amazon/rma/rs/encoding/ContentType;

    iget v1, v0, Lcom/amazon/rma/rs/encoding/ContentType;->id:I

    if-ne p0, v1, :cond_4

    return-object v0

    .line 67
    :cond_4
    sget-object v0, Lcom/amazon/rma/rs/encoding/ContentType;->PDOC:Lcom/amazon/rma/rs/encoding/ContentType;

    iget v1, v0, Lcom/amazon/rma/rs/encoding/ContentType;->id:I

    if-ne p0, v1, :cond_5

    return-object v0

    .line 69
    :cond_5
    sget-object v0, Lcom/amazon/rma/rs/encoding/ContentType;->SIDELOADED:Lcom/amazon/rma/rs/encoding/ContentType;

    iget v1, v0, Lcom/amazon/rma/rs/encoding/ContentType;->id:I

    if-ne p0, v1, :cond_6

    return-object v0

    .line 71
    :cond_6
    sget-object v0, Lcom/amazon/rma/rs/encoding/ContentType;->AUDIBLE:Lcom/amazon/rma/rs/encoding/ContentType;

    iget v1, v0, Lcom/amazon/rma/rs/encoding/ContentType;->id:I

    if-ne p0, v1, :cond_7

    return-object v0

    .line 73
    :cond_7
    sget-object v0, Lcom/amazon/rma/rs/encoding/ContentType;->KDK:Lcom/amazon/rma/rs/encoding/ContentType;

    iget v1, v0, Lcom/amazon/rma/rs/encoding/ContentType;->id:I

    if-ne p0, v1, :cond_8

    return-object v0

    .line 75
    :cond_8
    sget-object v0, Lcom/amazon/rma/rs/encoding/ContentType;->PERSONAL_LETTER:Lcom/amazon/rma/rs/encoding/ContentType;

    iget v1, v0, Lcom/amazon/rma/rs/encoding/ContentType;->id:I

    if-ne p0, v1, :cond_9

    return-object v0

    .line 77
    :cond_9
    sget-object v0, Lcom/amazon/rma/rs/encoding/ContentType;->UNKNOWN:Lcom/amazon/rma/rs/encoding/ContentType;

    iget v1, v0, Lcom/amazon/rma/rs/encoding/ContentType;->id:I

    if-ne p0, v1, :cond_a

    return-object v0

    :cond_a
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/amazon/rma/rs/encoding/ContentType;->cdeType:Ljava/lang/String;

    return-object v0
.end method
