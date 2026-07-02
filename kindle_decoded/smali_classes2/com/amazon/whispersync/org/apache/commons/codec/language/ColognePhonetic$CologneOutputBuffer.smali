.class Lcom/amazon/whispersync/org/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;
.super Lcom/amazon/whispersync/org/apache/commons/codec/language/ColognePhonetic$CologneBuffer;
.source "ColognePhonetic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/org/apache/commons/codec/language/ColognePhonetic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CologneOutputBuffer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/org/apache/commons/codec/language/ColognePhonetic;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/org/apache/commons/codec/language/ColognePhonetic;I)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;->this$0:Lcom/amazon/whispersync/org/apache/commons/codec/language/ColognePhonetic;

    .line 229
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/org/apache/commons/codec/language/ColognePhonetic$CologneBuffer;-><init>(Lcom/amazon/whispersync/org/apache/commons/codec/language/ColognePhonetic;I)V

    return-void
.end method


# virtual methods
.method public addRight(C)V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/ColognePhonetic$CologneBuffer;->data:[C

    iget v1, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/ColognePhonetic$CologneBuffer;->length:I

    aput-char p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 234
    iput v1, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/ColognePhonetic$CologneBuffer;->length:I

    return-void
.end method

.method protected copyData(II)[C
    .locals 3

    .line 239
    new-array v0, p2, [C

    .line 240
    iget-object v1, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/ColognePhonetic$CologneBuffer;->data:[C

    const/4 v2, 0x0

    invoke-static {v1, p1, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
