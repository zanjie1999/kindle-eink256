.class public Lcom/amazon/whispersync/org/codehaus/jackson/util/DefaultPrettyPrinter;
.super Ljava/lang/Object;
.source "DefaultPrettyPrinter.java"

# interfaces
.implements Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/org/codehaus/jackson/util/DefaultPrettyPrinter$Lf2SpacesIndenter;,
        Lcom/amazon/whispersync/org/codehaus/jackson/util/DefaultPrettyPrinter$FixedSpaceIndenter;,
        Lcom/amazon/whispersync/org/codehaus/jackson/util/DefaultPrettyPrinter$NopIndenter;
    }
.end annotation


# instance fields
.field protected _arrayIndenter:Lcom/amazon/whispersync/org/codehaus/jackson/impl/Indenter;

.field protected _nesting:I

.field protected _objectIndenter:Lcom/amazon/whispersync/org/codehaus/jackson/impl/Indenter;

.field protected _spacesInObjectEntries:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/util/DefaultPrettyPrinter$FixedSpaceIndenter;

    invoke-direct {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/DefaultPrettyPrinter$FixedSpaceIndenter;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/DefaultPrettyPrinter;->_arrayIndenter:Lcom/amazon/whispersync/org/codehaus/jackson/impl/Indenter;

    .line 32
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/util/DefaultPrettyPrinter$Lf2SpacesIndenter;

    invoke-direct {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/DefaultPrettyPrinter$Lf2SpacesIndenter;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/DefaultPrettyPrinter;->_objectIndenter:Lcom/amazon/whispersync/org/codehaus/jackson/impl/Indenter;

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/DefaultPrettyPrinter;->_spacesInObjectEntries:Z

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/DefaultPrettyPrinter;->_nesting:I

    return-void
.end method


# virtual methods
.method public beforeArrayValues(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/DefaultPrettyPrinter;->_arrayIndenter:Lcom/amazon/whispersync/org/codehaus/jackson/impl/Indenter;

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/DefaultPrettyPrinter;->_nesting:I

    invoke-interface {v0, p1, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Indenter;->writeIndentation(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;I)V

    return-void
.end method

.method public beforeObjectEntries(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/DefaultPrettyPrinter;->_objectIndenter:Lcom/amazon/whispersync/org/codehaus/jackson/impl/Indenter;

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/DefaultPrettyPrinter;->_nesting:I

    invoke-interface {v0, p1, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Indenter;->writeIndentation(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;I)V

    return-void
.end method

.method public indentArraysWith(Lcom/amazon/whispersync/org/codehaus/jackson/impl/Indenter;)V
    .locals 0

    if-nez p1, :cond_0

    .line 61
    new-instance p1, Lcom/amazon/whispersync/org/codehaus/jackson/util/DefaultPrettyPrinter$NopIndenter;

    invoke-direct {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/util/DefaultPrettyPrinter$NopIndenter;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/DefaultPrettyPrinter;->_arrayIndenter:Lcom/amazon/whispersync/org/codehaus/jackson/impl/Indenter;

    return-void
.end method

.method public indentObjectsWith(Lcom/amazon/whispersync/org/codehaus/jackson/impl/Indenter;)V
    .locals 0

    if-nez p1, :cond_0

    .line 66
    new-instance p1, Lcom/amazon/whispersync/org/codehaus/jackson/util/DefaultPrettyPrinter$NopIndenter;

    invoke-direct {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/util/DefaultPrettyPrinter$NopIndenter;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/DefaultPrettyPrinter;->_objectIndenter:Lcom/amazon/whispersync/org/codehaus/jackson/impl/Indenter;

    return-void
.end method

.method public spacesInObjectEntries(Z)V
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/DefaultPrettyPrinter;->_spacesInObjectEntries:Z

    return-void
.end method

.method public writeArrayValueSeparator(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const/16 v0, 0x2c

    .line 183
    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    .line 184
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/DefaultPrettyPrinter;->_arrayIndenter:Lcom/amazon/whispersync/org/codehaus/jackson/impl/Indenter;

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/DefaultPrettyPrinter;->_nesting:I

    invoke-interface {v0, p1, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Indenter;->writeIndentation(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;I)V

    return-void
.end method

.method public writeEndArray(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/DefaultPrettyPrinter;->_arrayIndenter:Lcom/amazon/whispersync/org/codehaus/jackson/impl/Indenter;

    invoke-interface {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Indenter;->isInline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/DefaultPrettyPrinter;->_nesting:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/DefaultPrettyPrinter;->_nesting:I

    :cond_0
    if-lez p2, :cond_1

    .line 195
    iget-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/DefaultPrettyPrinter;->_arrayIndenter:Lcom/amazon/whispersync/org/codehaus/jackson/impl/Indenter;

    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/DefaultPrettyPrinter;->_nesting:I

    invoke-interface {p2, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Indenter;->writeIndentation(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;I)V

    goto :goto_0

    :cond_1
    const/16 p2, 0x20

    .line 197
    invoke-virtual {p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    :goto_0
    const/16 p2, 0x5d

    .line 199
    invoke-virtual {p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    return-void
.end method

.method public writeEndObject(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/DefaultPrettyPrinter;->_objectIndenter:Lcom/amazon/whispersync/org/codehaus/jackson/impl/Indenter;

    invoke-interface {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Indenter;->isInline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/DefaultPrettyPrinter;->_nesting:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/DefaultPrettyPrinter;->_nesting:I

    :cond_0
    if-lez p2, :cond_1

    .line 146
    iget-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/DefaultPrettyPrinter;->_objectIndenter:Lcom/amazon/whispersync/org/codehaus/jackson/impl/Indenter;

    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/DefaultPrettyPrinter;->_nesting:I

    invoke-interface {p2, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Indenter;->writeIndentation(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;I)V

    goto :goto_0

    :cond_1
    const/16 p2, 0x20

    .line 148
    invoke-virtual {p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    :goto_0
    const/16 p2, 0x7d

    .line 150
    invoke-virtual {p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    return-void
.end method

.method public writeObjectEntrySeparator(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const/16 v0, 0x2c

    .line 134
    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    .line 135
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/DefaultPrettyPrinter;->_objectIndenter:Lcom/amazon/whispersync/org/codehaus/jackson/impl/Indenter;

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/DefaultPrettyPrinter;->_nesting:I

    invoke-interface {v0, p1, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Indenter;->writeIndentation(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;I)V

    return-void
.end method

.method public writeObjectFieldValueSeparator(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 114
    iget-boolean v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/DefaultPrettyPrinter;->_spacesInObjectEntries:Z

    if-eqz v0, :cond_0

    const-string v0, " : "

    .line 115
    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeRaw(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x3a

    .line 117
    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    :goto_0
    return-void
.end method

.method public writeRootValueSeparator(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const/16 v0, 0x20

    .line 81
    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    return-void
.end method

.method public writeStartArray(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/DefaultPrettyPrinter;->_arrayIndenter:Lcom/amazon/whispersync/org/codehaus/jackson/impl/Indenter;

    invoke-interface {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Indenter;->isInline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/DefaultPrettyPrinter;->_nesting:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/DefaultPrettyPrinter;->_nesting:I

    :cond_0
    const/16 v0, 0x5b

    .line 160
    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    return-void
.end method

.method public writeStartObject(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const/16 v0, 0x7b

    .line 88
    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    .line 89
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/DefaultPrettyPrinter;->_objectIndenter:Lcom/amazon/whispersync/org/codehaus/jackson/impl/Indenter;

    invoke-interface {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Indenter;->isInline()Z

    move-result p1

    if-nez p1, :cond_0

    .line 90
    iget p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/DefaultPrettyPrinter;->_nesting:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/DefaultPrettyPrinter;->_nesting:I

    :cond_0
    return-void
.end method
