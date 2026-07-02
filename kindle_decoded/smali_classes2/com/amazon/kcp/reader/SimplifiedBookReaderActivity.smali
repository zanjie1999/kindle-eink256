.class public Lcom/amazon/kcp/reader/SimplifiedBookReaderActivity;
.super Lcom/amazon/kcp/reader/BookReaderActivity;
.source "SimplifiedBookReaderActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/amazon/kcp/reader/BookReaderActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getColorModeId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;
    .locals 1

    .line 34
    sget-object v0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->WHITE:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    return-object v0
.end method

.method public isPageCurlSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public populateSupportedFeatureSet()V
    .locals 2

    .line 39
    invoke-super {p0}, Lcom/amazon/kcp/reader/BookReaderActivity;->populateSupportedFeatureSet()V

    .line 40
    sget-object v0, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->SidePanel:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/reader/ReaderActivity;->setReaderActivityFeature(Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;Z)V

    return-void
.end method

.method public recordSettings()V
    .locals 0

    return-void
.end method

.method public setActionBarVisibility(Z)V
    .locals 0

    return-void
.end method
