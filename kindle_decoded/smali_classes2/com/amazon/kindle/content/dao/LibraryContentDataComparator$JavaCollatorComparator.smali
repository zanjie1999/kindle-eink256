.class Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$JavaCollatorComparator;
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
.field collator:Ljava/text/Collator;

.field locale:Ljava/util/Locale;


# direct methods
.method constructor <init>(Ljava/util/Locale;)V
    .locals 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$JavaCollatorComparator;->collator:Ljava/text/Collator;

    .line 109
    iput-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$JavaCollatorComparator;->locale:Ljava/util/Locale;

    .line 116
    iput-object p1, p0, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$JavaCollatorComparator;->locale:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 107
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$JavaCollatorComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$JavaCollatorComparator;->collator:Ljava/text/Collator;

    if-nez v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$JavaCollatorComparator;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    .line 122
    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$JavaCollatorComparator;->collator:Ljava/text/Collator;

    goto :goto_0

    .line 124
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$JavaCollatorComparator;->collator:Ljava/text/Collator;

    .line 128
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$JavaCollatorComparator;->collator:Ljava/text/Collator;

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method
