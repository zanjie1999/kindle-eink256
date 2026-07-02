.class public Lcom/amazon/kindle/collections/util/PronounceableName;
.super Ljava/lang/Object;
.source "PronounceableName.java"


# instance fields
.field private name:Ljava/lang/String;

.field private pronunciation:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/amazon/kindle/collections/util/PronounceableName;->name:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/amazon/kindle/collections/util/PronounceableName;->pronunciation:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/amazon/kindle/collections/util/PronounceableName;

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 44
    :cond_1
    check-cast p1, Lcom/amazon/kindle/collections/util/PronounceableName;

    .line 45
    iget-object v2, p0, Lcom/amazon/kindle/collections/util/PronounceableName;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/kindle/collections/util/PronounceableName;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amazon/kindle/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/kindle/collections/util/PronounceableName;->pronunciation:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/kindle/collections/util/PronounceableName;->pronunciation:Ljava/lang/String;

    .line 46
    invoke-static {v2, p1}, Lcom/amazon/kindle/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/amazon/kindle/collections/util/PronounceableName;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPronunciation()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/amazon/kindle/collections/util/PronounceableName;->pronunciation:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 24
    fill-array-data v0, :array_0

    const/4 v1, 0x0

    .line 25
    aget v1, v0, v1

    .line 26
    iget-object v2, p0, Lcom/amazon/kindle/collections/util/PronounceableName;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    .line 27
    aget v3, v0, v3

    mul-int v1, v1, v3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 29
    :cond_0
    iget-object v2, p0, Lcom/amazon/kindle/collections/util/PronounceableName;->pronunciation:Ljava/lang/String;

    if-eqz v2, :cond_1

    const/4 v3, 0x2

    .line 30
    aget v0, v0, v3

    mul-int v1, v1, v0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    return v1

    :array_0
    .array-data 4
        0x11
        0x1f
        0x29
    .end array-data
.end method
