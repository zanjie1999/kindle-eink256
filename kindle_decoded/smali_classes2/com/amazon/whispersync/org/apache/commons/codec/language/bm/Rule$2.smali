.class final Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$2;
.super Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule;
.source "Rule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule;->parseRules(Ljava/util/Scanner;Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private final loc:Ljava/lang/String;

.field private final myLine:I

.field final synthetic val$cLine:I

.field final synthetic val$location:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$PhonemeExpr;ILjava/lang/String;)V
    .locals 0

    .line 379
    iput p5, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$2;->val$cLine:I

    iput-object p6, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$2;->val$location:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$PhonemeExpr;)V

    .line 380
    iget p1, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$2;->val$cLine:I

    iput p1, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$2;->myLine:I

    .line 381
    iget-object p1, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$2;->val$location:Ljava/lang/String;

    iput-object p1, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$2;->loc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rule"

    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{line="

    .line 387
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$2;->myLine:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", loc=\'"

    .line 388
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$2;->loc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 389
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
