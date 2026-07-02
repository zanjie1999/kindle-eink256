.class public final Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme;
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
    name = "Phoneme"
.end annotation


# static fields
.field public static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final languages:Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages$LanguageSet;

.field private final phonemeText:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 83
    new-instance v0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme$1;

    invoke-direct {v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme$1;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages$LanguageSet;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme;->phonemeText:Ljava/lang/CharSequence;

    .line 109
    iput-object p2, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme;->languages:Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages$LanguageSet;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme;)Ljava/lang/CharSequence;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme;->phonemeText:Ljava/lang/CharSequence;

    return-object p0
.end method


# virtual methods
.method public append(Ljava/lang/CharSequence;)Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme;
    .locals 3

    .line 113
    new-instance v0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme;->phonemeText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme;->languages:Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages$LanguageSet;

    invoke-direct {v0, p1, v1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme;-><init>(Ljava/lang/CharSequence;Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages$LanguageSet;)V

    return-object v0
.end method

.method public getLanguages()Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages$LanguageSet;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme;->languages:Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages$LanguageSet;

    return-object v0
.end method

.method public getPhonemeText()Ljava/lang/CharSequence;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme;->phonemeText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPhonemes()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme;",
            ">;"
        }
    .end annotation

    .line 122
    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public join(Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme;)Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme;
    .locals 3

    .line 130
    new-instance v0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme;->phonemeText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme;->phonemeText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme;->languages:Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages$LanguageSet;

    iget-object p1, p1, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme;->languages:Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages$LanguageSet;

    invoke-virtual {v2, p1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages$LanguageSet;->restrictTo(Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages$LanguageSet;)Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages$LanguageSet;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme;-><init>(Ljava/lang/CharSequence;Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages$LanguageSet;)V

    return-object v0
.end method
