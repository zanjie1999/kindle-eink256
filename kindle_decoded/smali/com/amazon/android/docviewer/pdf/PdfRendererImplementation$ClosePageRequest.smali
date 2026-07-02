.class Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation$ClosePageRequest;
.super Ljava/lang/Object;
.source "PdfRendererImplementation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClosePageRequest"
.end annotation


# instance fields
.field page:Lcom/amazon/android/docviewer/pdf/PdfPage;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/pdf/PdfPage;)V
    .locals 0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation$ClosePageRequest;->page:Lcom/amazon/android/docviewer/pdf/PdfPage;

    return-void
.end method
