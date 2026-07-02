.class public final Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$PhonemeList;
.super Ljava/lang/Object;
.source "Rule.java"

# interfaces
.implements Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$PhonemeExpr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhonemeList"
.end annotation


# instance fields
.field private final phonemes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme;",
            ">;)V"
        }
    .end annotation

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$PhonemeList;->phonemes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic getPhonemes()Ljava/lang/Iterable;
    .locals 1

    .line 139
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$PhonemeList;->getPhonemes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPhonemes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme;",
            ">;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$PhonemeList;->phonemes:Ljava/util/List;

    return-object v0
.end method
