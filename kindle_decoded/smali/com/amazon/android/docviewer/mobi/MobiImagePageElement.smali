.class final Lcom/amazon/android/docviewer/mobi/MobiImagePageElement;
.super Lcom/amazon/android/docviewer/mobi/MobiPageElement;
.source "MobiImagePageElement.java"

# interfaces
.implements Lcom/amazon/android/docviewer/IImagePageElement;


# instance fields
.field private imageId:Ljava/lang/String;

.field private final m_krfElement:Lcom/amazon/kindle/krf/KRF/Reader/IImagePageElement;


# direct methods
.method protected constructor <init>(Lcom/amazon/kindle/krf/KRF/Reader/IImagePageElement;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/mobi/MobiPageElement;-><init>(Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;)V

    .line 11
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiImagePageElement;->m_krfElement:Lcom/amazon/kindle/krf/KRF/Reader/IImagePageElement;

    .line 12
    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IImagePageElement;->getImageId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiImagePageElement;->imageId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getImageId()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiImagePageElement;->imageId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
