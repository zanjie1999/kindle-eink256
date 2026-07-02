.class final Lcom/amazon/whispersync/org/codehaus/jackson/map/util/ObjectBuffer$Node;
.super Ljava/lang/Object;
.source "ObjectBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/org/codehaus/jackson/map/util/ObjectBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Node"
.end annotation


# instance fields
.field final _data:[Ljava/lang/Object;

.field _next:Lcom/amazon/whispersync/org/codehaus/jackson/map/util/ObjectBuffer$Node;


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/ObjectBuffer$Node;->_data:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getData()[Ljava/lang/Object;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/ObjectBuffer$Node;->_data:[Ljava/lang/Object;

    return-object v0
.end method

.method public linkNext(Lcom/amazon/whispersync/org/codehaus/jackson/map/util/ObjectBuffer$Node;)V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/ObjectBuffer$Node;->_next:Lcom/amazon/whispersync/org/codehaus/jackson/map/util/ObjectBuffer$Node;

    if-nez v0, :cond_0

    .line 254
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/ObjectBuffer$Node;->_next:Lcom/amazon/whispersync/org/codehaus/jackson/map/util/ObjectBuffer$Node;

    return-void

    .line 252
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public next()Lcom/amazon/whispersync/org/codehaus/jackson/map/util/ObjectBuffer$Node;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/ObjectBuffer$Node;->_next:Lcom/amazon/whispersync/org/codehaus/jackson/map/util/ObjectBuffer$Node;

    return-object v0
.end method
