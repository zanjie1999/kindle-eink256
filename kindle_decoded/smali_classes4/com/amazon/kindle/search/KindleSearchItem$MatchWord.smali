.class public Lcom/amazon/kindle/search/KindleSearchItem$MatchWord;
.super Ljava/lang/Object;
.source "KindleSearchItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/search/KindleSearchItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MatchWord"
.end annotation


# instance fields
.field comparisonText:[C

.field public final firstIntPosition:I

.field public final lastIntPosition:I

.field originalText:Ljava/lang/String;

.field valid:Z


# direct methods
.method constructor <init>(Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;ZZ)V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iget-object v0, p1, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->token:Ljava/lang/String;

    invoke-virtual {p0, v0, p2, p3}, Lcom/amazon/kindle/search/KindleSearchItem$MatchWord;->setText(Ljava/lang/String;ZZ)V

    .line 103
    iget p2, p1, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->start:I

    iput p2, p0, Lcom/amazon/kindle/search/KindleSearchItem$MatchWord;->firstIntPosition:I

    .line 104
    iget p1, p1, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->end:I

    iput p1, p0, Lcom/amazon/kindle/search/KindleSearchItem$MatchWord;->lastIntPosition:I

    return-void
.end method


# virtual methods
.method setText(Ljava/lang/String;ZZ)V
    .locals 2

    .line 108
    iput-object p1, p0, Lcom/amazon/kindle/search/KindleSearchItem$MatchWord;->originalText:Ljava/lang/String;

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 111
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->stripDiacritics(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    goto :goto_0

    .line 112
    :cond_0
    invoke-static {p1}, Lcom/amazon/kindle/search/SearchUtils;->stripCommonDiacriticsToCharArray(Ljava/lang/String;)[C

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/amazon/kindle/search/KindleSearchItem$MatchWord;->comparisonText:[C

    goto :goto_1

    .line 115
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/search/KindleSearchItem$MatchWord;->comparisonText:[C

    :goto_1
    const/4 p1, 0x0

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 119
    :goto_2
    iget-object v0, p0, Lcom/amazon/kindle/search/KindleSearchItem$MatchWord;->comparisonText:[C

    array-length v1, v0

    if-ge p2, v1, :cond_4

    .line 120
    aget-char v0, v0, p2

    .line 121
    invoke-static {v0}, Lcom/amazon/kindle/search/SearchUtils;->isPunctuation(C)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lcom/amazon/kindle/search/SearchUtils;->isSpace(C)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    .line 125
    :cond_2
    iget-object p3, p0, Lcom/amazon/kindle/search/KindleSearchItem$MatchWord;->comparisonText:[C

    aget-char v0, p3, p2

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    aput-char v0, p3, p2

    const/4 p3, 0x1

    goto :goto_4

    .line 122
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/amazon/kindle/search/KindleSearchItem$MatchWord;->comparisonText:[C

    aput-char p1, v0, p2

    :goto_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 128
    :cond_4
    iput-boolean p3, p0, Lcom/amazon/kindle/search/KindleSearchItem$MatchWord;->valid:Z

    return-void
.end method
