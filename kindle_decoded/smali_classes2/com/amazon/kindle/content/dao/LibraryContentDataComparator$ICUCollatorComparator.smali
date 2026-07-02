.class Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ICUCollatorComparator;
.super Ljava/lang/Object;
.source "LibraryContentDataComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field collator:Lcom/ibm/icu/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 137
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ICUCollatorComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ICUCollatorComparator;->collator:Lcom/ibm/icu/text/Collator;

    if-nez v0, :cond_0

    .line 142
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getPhoenixCompatibilityAdapter()Lcom/amazon/phoenix/IPhoenixCompatibilityAdapter;

    move-result-object v0

    .line 143
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/phoenix/IPhoenixCompatibilityAdapter;->getCollator(Ljava/util/Locale;)Lcom/ibm/icu/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ICUCollatorComparator;->collator:Lcom/ibm/icu/text/Collator;

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ICUCollatorComparator;->collator:Lcom/ibm/icu/text/Collator;

    invoke-virtual {v0, p1, p2}, Lcom/ibm/icu/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method
