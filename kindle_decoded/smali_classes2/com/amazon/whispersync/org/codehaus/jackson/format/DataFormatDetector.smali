.class public Lcom/amazon/whispersync/org/codehaus/jackson/format/DataFormatDetector;
.super Ljava/lang/Object;
.source "DataFormatDetector.java"


# static fields
.field public static final DEFAULT_MAX_INPUT_LOOKAHEAD:I = 0x40


# instance fields
.field protected final _detectors:[Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

.field protected final _maxInputLookahead:I

.field protected final _minimalMatch:Lcom/amazon/whispersync/org/codehaus/jackson/format/MatchStrength;

.field protected final _optimalMatch:Lcom/amazon/whispersync/org/codehaus/jackson/format/MatchStrength;


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;",
            ">;)V"
        }
    .end annotation

    .line 65
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/format/DataFormatDetector;-><init>([Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;)V

    return-void
.end method

.method public varargs constructor <init>([Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;)V
    .locals 3

    .line 60
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/format/MatchStrength;->SOLID_MATCH:Lcom/amazon/whispersync/org/codehaus/jackson/format/MatchStrength;

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/format/MatchStrength;->WEAK_MATCH:Lcom/amazon/whispersync/org/codehaus/jackson/format/MatchStrength;

    const/16 v2, 0x40

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/format/DataFormatDetector;-><init>([Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;Lcom/amazon/whispersync/org/codehaus/jackson/format/MatchStrength;Lcom/amazon/whispersync/org/codehaus/jackson/format/MatchStrength;I)V

    return-void
.end method

.method private constructor <init>([Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;Lcom/amazon/whispersync/org/codehaus/jackson/format/MatchStrength;Lcom/amazon/whispersync/org/codehaus/jackson/format/MatchStrength;I)V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/format/DataFormatDetector;->_detectors:[Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    .line 108
    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/format/DataFormatDetector;->_optimalMatch:Lcom/amazon/whispersync/org/codehaus/jackson/format/MatchStrength;

    .line 109
    iput-object p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/format/DataFormatDetector;->_minimalMatch:Lcom/amazon/whispersync/org/codehaus/jackson/format/MatchStrength;

    .line 110
    iput p4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/format/DataFormatDetector;->_maxInputLookahead:I

    return-void
.end method

.method private _findFormat(Lcom/amazon/whispersync/org/codehaus/jackson/format/InputAccessor$Std;)Lcom/amazon/whispersync/org/codehaus/jackson/format/DataFormatMatcher;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/format/DataFormatDetector;->_detectors:[Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_4

    aget-object v5, v0, v4

    .line 155
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/format/InputAccessor$Std;->reset()V

    .line 156
    invoke-virtual {v5, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;->hasFormat(Lcom/amazon/whispersync/org/codehaus/jackson/format/InputAccessor;)Lcom/amazon/whispersync/org/codehaus/jackson/format/MatchStrength;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 158
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    iget-object v8, p0, Lcom/amazon/whispersync/org/codehaus/jackson/format/DataFormatDetector;->_minimalMatch:Lcom/amazon/whispersync/org/codehaus/jackson/format/MatchStrength;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    if-ge v7, v8, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_1

    .line 163
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    if-lt v7, v8, :cond_1

    goto :goto_1

    .line 170
    :cond_1
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    iget-object v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/format/DataFormatDetector;->_optimalMatch:Lcom/amazon/whispersync/org/codehaus/jackson/format/MatchStrength;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-lt v2, v3, :cond_2

    move-object v2, v5

    move-object v3, v6

    goto :goto_2

    :cond_2
    move-object v2, v5

    move-object v3, v6

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 174
    :cond_4
    :goto_2
    invoke-virtual {p1, v2, v3}, Lcom/amazon/whispersync/org/codehaus/jackson/format/InputAccessor$Std;->createMatcher(Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;Lcom/amazon/whispersync/org/codehaus/jackson/format/MatchStrength;)Lcom/amazon/whispersync/org/codehaus/jackson/format/DataFormatMatcher;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public findFormat(Ljava/io/InputStream;)Lcom/amazon/whispersync/org/codehaus/jackson/format/DataFormatMatcher;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/format/InputAccessor$Std;

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/format/DataFormatDetector;->_maxInputLookahead:I

    new-array v1, v1, [B

    invoke-direct {v0, p1, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/format/InputAccessor$Std;-><init>(Ljava/io/InputStream;[B)V

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/format/DataFormatDetector;->_findFormat(Lcom/amazon/whispersync/org/codehaus/jackson/format/InputAccessor$Std;)Lcom/amazon/whispersync/org/codehaus/jackson/format/DataFormatMatcher;

    move-result-object p1

    return-object p1
.end method

.method public findFormat([B)Lcom/amazon/whispersync/org/codehaus/jackson/format/DataFormatMatcher;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/format/InputAccessor$Std;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/format/InputAccessor$Std;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/format/DataFormatDetector;->_findFormat(Lcom/amazon/whispersync/org/codehaus/jackson/format/InputAccessor$Std;)Lcom/amazon/whispersync/org/codehaus/jackson/format/DataFormatMatcher;

    move-result-object p1

    return-object p1
.end method

.method public withMaxInputLookahead(I)Lcom/amazon/whispersync/org/codehaus/jackson/format/DataFormatDetector;
    .locals 4

    .line 97
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/format/DataFormatDetector;->_maxInputLookahead:I

    if-ne p1, v0, :cond_0

    return-object p0

    .line 100
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/format/DataFormatDetector;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/format/DataFormatDetector;->_detectors:[Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/format/DataFormatDetector;->_optimalMatch:Lcom/amazon/whispersync/org/codehaus/jackson/format/MatchStrength;

    iget-object v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/format/DataFormatDetector;->_minimalMatch:Lcom/amazon/whispersync/org/codehaus/jackson/format/MatchStrength;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/format/DataFormatDetector;-><init>([Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;Lcom/amazon/whispersync/org/codehaus/jackson/format/MatchStrength;Lcom/amazon/whispersync/org/codehaus/jackson/format/MatchStrength;I)V

    return-object v0
.end method

.method public withMinimalMatch(Lcom/amazon/whispersync/org/codehaus/jackson/format/MatchStrength;)Lcom/amazon/whispersync/org/codehaus/jackson/format/DataFormatDetector;
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/format/DataFormatDetector;->_minimalMatch:Lcom/amazon/whispersync/org/codehaus/jackson/format/MatchStrength;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 88
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/format/DataFormatDetector;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/format/DataFormatDetector;->_detectors:[Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/format/DataFormatDetector;->_optimalMatch:Lcom/amazon/whispersync/org/codehaus/jackson/format/MatchStrength;

    iget v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/format/DataFormatDetector;->_maxInputLookahead:I

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/amazon/whispersync/org/codehaus/jackson/format/DataFormatDetector;-><init>([Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;Lcom/amazon/whispersync/org/codehaus/jackson/format/MatchStrength;Lcom/amazon/whispersync/org/codehaus/jackson/format/MatchStrength;I)V

    return-object v0
.end method

.method public withOptimalMatch(Lcom/amazon/whispersync/org/codehaus/jackson/format/MatchStrength;)Lcom/amazon/whispersync/org/codehaus/jackson/format/DataFormatDetector;
    .locals 4

    .line 74
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/format/DataFormatDetector;->_optimalMatch:Lcom/amazon/whispersync/org/codehaus/jackson/format/MatchStrength;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 77
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/format/DataFormatDetector;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/format/DataFormatDetector;->_detectors:[Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/format/DataFormatDetector;->_minimalMatch:Lcom/amazon/whispersync/org/codehaus/jackson/format/MatchStrength;

    iget v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/format/DataFormatDetector;->_maxInputLookahead:I

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/amazon/whispersync/org/codehaus/jackson/format/DataFormatDetector;-><init>([Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;Lcom/amazon/whispersync/org/codehaus/jackson/format/MatchStrength;Lcom/amazon/whispersync/org/codehaus/jackson/format/MatchStrength;I)V

    return-object v0
.end method
