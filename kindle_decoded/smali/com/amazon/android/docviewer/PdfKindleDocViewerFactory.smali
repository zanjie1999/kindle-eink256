.class public Lcom/amazon/android/docviewer/PdfKindleDocViewerFactory;
.super Ljava/lang/Object;
.source "PdfKindleDocViewerFactory.java"

# interfaces
.implements Lcom/amazon/android/docviewer/KindleDocViewerFactory;


# static fields
.field private static final PDF_EXTENSION:Ljava/lang/String; = ".pdf"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/amazon/android/docviewer/PdfKindleDocViewerFactory;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/docviewer/PdfKindleDocViewerFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public openBook(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/system/security/Security;)Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/docviewer/KindleDocViewerGenerator$InvalidBookCompositionException;
        }
    .end annotation

    .line 27
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getFileName()Ljava/lang/String;

    move-result-object p2

    .line 30
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string v0, ".pdf"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 31
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object p2

    .line 32
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/amazon/kindle/krl/R$bool;->pdf_highlights_supported:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    .line 31
    invoke-static {p2}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->setHighlightingSupported(Z)V

    .line 34
    :try_start_0
    new-instance p2, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    invoke-direct {p2, p1}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;-><init>(Lcom/amazon/kindle/model/content/ILocalBookItem;)V
    :try_end_0
    .catch Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p2

    goto :goto_1

    :catch_0
    move-exception p2

    .line 36
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v1

    const-string v2, "Unable to open pdf book in PdfKindleDocViewerFactory, caught a PdfNativeLibraryException"

    if-eqz v1, :cond_0

    .line 37
    sget-object v1, Lcom/amazon/android/docviewer/PdfKindleDocViewerFactory;->TAG:Ljava/lang/String;

    invoke-static {v1, v2, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 39
    :cond_0
    sget-object p2, Lcom/amazon/android/docviewer/PdfKindleDocViewerFactory;->TAG:Ljava/lang/String;

    invoke-static {p2, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :goto_0
    instance-of p1, p1, Lcom/amazon/kcp/library/models/internal/PDFBookItem;

    if-nez p1, :cond_1

    goto :goto_1

    .line 51
    :cond_1
    new-instance p1, Lcom/amazon/android/docviewer/KindleDocViewerGenerator$InvalidBookCompositionException;

    const-string p2, "Unable to open as PDF document"

    invoke-direct {p1, p2}, Lcom/amazon/android/docviewer/KindleDocViewerGenerator$InvalidBookCompositionException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    return-object v0
.end method
