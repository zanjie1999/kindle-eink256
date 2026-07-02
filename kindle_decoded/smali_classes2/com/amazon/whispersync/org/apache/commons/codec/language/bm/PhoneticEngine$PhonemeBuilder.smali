.class final Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;
.super Ljava/lang/Object;
.source "PhoneticEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/PhoneticEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PhonemeBuilder"
.end annotation


# instance fields
.field private final phonemes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme;",
            ">;)V"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;->phonemes:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Set;Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/PhoneticEngine$1;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;-><init>(Ljava/util/Set;)V

    return-void
.end method

.method public static empty(Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages$LanguageSet;)Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;
    .locals 3

    .line 69
    new-instance v0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;

    new-instance v1, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme;

    const-string v2, ""

    invoke-direct {v1, v2, p0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme;-><init>(Ljava/lang/CharSequence;Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages$LanguageSet;)V

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;-><init>(Ljava/util/Set;)V

    return-object v0
.end method


# virtual methods
.method public append(Ljava/lang/CharSequence;)Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;
    .locals 3

    .line 85
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 87
    iget-object v1, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;->phonemes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme;

    .line 88
    invoke-virtual {v2, p1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme;->append(Ljava/lang/CharSequence;)Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 91
    :cond_0
    new-instance p1, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;

    invoke-direct {p1, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;-><init>(Ljava/util/Set;)V

    return-object p1
.end method

.method public apply(Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$PhonemeExpr;I)Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;
    .locals 6

    .line 106
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 108
    iget-object v1, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;->phonemes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme;

    .line 109
    invoke-interface {p1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$PhonemeExpr;->getPhonemes()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme;

    .line 110
    invoke-virtual {v2, v4}, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme;->join(Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme;)Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme;

    move-result-object v4

    .line 111
    invoke-virtual {v4}, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme;->getLanguages()Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages$LanguageSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages$LanguageSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 112
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v5

    if-ge v5, p2, :cond_2

    .line 113
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 121
    :cond_2
    new-instance p1, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;

    invoke-direct {p1, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;-><init>(Ljava/util/Set;)V

    return-object p1
.end method

.method public getPhonemes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme;",
            ">;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;->phonemes:Ljava/util/Set;

    return-object v0
.end method

.method public makeString()Ljava/lang/String;
    .locals 4

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    iget-object v1, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;->phonemes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme;

    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    const-string/jumbo v3, "|"

    .line 145
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    :cond_0
    invoke-virtual {v2}, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme;->getPhonemeText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 150
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
