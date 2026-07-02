.class public Lcom/amazon/notebook/module/exporting/citations/CitationAuthorName;
.super Ljava/lang/Object;
.source "CitationAuthorName.java"


# instance fields
.field private final components:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/amazon/notebook/module/exporting/citations/CitationAuthorName;->components:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAbbreviatedNameWithComma()Ljava/lang/String;
    .locals 6

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    iget-object v1, p0, Lcom/amazon/notebook/module/exporting/citations/CitationAuthorName;->components:[Ljava/lang/String;

    array-length v2, v1

    if-lez v2, :cond_3

    .line 79
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 81
    :goto_0
    iget-object v3, p0, Lcom/amazon/notebook/module/exporting/citations/CitationAuthorName;->components:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_3

    if-nez v2, :cond_0

    const-string v3, ", "

    .line 83
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    :cond_0
    iget-object v3, p0, Lcom/amazon/notebook/module/exporting/citations/CitationAuthorName;->components:[Ljava/lang/String;

    aget-object v3, v3, v2

    const/16 v4, 0x2e

    .line 87
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 88
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 90
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget-object v3, p0, Lcom/amazon/notebook/module/exporting/citations/CitationAuthorName;->components:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x2

    if-eq v2, v3, :cond_2

    const-string v3, " "

    .line 93
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 98
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWholeName()Ljava/lang/String;
    .locals 4

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 26
    :goto_0
    iget-object v2, p0, Lcom/amazon/notebook/module/exporting/citations/CitationAuthorName;->components:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 27
    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    iget-object v2, p0, Lcom/amazon/notebook/module/exporting/citations/CitationAuthorName;->components:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v2, " "

    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWholeNameWithComma()Ljava/lang/String;
    .locals 3

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    iget-object v1, p0, Lcom/amazon/notebook/module/exporting/citations/CitationAuthorName;->components:[Ljava/lang/String;

    array-length v2, v1

    if-lez v2, :cond_2

    .line 49
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 51
    :goto_0
    iget-object v2, p0, Lcom/amazon/notebook/module/exporting/citations/CitationAuthorName;->components:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    if-nez v1, :cond_0

    const-string v2, ", "

    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    :cond_0
    iget-object v2, p0, Lcom/amazon/notebook/module/exporting/citations/CitationAuthorName;->components:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget-object v2, p0, Lcom/amazon/notebook/module/exporting/citations/CitationAuthorName;->components:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    if-eq v1, v2, :cond_1

    const-string v2, " "

    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
