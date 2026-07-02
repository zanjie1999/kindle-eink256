.class public Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory$KindleDocumentProvider;
.super Ljava/lang/Object;
.source "MobiKindleDocViewerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KindleDocumentProvider"
.end annotation


# instance fields
.field private book:Lcom/amazon/kindle/model/content/ILocalBookItem;

.field private bookPath:Ljava/lang/String;

.field private factory:Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory;

.field private security:Lcom/amazon/system/security/Security;


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory;Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/system/security/Security;)V
    .locals 0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput-object p2, p0, Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory$KindleDocumentProvider;->book:Lcom/amazon/kindle/model/content/ILocalBookItem;

    .line 208
    invoke-interface {p2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getFileName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory$KindleDocumentProvider;->bookPath:Ljava/lang/String;

    .line 209
    iput-object p3, p0, Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory$KindleDocumentProvider;->security:Lcom/amazon/system/security/Security;

    .line 210
    iput-object p1, p0, Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory$KindleDocumentProvider;->factory:Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory;

    return-void
.end method


# virtual methods
.method public getKindleDocument()Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;
    .locals 4

    .line 214
    iget-object v0, p0, Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory$KindleDocumentProvider;->factory:Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory;

    iget-object v1, p0, Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory$KindleDocumentProvider;->bookPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory$KindleDocumentProvider;->security:Lcom/amazon/system/security/Security;

    iget-object v3, p0, Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory$KindleDocumentProvider;->book:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory;->createKRFDocument(Ljava/lang/String;Lcom/amazon/system/security/Security;Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

    move-result-object v0

    return-object v0
.end method
