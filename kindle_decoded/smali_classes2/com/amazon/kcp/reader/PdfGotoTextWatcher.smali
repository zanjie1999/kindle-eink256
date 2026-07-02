.class public Lcom/amazon/kcp/reader/PdfGotoTextWatcher;
.super Ljava/lang/Object;
.source "PdfGotoTextWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private m_endingPageIndex:I

.field m_pdfDoc:Lcom/amazon/android/docviewer/pdf/PdfDoc;

.field private m_startingPageIndex:I


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/KindleDoc;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    check-cast p1, Lcom/amazon/android/docviewer/pdf/PdfDoc;

    iput-object p1, p0, Lcom/amazon/kcp/reader/PdfGotoTextWatcher;->m_pdfDoc:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    .line 32
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getBeginningPosition()I

    move-result p1

    invoke-static {p1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPageIndexFromPosition(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/reader/PdfGotoTextWatcher;->m_startingPageIndex:I

    .line 33
    iget-object p1, p0, Lcom/amazon/kcp/reader/PdfGotoTextWatcher;->m_pdfDoc:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getBookEndPosition()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPageIndexFromPosition(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/reader/PdfGotoTextWatcher;->m_endingPageIndex:I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
