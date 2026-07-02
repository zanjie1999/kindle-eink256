.class public final Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;
.super Lcom/amazon/whispersync/org/codehaus/jackson/JsonStreamContext;
.source "JsonReadContext.java"


# instance fields
.field protected _child:Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;

.field protected _columnNr:I

.field protected _currentName:Ljava/lang/String;

.field protected _lineNr:I

.field protected final _parent:Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;III)V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonStreamContext;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;->_child:Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;

    .line 45
    iput p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonStreamContext;->_type:I

    .line 46
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;->_parent:Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;

    .line 47
    iput p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;->_lineNr:I

    .line 48
    iput p4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;->_columnNr:I

    const/4 p1, -0x1

    .line 49
    iput p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonStreamContext;->_index:I

    return-void
.end method

.method public static createRootContext()Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;
    .locals 4

    .line 73
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v2, v1, v3, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;III)V

    return-object v0
.end method

.method public static createRootContext(II)Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;
    .locals 3

    .line 65
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;III)V

    return-object v0
.end method


# virtual methods
.method public final createChildArrayContext(II)Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;->_child:Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;III)V

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;->_child:Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;

    return-object v0

    .line 83
    :cond_0
    invoke-virtual {v0, v1, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;->reset(III)V

    return-object v0
.end method

.method public final createChildObjectContext(II)Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;->_child:Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;III)V

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;->_child:Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;

    return-object v0

    .line 94
    :cond_0
    invoke-virtual {v0, v1, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;->reset(III)V

    return-object v0
.end method

.method public final expectComma()Z
    .locals 3

    .line 142
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonStreamContext;->_index:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonStreamContext;->_index:I

    .line 143
    iget v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonStreamContext;->_type:I

    if-eqz v2, :cond_0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final getCurrentName()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;->_currentName:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getParent()Lcom/amazon/whispersync/org/codehaus/jackson/JsonStreamContext;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;->getParent()Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    return-object v0
.end method

.method public final getParent()Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;->_parent:Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;

    return-object v0
.end method

.method public final getStartLocation(Ljava/lang/Object;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonLocation;
    .locals 7

    .line 127
    new-instance v6, Lcom/amazon/whispersync/org/codehaus/jackson/JsonLocation;

    iget v4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;->_lineNr:I

    iget v5, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;->_columnNr:I

    const-wide/16 v2, -0x1

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonLocation;-><init>(Ljava/lang/Object;JII)V

    return-object v6
.end method

.method protected final reset(III)V
    .locals 0

    .line 54
    iput p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonStreamContext;->_type:I

    const/4 p1, -0x1

    .line 55
    iput p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonStreamContext;->_index:I

    .line 56
    iput p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;->_lineNr:I

    .line 57
    iput p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;->_columnNr:I

    const/4 p1, 0x0

    .line 58
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;->_currentName:Ljava/lang/String;

    return-void
.end method

.method public setCurrentName(Ljava/lang/String;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;->_currentName:Ljava/lang/String;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 165
    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonStreamContext;->_type:I

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0x7b

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 176
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;->_currentName:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/16 v1, 0x22

    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 178
    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;->_currentName:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/util/CharTypes;->appendQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 v1, 0x3f

    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    const/16 v1, 0x7d

    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const/16 v1, 0x5b

    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonStreamContext;->getCurrentIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string v1, "/"

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
