.class public Lcom/amazon/klo/search/SearchProvider;
.super Ljava/lang/Object;
.source "SearchProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/search/ISearchProvider;


# static fields
.field private static final SEARCH_PROVIDER_PRIORITY:I = 0x7d0


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/search/ISearchAdapter;
    .locals 1

    .line 34
    invoke-static {}, Lcom/amazon/klo/KindleLearningObjectPlugin;->isSidecarPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    new-instance v0, Lcom/amazon/klo/search/SearchAdapter;

    invoke-direct {v0, p1}, Lcom/amazon/klo/search/SearchAdapter;-><init>(Lcom/amazon/kindle/krx/content/IBook;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/klo/search/SearchProvider;->get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/search/ISearchAdapter;

    move-result-object p1

    return-object p1
.end method

.method public getPriority(Lcom/amazon/kindle/krx/content/IBook;)I
    .locals 0

    const/16 p1, 0x7d0

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 13
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/klo/search/SearchProvider;->getPriority(Lcom/amazon/kindle/krx/content/IBook;)I

    move-result p1

    return p1
.end method
