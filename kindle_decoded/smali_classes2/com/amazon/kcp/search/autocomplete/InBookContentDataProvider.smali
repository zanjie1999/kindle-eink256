.class public Lcom/amazon/kcp/search/autocomplete/InBookContentDataProvider;
.super Ljava/lang/Object;
.source "InBookContentDataProvider.java"

# interfaces
.implements Lcom/amazon/android/autocomplete/IDataProvider;


# instance fields
.field private context:Landroid/content/Context;

.field private docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/KindleDocViewer;Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/amazon/kcp/search/autocomplete/InBookContentDataProvider;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 33
    iput-object p2, p0, Lcom/amazon/kcp/search/autocomplete/InBookContentDataProvider;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public get()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 46
    sget-object v0, Lcom/mobipocket/android/drawing/LanguageSet;->LATIN:Lcom/mobipocket/android/drawing/LanguageSet;

    iget-object v1, p0, Lcom/amazon/kcp/search/autocomplete/InBookContentDataProvider;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBaseLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mobipocket/android/drawing/LanguageSet;->getSet(Ljava/lang/String;)Lcom/mobipocket/android/drawing/LanguageSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    new-instance v0, Lcom/amazon/kcp/search/autocomplete/InBookLatinBasedContentIndexer;

    iget-object v1, p0, Lcom/amazon/kcp/search/autocomplete/InBookContentDataProvider;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    iget-object v2, p0, Lcom/amazon/kcp/search/autocomplete/InBookContentDataProvider;->context:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/search/autocomplete/InBookLatinBasedContentIndexer;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/amazon/kcp/search/autocomplete/InBookLatinBasedContentIndexer;->getBookContent()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 51
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
