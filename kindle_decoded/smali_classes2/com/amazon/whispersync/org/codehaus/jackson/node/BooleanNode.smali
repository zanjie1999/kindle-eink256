.class public final Lcom/amazon/whispersync/org/codehaus/jackson/node/BooleanNode;
.super Lcom/amazon/whispersync/org/codehaus/jackson/node/ValueNode;
.source "BooleanNode.java"


# static fields
.field public static final FALSE:Lcom/amazon/whispersync/org/codehaus/jackson/node/BooleanNode;

.field public static final TRUE:Lcom/amazon/whispersync/org/codehaus/jackson/node/BooleanNode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/node/BooleanNode;

    invoke-direct {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/BooleanNode;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/node/BooleanNode;->TRUE:Lcom/amazon/whispersync/org/codehaus/jackson/node/BooleanNode;

    .line 19
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/node/BooleanNode;

    invoke-direct {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/BooleanNode;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/node/BooleanNode;->FALSE:Lcom/amazon/whispersync/org/codehaus/jackson/node/BooleanNode;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ValueNode;-><init>()V

    return-void
.end method

.method public static getFalse()Lcom/amazon/whispersync/org/codehaus/jackson/node/BooleanNode;
    .locals 1

    .line 24
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/node/BooleanNode;->FALSE:Lcom/amazon/whispersync/org/codehaus/jackson/node/BooleanNode;

    return-object v0
.end method

.method public static getTrue()Lcom/amazon/whispersync/org/codehaus/jackson/node/BooleanNode;
    .locals 1

    .line 23
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/node/BooleanNode;->TRUE:Lcom/amazon/whispersync/org/codehaus/jackson/node/BooleanNode;

    return-object v0
.end method

.method public static valueOf(Z)Lcom/amazon/whispersync/org/codehaus/jackson/node/BooleanNode;
    .locals 0

    if-eqz p0, :cond_0

    .line 26
    sget-object p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/BooleanNode;->TRUE:Lcom/amazon/whispersync/org/codehaus/jackson/node/BooleanNode;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/BooleanNode;->FALSE:Lcom/amazon/whispersync/org/codehaus/jackson/node/BooleanNode;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public asBoolean()Z
    .locals 1

    .line 48
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/node/BooleanNode;->TRUE:Lcom/amazon/whispersync/org/codehaus/jackson/node/BooleanNode;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public asBoolean(Z)Z
    .locals 0

    .line 53
    sget-object p1, Lcom/amazon/whispersync/org/codehaus/jackson/node/BooleanNode;->TRUE:Lcom/amazon/whispersync/org/codehaus/jackson/node/BooleanNode;

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public asDouble(D)D
    .locals 0

    .line 66
    sget-object p1, Lcom/amazon/whispersync/org/codehaus/jackson/node/BooleanNode;->TRUE:Lcom/amazon/whispersync/org/codehaus/jackson/node/BooleanNode;

    if-ne p0, p1, :cond_0

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    :goto_0
    return-wide p1
.end method

.method public asInt(I)I
    .locals 0

    .line 58
    sget-object p1, Lcom/amazon/whispersync/org/codehaus/jackson/node/BooleanNode;->TRUE:Lcom/amazon/whispersync/org/codehaus/jackson/node/BooleanNode;

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public asLong(J)J
    .locals 0

    .line 62
    sget-object p1, Lcom/amazon/whispersync/org/codehaus/jackson/node/BooleanNode;->TRUE:Lcom/amazon/whispersync/org/codehaus/jackson/node/BooleanNode;

    if-ne p0, p1, :cond_0

    const-wide/16 p1, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    :goto_0
    return-wide p1
.end method

.method public asText()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/node/BooleanNode;->TRUE:Lcom/amazon/whispersync/org/codehaus/jackson/node/BooleanNode;

    if-ne p0, v0, :cond_0

    const-string/jumbo v0, "true"

    goto :goto_0

    :cond_0
    const-string v0, "false"

    :goto_0
    return-object v0
.end method

.method public asToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;
    .locals 1

    .line 30
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/node/BooleanNode;->TRUE:Lcom/amazon/whispersync/org/codehaus/jackson/node/BooleanNode;

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_TRUE:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_FALSE:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    :goto_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getBooleanValue()Z
    .locals 1

    .line 38
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/node/BooleanNode;->TRUE:Lcom/amazon/whispersync/org/codehaus/jackson/node/BooleanNode;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBoolean()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final serialize(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 73
    sget-object p2, Lcom/amazon/whispersync/org/codehaus/jackson/node/BooleanNode;->TRUE:Lcom/amazon/whispersync/org/codehaus/jackson/node/BooleanNode;

    if-ne p0, p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeBoolean(Z)V

    return-void
.end method
