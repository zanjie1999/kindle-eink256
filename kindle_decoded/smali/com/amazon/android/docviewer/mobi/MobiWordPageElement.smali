.class public final Lcom/amazon/android/docviewer/mobi/MobiWordPageElement;
.super Lcom/amazon/android/docviewer/mobi/MobiPageElement;
.source "MobiWordPageElement.java"

# interfaces
.implements Lcom/amazon/android/docviewer/IWordPageElement;


# instance fields
.field private final m_krfElement:Lcom/amazon/kindle/krf/KRF/Reader/IWordPageElement;

.field private text:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/amazon/kindle/krf/KRF/Reader/IWordPageElement;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/mobi/MobiPageElement;-><init>(Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;)V

    .line 12
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiWordPageElement;->m_krfElement:Lcom/amazon/kindle/krf/KRF/Reader/IWordPageElement;

    .line 13
    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IWordPageElement;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiWordPageElement;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 32
    instance-of v0, p1, Lcom/amazon/android/docviewer/mobi/MobiWordPageElement;

    if-eqz v0, :cond_0

    .line 33
    check-cast p1, Lcom/amazon/android/docviewer/mobi/MobiWordPageElement;

    .line 34
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/MobiWordPageElement;->getId()I

    move-result v0

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiWordPageElement;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 35
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/MobiWordPageElement;->getEndId()I

    move-result v0

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiWordPageElement;->getEndId()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/amazon/android/docviewer/mobi/MobiWordPageElement;->text:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiWordPageElement;->text:Ljava/lang/String;

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/MobiWordPageElement;->getCoveringRectangles()Ljava/util/Vector;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiWordPageElement;->getCoveringRectangles()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiWordPageElement;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiWordPageElement;->m_krfElement:Lcom/amazon/kindle/krf/KRF/Reader/IWordPageElement;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 49
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiWordPageElement;->text:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method
