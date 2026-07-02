.class public Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode$NoFieldsIterator;
.super Ljava/lang/Object;
.source "ObjectNode.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "NoFieldsIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;",
        ">;>;"
    }
.end annotation


# static fields
.field static final instance:Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode$NoFieldsIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 682
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode$NoFieldsIterator;

    invoke-direct {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode$NoFieldsIterator;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode$NoFieldsIterator;->instance:Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode$NoFieldsIterator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 684
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 679
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode$NoFieldsIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;",
            ">;"
        }
    .end annotation

    .line 689
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    .line 693
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
