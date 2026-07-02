.class abstract Lcom/amazon/whispersync/org/apache/commons/codec/language/ColognePhonetic$CologneBuffer;
.super Ljava/lang/Object;
.source "ColognePhonetic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/org/apache/commons/codec/language/ColognePhonetic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CologneBuffer"
.end annotation


# instance fields
.field protected final data:[C

.field protected length:I

.field final synthetic this$0:Lcom/amazon/whispersync/org/apache/commons/codec/language/ColognePhonetic;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/org/apache/commons/codec/language/ColognePhonetic;I)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/ColognePhonetic$CologneBuffer;->this$0:Lcom/amazon/whispersync/org/apache/commons/codec/language/ColognePhonetic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 202
    iput p1, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/ColognePhonetic$CologneBuffer;->length:I

    .line 210
    new-array p2, p2, [C

    iput-object p2, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/ColognePhonetic$CologneBuffer;->data:[C

    .line 211
    iput p1, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/ColognePhonetic$CologneBuffer;->length:I

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/org/apache/commons/codec/language/ColognePhonetic;[C)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/ColognePhonetic$CologneBuffer;->this$0:Lcom/amazon/whispersync/org/apache/commons/codec/language/ColognePhonetic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 202
    iput p1, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/ColognePhonetic$CologneBuffer;->length:I

    .line 205
    iput-object p2, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/ColognePhonetic$CologneBuffer;->data:[C

    .line 206
    array-length p1, p2

    iput p1, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/ColognePhonetic$CologneBuffer;->length:I

    return-void
.end method


# virtual methods
.method protected abstract copyData(II)[C
.end method

.method public length()I
    .locals 1

    .line 217
    iget v0, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/ColognePhonetic$CologneBuffer;->length:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 222
    new-instance v0, Ljava/lang/String;

    iget v1, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/ColognePhonetic$CologneBuffer;->length:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/ColognePhonetic$CologneBuffer;->copyData(II)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
