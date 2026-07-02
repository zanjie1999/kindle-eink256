.class final Lcom/amazon/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;
.super Ljava/util/StringTokenizer;
.source "TypeParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/org/codehaus/jackson/map/type/TypeParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MyTokenizer"
.end annotation


# instance fields
.field protected _index:I

.field protected final _input:Ljava/lang/String;

.field protected _pushbackToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "<,>"

    const/4 v1, 0x1

    .line 99
    invoke-direct {p0, p1, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 100
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;->_input:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAllInput()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;->_input:Ljava/lang/String;

    return-object v0
.end method

.method public getRemainingInput()Ljava/lang/String;
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;->_input:Ljava/lang/String;

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;->_index:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsedInput()Ljava/lang/String;
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;->_input:Ljava/lang/String;

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;->_index:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasMoreTokens()Z
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;->_pushbackToken:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-super {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public nextToken()Ljava/lang/String;
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;->_pushbackToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 113
    iput-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;->_pushbackToken:Ljava/lang/String;

    goto :goto_0

    .line 115
    :cond_0
    invoke-super {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 117
    :goto_0
    iget v1, p0, Lcom/amazon/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;->_index:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/amazon/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;->_index:I

    return-object v0
.end method

.method public pushBack(Ljava/lang/String;)V
    .locals 1

    .line 122
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;->_pushbackToken:Ljava/lang/String;

    .line 123
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;->_index:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/amazon/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;->_index:I

    return-void
.end method
