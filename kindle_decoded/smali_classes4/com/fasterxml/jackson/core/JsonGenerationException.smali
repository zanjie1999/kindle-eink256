.class public Lcom/fasterxml/jackson/core/JsonGenerationException;
.super Lcom/fasterxml/jackson/core/JsonProcessingException;
.source "JsonGenerationException.java"


# static fields
.field private static final serialVersionUID:J = 0x7bL


# instance fields
.field protected _processor:Lcom/fasterxml/jackson/core/JsonGenerator;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonProcessingException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    .line 48
    iput-object p2, p0, Lcom/fasterxml/jackson/core/JsonGenerationException;->_processor:Lcom/fasterxml/jackson/core/JsonGenerator;

    return-void
.end method


# virtual methods
.method public getProcessor()Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonGenerationException;->_processor:Lcom/fasterxml/jackson/core/JsonGenerator;

    return-object v0
.end method

.method public bridge synthetic getProcessor()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonGenerationException;->getProcessor()Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object v0

    return-object v0
.end method
