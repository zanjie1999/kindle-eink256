.class public Lcom/amazon/kedu/flashcards/models/CardSideModel;
.super Ljava/lang/Object;
.source "CardSideModel.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/amazon/kedu/flashcards/models/CardSideModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private end:Lcom/amazon/kindle/krx/reader/IPosition;

.field private start:Lcom/amazon/kindle/krx/reader/IPosition;

.field private text:Ljava/lang/String;

.field private type:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const-class v0, Lcom/amazon/kedu/flashcards/models/CardSideModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kedu/flashcards/models/CardSideModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;Ljava/lang/String;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    sget-object p1, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;->CUSTOM:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    :goto_0
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/models/CardSideModel;->type:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const-string p2, ""

    .line 21
    :goto_1
    iput-object p2, p0, Lcom/amazon/kedu/flashcards/models/CardSideModel;->text:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/amazon/kedu/flashcards/models/CardSideModel;->start:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 23
    iput-object p4, p0, Lcom/amazon/kedu/flashcards/models/CardSideModel;->end:Lcom/amazon/kindle/krx/reader/IPosition;

    return-void
.end method

.method private nullSafeCompareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable;",
            ">(TT;TT;)I"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    if-eqz p2, :cond_3

    const/4 p1, -0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private static toLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 42
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public compareTo(Lcom/amazon/kedu/flashcards/models/CardSideModel;)I
    .locals 2

    .line 69
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/models/CardSideModel;->hasImage()Z

    move-result v0

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/CardSideModel;->hasImage()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 71
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/models/CardSideModel;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 83
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/models/CardSideModel;->text:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kedu/flashcards/models/CardSideModel;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/amazon/kedu/flashcards/models/CardSideModel;->text:Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/kedu/flashcards/models/CardSideModel;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/amazon/kedu/flashcards/models/CardSideModel;->nullSafeCompareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    :cond_2
    if-nez v0, :cond_3

    .line 88
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/models/CardSideModel;->start:Lcom/amazon/kindle/krx/reader/IPosition;

    iget-object v1, p1, Lcom/amazon/kedu/flashcards/models/CardSideModel;->start:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-direct {p0, v0, v1}, Lcom/amazon/kedu/flashcards/models/CardSideModel;->nullSafeCompareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    :cond_3
    if-nez v0, :cond_4

    .line 93
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/models/CardSideModel;->end:Lcom/amazon/kindle/krx/reader/IPosition;

    iget-object v1, p1, Lcom/amazon/kedu/flashcards/models/CardSideModel;->end:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-direct {p0, v0, v1}, Lcom/amazon/kedu/flashcards/models/CardSideModel;->nullSafeCompareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    :cond_4
    if-nez v0, :cond_5

    .line 98
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/models/CardSideModel;->type:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    iget-object p1, p1, Lcom/amazon/kedu/flashcards/models/CardSideModel;->type:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    invoke-direct {p0, v0, p1}, Lcom/amazon/kedu/flashcards/models/CardSideModel;->nullSafeCompareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    :cond_5
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 9
    check-cast p1, Lcom/amazon/kedu/flashcards/models/CardSideModel;

    invoke-virtual {p0, p1}, Lcom/amazon/kedu/flashcards/models/CardSideModel;->compareTo(Lcom/amazon/kedu/flashcards/models/CardSideModel;)I

    move-result p1

    return p1
.end method

.method public getEnd()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/models/CardSideModel;->end:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object v0
.end method

.method public getStart()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/models/CardSideModel;->start:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/models/CardSideModel;->type:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    sget-object v1, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;->GHL:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 133
    iget-object v2, p0, Lcom/amazon/kedu/flashcards/models/CardSideModel;->start:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/amazon/kedu/flashcards/models/CardSideModel;->end:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "%d-%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/models/CardSideModel;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/models/CardSideModel;->type:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    return-object v0
.end method

.method public hasImage()Z
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/models/CardSideModel;->type:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    sget-object v1, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;->GHL:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected setEnd(Lcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/models/CardSideModel;->end:Lcom/amazon/kindle/krx/reader/IPosition;

    return-void
.end method

.method protected setStart(Lcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/models/CardSideModel;->start:Lcom/amazon/kindle/krx/reader/IPosition;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 143
    :goto_0
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/models/CardSideModel;->text:Ljava/lang/String;

    return-void
.end method

.method protected setType(Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/models/CardSideModel;->type:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    return-void
.end method
