.class public Lcom/amazon/android/docviewer/mobi/MobiDocFactory;
.super Ljava/lang/Object;
.source "MobiDocFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createMobiDocTextFragment(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;Lcom/amazon/android/docviewer/mobi/RenderedDocFactory;)Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;
    .locals 1

    .line 22
    new-instance v0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-direct {v0, p1, p2}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;-><init>(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;Lcom/amazon/android/docviewer/mobi/RenderedDocFactory;)V

    return-object v0
.end method

.method public createMobiDocViewer(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/system/security/Security;Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory;Landroid/os/ParcelFileDescriptor;)Lcom/amazon/android/docviewer/mobi/MobiDocViewer;
    .locals 7

    .line 17
    new-instance v6, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    new-instance v3, Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory$KindleDocumentProvider;

    invoke-direct {v3, p4, p1, p2}, Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory$KindleDocumentProvider;-><init>(Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory;Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/system/security/Security;)V

    new-instance v4, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    invoke-direct {v4}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;-><init>()V

    move-object v0, v6

    move-object v1, p1

    move-object v2, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;-><init>(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory$KindleDocumentProvider;Lcom/amazon/android/docviewer/mobi/KRFExecutorService;Landroid/os/ParcelFileDescriptor;)V

    return-object v6
.end method

.method public createRenderDrawableArray(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;)Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;
    .locals 1

    .line 26
    new-instance v0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    invoke-direct {v0, p1}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;-><init>(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;)V

    .line 27
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->initialize()V

    return-object v0
.end method
