.class public Lcom/amazon/whispersync/org/codehaus/jackson/util/MinimalPrettyPrinter;
.super Ljava/lang/Object;
.source "MinimalPrettyPrinter.java"

# interfaces
.implements Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;


# static fields
.field public static final DEFAULT_ROOT_VALUE_SEPARATOR:Ljava/lang/String; = " "


# instance fields
.field protected _rootValueSeparator:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, " "

    .line 41
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/MinimalPrettyPrinter;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, " "

    .line 32
    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/MinimalPrettyPrinter;->_rootValueSeparator:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/MinimalPrettyPrinter;->_rootValueSeparator:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public beforeArrayValues(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    return-void
.end method

.method public beforeObjectEntries(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    return-void
.end method

.method public setRootValueSeparator(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/MinimalPrettyPrinter;->_rootValueSeparator:Ljava/lang/String;

    return-void
.end method

.method public writeArrayValueSeparator(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const/16 v0, 0x2c

    .line 143
    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    return-void
.end method

.method public writeEndArray(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const/16 p2, 0x5d

    .line 150
    invoke-virtual {p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    return-void
.end method

.method public writeEndObject(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const/16 p2, 0x7d

    .line 115
    invoke-virtual {p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    return-void
.end method

.method public writeObjectEntrySeparator(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const/16 v0, 0x2c

    .line 108
    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeRaw(C)V

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

    const/16 v0, 0x3a

    .line 94
    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeRaw(C)V

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

    .line 64
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/MinimalPrettyPrinter;->_rootValueSeparator:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeRaw(Ljava/lang/String;)V

    :cond_0
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

    const/16 v0, 0x5b

    .line 122
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

    .line 73
    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    return-void
.end method
