.class final Lcom/amazon/kcp/wordwise/gloss/PinyinModel$1;
.super Ljava/lang/Object;
.source "PinyinModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/wordwise/gloss/PinyinModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;)I
    .locals 2

    .line 58
    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->getDifficulty()I

    move-result v0

    invoke-virtual {p2}, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->getDifficulty()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 59
    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->getDifficulty()I

    move-result p1

    invoke-virtual {p2}, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->getDifficulty()I

    move-result p2

    :goto_0
    sub-int/2addr p1, p2

    return p1

    .line 61
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->getStartPosition()I

    move-result p1

    invoke-virtual {p2}, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->getStartPosition()I

    move-result p2

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 55
    check-cast p1, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;

    check-cast p2, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/wordwise/gloss/PinyinModel$1;->compare(Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;)I

    move-result p1

    return p1
.end method
