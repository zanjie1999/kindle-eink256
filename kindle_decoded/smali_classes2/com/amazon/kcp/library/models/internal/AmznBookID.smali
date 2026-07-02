.class public Lcom/amazon/kcp/library/models/internal/AmznBookID;
.super Ljava/lang/Object;
.source "AmznBookID.java"

# interfaces
.implements Lcom/amazon/kindle/model/content/IBookID;


# static fields
.field public static ASIN_REGEX:Lkotlin/text/Regex; = null

.field private static final DIVIDER:Ljava/lang/String; = "/"

.field private static final SERIALIZED_PREFIX:Ljava/lang/String; = "AMZNID0"


# instance fields
.field private final asin:Ljava/lang/String;

.field private final serializedForm:Ljava/lang/String;

.field private final type:Lcom/amazon/kcp/library/models/BookType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "^[0-9]{9}[0-9Xx]|[A-Za-z][A-Za-z0-9]{9}$"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/library/models/internal/AmznBookID;->ASIN_REGEX:Lkotlin/text/Regex;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/AmznBookID;->asin:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/amazon/kcp/library/models/internal/AmznBookID;->type:Lcom/amazon/kcp/library/models/BookType;

    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AMZNID0/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/AmznBookID;->asin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amazon/kcp/library/models/BookType;->getValue()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/AmznBookID;->serializedForm:Ljava/lang/String;

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/amazon/kcp/library/models/internal/AmznBookID;
    .locals 8

    if-eqz p0, :cond_3

    const-string v0, "AMZNID0"

    .line 131
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "/"

    .line 132
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 133
    array-length v1, p0

    const/4 v2, 0x3

    if-lt v1, v2, :cond_3

    .line 135
    :try_start_0
    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 136
    invoke-static {}, Lcom/amazon/kcp/library/models/BookType;->values()[Lcom/amazon/kcp/library/models/BookType;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    .line 137
    invoke-virtual {v6}, Lcom/amazon/kcp/library/models/BookType;->getValue()I

    move-result v7

    if-ne v1, v7, :cond_2

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    .line 139
    :goto_1
    array-length v4, p0

    sub-int/2addr v4, v2

    if-ge v3, v4, :cond_1

    if-le v3, v2, :cond_0

    .line 141
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :cond_0
    aget-object v4, p0, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 145
    :cond_1
    new-instance p0, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseForAsin(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 103
    invoke-static {p0}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->parse(Ljava/lang/String;)Lcom/amazon/kcp/library/models/internal/AmznBookID;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->getAsin()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static parseForBookType(Ljava/lang/String;)Lcom/amazon/kcp/library/models/BookType;
    .locals 0

    .line 114
    invoke-static {p0}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->parse(Ljava/lang/String;)Lcom/amazon/kcp/library/models/internal/AmznBookID;

    move-result-object p0

    if-nez p0, :cond_0

    .line 115
    sget-object p0, Lcom/amazon/kcp/library/models/BookType;->BT_UNKNOWN:Lcom/amazon/kcp/library/models/BookType;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 75
    :cond_0
    instance-of v1, p1, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 78
    :cond_1
    check-cast p1, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    .line 81
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/AmznBookID;->asin:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/kcp/library/models/internal/AmznBookID;->asin:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/AmznBookID;->type:Lcom/amazon/kcp/library/models/BookType;

    iget-object p1, p1, Lcom/amazon/kcp/library/models/internal/AmznBookID;->type:Lcom/amazon/kcp/library/models/BookType;

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAsin()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/AmznBookID;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedForm()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/AmznBookID;->serializedForm:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/amazon/kcp/library/models/BookType;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/AmznBookID;->type:Lcom/amazon/kcp/library/models/BookType;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/AmznBookID;->serializedForm:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isHidden()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/AmznBookID;->serializedForm:Ljava/lang/String;

    return-object v0
.end method
