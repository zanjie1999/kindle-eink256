.class public Lcom/fasterxml/jackson/databind/PropertyNamingStrategy$KebabCaseStrategy;
.super Lcom/fasterxml/jackson/databind/PropertyNamingStrategy$PropertyNamingStrategyBase;
.source "PropertyNamingStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KebabCaseStrategy"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 360
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy$PropertyNamingStrategyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public translate(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    if-nez p1, :cond_0

    return-object p1

    .line 366
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    .line 371
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    shr-int/lit8 v2, v0, 0x1

    add-int/2addr v2, v0

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_5

    .line 376
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 377
    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    const/16 v7, 0x2d

    if-ne v6, v5, :cond_3

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    .line 384
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v1, v4, v7}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    if-nez v4, :cond_4

    if-lez v3, :cond_4

    .line 390
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 394
    :goto_1
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 396
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
