.class public final Lcom/amazon/kindle/contentprovider/StandaloneLibraryContentProviderProvider;
.super Ljava/lang/Object;
.source "StandaloneLibraryContentProviderProvider.kt"

# interfaces
.implements Lcom/amazon/kindle/contentprovider/ILibraryContentProviderProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentProviders(Lcom/amazon/kindle/content/ILibraryService;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/content/ILibraryService;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/contentprovider/AbstractContentProvider;",
            ">;"
        }
    .end annotation

    const-string v0, "libraryService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/kindle/contentprovider/AbstractContentProvider;

    .line 8
    new-instance v1, Lcom/amazon/kindle/contentprovider/RecentContentProvider;

    invoke-direct {v1, p1}, Lcom/amazon/kindle/contentprovider/RecentContentProvider;-><init>(Lcom/amazon/kindle/content/ILibraryService;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/contentprovider/SearchProvider;

    invoke-direct {v1, p1}, Lcom/amazon/kindle/contentprovider/SearchProvider;-><init>(Lcom/amazon/kindle/content/ILibraryService;)V

    const/4 p1, 0x1

    aput-object v1, v0, p1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
