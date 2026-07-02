.class public Lcom/amazon/kindle/collections/util/NumericSuffixNameDedupeStrategy;
.super Ljava/lang/Object;
.source "NumericSuffixNameDedupeStrategy.java"

# interfaces
.implements Lcom/amazon/kindle/collections/util/NameDedupeStrategy;


# static fields
.field private static final FIRST_SUFFIX:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addSuffix(Lcom/amazon/kindle/collections/util/PronounceableName;Ljava/lang/String;)Lcom/amazon/kindle/collections/util/PronounceableName;
    .locals 3

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/amazon/kindle/collections/util/PronounceableName;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-virtual {p1}, Lcom/amazon/kindle/collections/util/PronounceableName;->getPronunciation()Ljava/lang/String;

    move-result-object p1

    .line 35
    invoke-static {p1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 38
    :cond_0
    new-instance p2, Lcom/amazon/kindle/collections/util/PronounceableName;

    invoke-direct {p2, v0, p1}, Lcom/amazon/kindle/collections/util/PronounceableName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method


# virtual methods
.method public dedupe(Lcom/amazon/kindle/collections/util/PronounceableName;Ljava/util/Collection;)Lcom/amazon/kindle/collections/util/PronounceableName;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/collections/util/PronounceableName;",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/collections/util/PronounceableName;",
            ">;)",
            "Lcom/amazon/kindle/collections/util/PronounceableName;"
        }
    .end annotation

    .line 12
    invoke-interface {p2, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 19
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/amazon/kindle/collections/util/NumericSuffixNameDedupeStrategy;->addSuffix(Lcom/amazon/kindle/collections/util/PronounceableName;Ljava/lang/String;)Lcom/amazon/kindle/collections/util/PronounceableName;

    move-result-object v2

    .line 20
    invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 27
    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/collections/util/NumericSuffixNameDedupeStrategy;->addSuffix(Lcom/amazon/kindle/collections/util/PronounceableName;Ljava/lang/String;)Lcom/amazon/kindle/collections/util/PronounceableName;

    move-result-object p1

    return-object p1
.end method
