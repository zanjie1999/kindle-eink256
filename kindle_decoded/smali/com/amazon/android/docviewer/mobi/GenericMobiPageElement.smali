.class final Lcom/amazon/android/docviewer/mobi/GenericMobiPageElement;
.super Lcom/amazon/android/docviewer/mobi/MobiPageElement;
.source "GenericMobiPageElement.java"


# instance fields
.field private final m_krfElement:Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;


# direct methods
.method protected constructor <init>(Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/mobi/MobiPageElement;-><init>(Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;)V

    .line 8
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/GenericMobiPageElement;->m_krfElement:Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
