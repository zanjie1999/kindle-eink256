.class public Lcom/amazon/android/docviewer/pdf/PdfPasswordErrorException;
.super Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException;
.source "PdfPasswordErrorException.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final serialVersionUID:J = -0x2bdccdabdd13a3abL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-class v0, Lcom/amazon/android/docviewer/pdf/PdfPasswordErrorException;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/docviewer/pdf/PdfPasswordErrorException;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 24
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException;-><init>(Ljava/lang/String;)V

    .line 25
    sget-object v0, Lcom/amazon/android/docviewer/pdf/PdfPasswordErrorException;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PdfPasswordErrorException is initialized..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
