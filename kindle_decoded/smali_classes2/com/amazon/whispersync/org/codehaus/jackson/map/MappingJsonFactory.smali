.class public Lcom/amazon/whispersync/org/codehaus/jackson/map/MappingJsonFactory;
.super Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;
.source "MappingJsonFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/MappingJsonFactory;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/ObjectCodec;)V

    if-nez p1, :cond_0

    .line 43
    new-instance p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;

    invoke-direct {p1, p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;)V

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;->setCodec(Lcom/amazon/whispersync/org/codehaus/jackson/ObjectCodec;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic getCodec()Lcom/amazon/whispersync/org/codehaus/jackson/ObjectCodec;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/MappingJsonFactory;->getCodec()Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;

    move-result-object v0

    return-object v0
.end method

.method public final getCodec()Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;->_objectCodec:Lcom/amazon/whispersync/org/codehaus/jackson/ObjectCodec;

    check-cast v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;

    return-object v0
.end method

.method public getFormatName()Ljava/lang/String;
    .locals 1

    const-string v0, "JSON"

    return-object v0
.end method

.method public hasFormat(Lcom/amazon/whispersync/org/codehaus/jackson/format/InputAccessor;)Lcom/amazon/whispersync/org/codehaus/jackson/format/MatchStrength;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;->hasJSONFormat(Lcom/amazon/whispersync/org/codehaus/jackson/format/InputAccessor;)Lcom/amazon/whispersync/org/codehaus/jackson/format/MatchStrength;

    move-result-object p1

    return-object p1
.end method
