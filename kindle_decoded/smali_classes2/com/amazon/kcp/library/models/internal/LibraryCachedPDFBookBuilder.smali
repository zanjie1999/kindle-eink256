.class public Lcom/amazon/kcp/library/models/internal/LibraryCachedPDFBookBuilder;
.super Ljava/lang/Object;
.source "LibraryCachedPDFBookBuilder.java"

# interfaces
.implements Lcom/amazon/kcp/library/models/internal/ILibraryCachedBookBuilder;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

.field private localStorage:Lcom/amazon/kcp/application/ILocalStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/amazon/kcp/library/models/internal/LibraryCachedPDFBookBuilder;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/models/internal/LibraryCachedPDFBookBuilder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/kcp/application/ILocalStorage;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/LibraryCachedPDFBookBuilder;->fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

    .line 28
    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/LibraryCachedPDFBookBuilder;->localStorage:Lcom/amazon/kcp/application/ILocalStorage;

    .line 31
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/LibraryCachedPDFBookBuilder;->fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

    .line 32
    iput-object p2, p0, Lcom/amazon/kcp/library/models/internal/LibraryCachedPDFBookBuilder;->localStorage:Lcom/amazon/kcp/application/ILocalStorage;

    return-void
.end method

.method private isSupportedPdf(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_0

    const/16 v0, 0x2e

    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 67
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, ".pdf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public buildCachedBook(Lcom/amazon/kcp/library/models/BookFileEnumerator;Ljava/lang/String;)Lcom/amazon/kindle/model/content/ILocalBookItem;
    .locals 4

    .line 38
    invoke-direct {p0, p2}, Lcom/amazon/kcp/library/models/internal/LibraryCachedPDFBookBuilder;->isSupportedPdf(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 40
    :try_start_0
    new-instance p1, Lcom/amazon/kcp/library/models/internal/PDFBookItem;

    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/LibraryCachedPDFBookBuilder;->fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/LibraryCachedPDFBookBuilder;->localStorage:Lcom/amazon/kcp/application/ILocalStorage;

    invoke-direct {p1, p2, v0, v1}, Lcom/amazon/kcp/library/models/internal/PDFBookItem;-><init>(Ljava/lang/String;Lcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/kcp/application/ILocalStorage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 42
    sget-object v0, Lcom/amazon/kcp/library/models/internal/LibraryCachedPDFBookBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error opening book"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public buildCachedBook(Lcom/amazon/kcp/library/models/BookFileEnumerator;Ljava/lang/String;I)Lcom/amazon/kindle/model/content/ILocalBookItem;
    .locals 0

    .line 93
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/library/models/internal/LibraryCachedPDFBookBuilder;->buildCachedBook(Lcom/amazon/kcp/library/models/BookFileEnumerator;Ljava/lang/String;)Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    return-object p1
.end method
