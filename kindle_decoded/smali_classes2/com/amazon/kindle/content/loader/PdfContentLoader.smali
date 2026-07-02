.class public Lcom/amazon/kindle/content/loader/PdfContentLoader;
.super Lcom/amazon/kindle/content/loader/CachedBookLoader;
.source "PdfContentLoader.java"


# static fields
.field private static final SUPPORTED_PDF_EXTENSIONS:Ljava/util/Collection;
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

    const-string v0, ".pdf"

    .line 21
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/content/loader/PdfContentLoader;->SUPPORTED_PDF_EXTENSIONS:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/library/models/internal/ILibraryCachedBookBuilder;Lcom/amazon/kcp/library/models/BookFileEnumerator;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/content/loader/CachedBookLoader;-><init>(Lcom/amazon/kcp/library/models/internal/ILibraryCachedBookBuilder;Lcom/amazon/kcp/library/models/BookFileEnumerator;)V

    return-void
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

    .line 33
    sget-object v0, Lcom/amazon/kindle/content/loader/PdfContentLoader;->SUPPORTED_PDF_EXTENSIONS:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
