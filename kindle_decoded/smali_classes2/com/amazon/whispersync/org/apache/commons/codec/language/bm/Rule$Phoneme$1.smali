.class final Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme$1;
.super Ljava/lang/Object;
.source "Rule.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme;Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme;)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 86
    :goto_0
    invoke-static {p1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme;->access$000(Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 87
    invoke-static {p2}, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme;->access$000(Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    const/4 p1, 0x1

    return p1

    .line 90
    :cond_0
    invoke-static {p1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme;->access$000(Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {p2}, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme;->access$000(Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    sub-int/2addr v2, v3

    if-eqz v2, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    :cond_2
    invoke-static {p1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme;->access$000(Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-static {p2}, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme;->access$000(Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-ge p1, p2, :cond_3

    const/4 p1, -0x1

    return p1

    :cond_3
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 83
    check-cast p1, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme;

    check-cast p2, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme$1;->compare(Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme;Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$Phoneme;)I

    move-result p1

    return p1
.end method
