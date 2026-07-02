.class public Lcom/amazon/kindle/content/loader/MobiContentLoader;
.super Lcom/amazon/kindle/content/loader/CachedBookLoader;
.source "MobiContentLoader.java"


# static fields
.field private static SUPPORTED_MOBI_EXTENSIONS:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/amazon/kindle/content/loader/MobiContentLoader;->SUPPORTED_MOBI_EXTENSIONS:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/library/models/internal/ILibraryCachedBookBuilder;Lcom/amazon/kcp/library/models/BookFileEnumerator;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/content/loader/CachedBookLoader;-><init>(Lcom/amazon/kcp/library/models/internal/ILibraryCachedBookBuilder;Lcom/amazon/kcp/library/models/BookFileEnumerator;)V

    return-void
.end method

.method public static addSupportedExtensions(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 22
    sget-object v0, Lcom/amazon/kindle/content/loader/MobiContentLoader;->SUPPORTED_MOBI_EXTENSIONS:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static getSupportedContentExtensions()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 26
    sget-object v0, Lcom/amazon/kindle/content/loader/MobiContentLoader;->SUPPORTED_MOBI_EXTENSIONS:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getSupportedExtensions()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 42
    sget-object v0, Lcom/amazon/kindle/content/loader/MobiContentLoader;->SUPPORTED_MOBI_EXTENSIONS:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
