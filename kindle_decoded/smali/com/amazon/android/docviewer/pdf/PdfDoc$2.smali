.class Lcom/amazon/android/docviewer/pdf/PdfDoc$2;
.super Ljava/lang/Object;
.source "PdfDoc.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/pdf/PdfDoc;-><init>(Lcom/amazon/android/docviewer/pdf/PdfDocViewer;Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/krf/KRF/ReaderInternal/MobiDataReader;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/pdf/PdfDoc;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/pdf/PdfDoc;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc$2;->this$0:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 178
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfDoc$2;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 181
    invoke-static {}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->access$200()Ljava/lang/String;

    const/4 v0, 0x0

    return-object v0
.end method
