.class Lcom/amazon/kindle/collections/dao/CollectionsDAO$1;
.super Ljava/lang/Object;
.source "CollectionsDAO.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/collections/dao/CollectionsDAO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amazon/kindle/collections/dto/ICollection;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/kindle/collections/dao/CollectionsDAO;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/kindle/collections/dto/ICollection;Lcom/amazon/kindle/collections/dto/ICollection;)I
    .locals 1

    .line 113
    invoke-static {}, Lcom/amazon/kcp/debug/TCNSortingUtils;->isTCNSortingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/kindle/util/LocaleUtils;->currentLocaleIsTWLocale()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "zh-u-co-zhuyin"

    .line 114
    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    goto :goto_0

    .line 116
    :cond_0
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    .line 118
    :goto_0
    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollection;->getSortableTitle()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Lcom/amazon/kindle/collections/dto/ICollection;->getSortableTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 109
    check-cast p1, Lcom/amazon/kindle/collections/dto/ICollection;

    check-cast p2, Lcom/amazon/kindle/collections/dto/ICollection;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/collections/dao/CollectionsDAO$1;->compare(Lcom/amazon/kindle/collections/dto/ICollection;Lcom/amazon/kindle/collections/dto/ICollection;)I

    move-result p1

    return p1
.end method
