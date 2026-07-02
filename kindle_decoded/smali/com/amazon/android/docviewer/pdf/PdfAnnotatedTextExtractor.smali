.class public Lcom/amazon/android/docviewer/pdf/PdfAnnotatedTextExtractor;
.super Ljava/lang/Object;
.source "PdfAnnotatedTextExtractor.java"

# interfaces
.implements Lcom/amazon/android/docviewer/KindleAnnotatedTextExtractor;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final doc:Lcom/amazon/android/docviewer/pdf/PdfDoc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/amazon/android/docviewer/pdf/PdfAnnotatedTextExtractor;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/docviewer/pdf/PdfAnnotatedTextExtractor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/android/docviewer/pdf/PdfDoc;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfAnnotatedTextExtractor;->doc:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public getAnnotatedText(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Ljava/lang/String;
    .locals 4

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfAnnotatedTextExtractor;->doc:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->createExcerpt(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 32
    sget-object v1, Lcom/amazon/android/docviewer/pdf/PdfAnnotatedTextExtractor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected exception extracting PDF text for annotation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
