.class public Lcom/fasterxml/jackson/databind/PropertyNamingStrategy$SnakeCaseStrategy;
.super Lcom/fasterxml/jackson/databind/PropertyNamingStrategy$PropertyNamingStrategyBase;
.source "PropertyNamingStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SnakeCaseStrategy"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 257
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy$PropertyNamingStrategyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public translate(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    if-nez p1, :cond_0

    return-object p1

    .line 263
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, v0, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v3, v0, :cond_5

    .line 269
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x5f

    if-gtz v3, :cond_1

    if-eq v6, v7, :cond_4

    .line 272
    :cond_1
    invoke-static {v6}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_3

    if-nez v5, :cond_2

    if-lez v4, :cond_2

    add-int/lit8 v5, v4, -0x1

    .line 274
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_2

    .line 276
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    .line 279
    :cond_2
    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    .line 286
    :goto_1
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/2addr v4, v9

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    if-lez v4, :cond_6

    .line 290
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_6
    return-object p1
.end method
