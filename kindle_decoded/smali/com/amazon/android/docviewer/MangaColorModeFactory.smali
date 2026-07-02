.class public Lcom/amazon/android/docviewer/MangaColorModeFactory;
.super Ljava/lang/Object;
.source "MangaColorModeFactory.java"


# direct methods
.method public static getColorMode(Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorMode;
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-static {v0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getColorModeFactory()Lcom/amazon/android/docviewer/KindleDocColorModeFactory;

    move-result-object v0

    .line 12
    invoke-virtual {v0, p0}, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->createBlackColorMode(Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object p0

    const/high16 v0, -0x1000000

    .line 13
    iput v0, p0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_backgroundColor:I

    return-object p0
.end method
