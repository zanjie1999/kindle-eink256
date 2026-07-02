.class public Lcom/amazon/android/docviewer/pdf/PdfPagePositionsNative;
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

.method public static native createPagePositionsFromDoc(JI)J
.end method

.method public static native createPagePositionsFromMop(JI)J
.end method

.method public static native destroyPagePositions(J)J
.end method

.method public static native getKindleIndexClosestToPoint(JII)I
.end method

.method public static native getTextElementsFromPage(J)[Lcom/amazon/android/docviewer/pdf/TextElement;
.end method
