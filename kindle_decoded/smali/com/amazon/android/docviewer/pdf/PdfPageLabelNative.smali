.class public Lcom/amazon/android/docviewer/pdf/PdfPageLabelNative;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/amazon/kindle/jni/KindleReaderJNI;->init()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native create(J)J
.end method

.method public static native destroy(J)V
.end method

.method public static native getAllPageLabels(J)[Ljava/lang/String;
.end method

.method public static native getLastArabicPageLabel(J)I
.end method

.method public static native getPageIndexForPageLabel(JLjava/lang/String;)I
.end method

.method public static native getPageLabelAtPageIndex(JI)Ljava/lang/String;
.end method

.method public static native isPaginationNumericOnly(J)Z
.end method
