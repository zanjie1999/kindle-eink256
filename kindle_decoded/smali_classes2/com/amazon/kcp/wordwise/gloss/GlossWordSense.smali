.class public Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;
.super Ljava/lang/Object;
.source "GlossWordSense.java"


# instance fields
.field private final definition:Ljava/lang/String;

.field private final displayLemma:Ljava/lang/String;

.field private final exampleSentence:Ljava/lang/String;

.field private final partOfSpeech:Ljava/lang/String;

.field private final senseId:I

.field private final shortDefinition:Ljava/lang/String;

.field private final source:Ljava/lang/String;

.field private final termId:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;->senseId:I

    .line 44
    iput p2, p0, Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;->termId:I

    .line 45
    iput-object p3, p0, Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;->shortDefinition:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;->definition:Ljava/lang/String;

    .line 47
    iput-object p5, p0, Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;->exampleSentence:Ljava/lang/String;

    .line 48
    iput-object p6, p0, Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;->partOfSpeech:Ljava/lang/String;

    .line 49
    iput-object p7, p0, Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;->displayLemma:Ljava/lang/String;

    .line 50
    iput-object p8, p0, Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;->source:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDefinition()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;->definition:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayLemma()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;->displayLemma:Ljava/lang/String;

    return-object v0
.end method

.method public getPartOfSpeech()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;->partOfSpeech:Ljava/lang/String;

    return-object v0
.end method

.method public getSenseId()I
    .locals 1

    .line 104
    iget v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;->senseId:I

    return v0
.end method

.method public getSentence()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;->exampleSentence:Ljava/lang/String;

    return-object v0
.end method

.method public getShortDefinition()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;->shortDefinition:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getTermId()I
    .locals 1

    .line 122
    iget v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;->termId:I

    return v0
.end method
