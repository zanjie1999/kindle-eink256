.class interface abstract Lcom/amazon/android/docviewer/pdf/IPdfRenderer;
.super Ljava/lang/Object;
.source "IPdfRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/docviewer/pdf/IPdfRenderer$TileRequest;,
        Lcom/amazon/android/docviewer/pdf/IPdfRenderer$Callback;
    }
.end annotation


# virtual methods
.method public abstract cancelPendingRenders(I)V
.end method

.method public abstract close(Lcom/amazon/android/docviewer/pdf/PdfPage;)V
.end method

.method public abstract close(Lcom/amazon/android/docviewer/pdf/PdfTileCollection;)V
.end method

.method public abstract notifyWhenAllTileRequestsComplete(Lcom/amazon/android/docviewer/pdf/IPdfRenderer$Callback;I)V
.end method

.method public abstract recycle(Lcom/amazon/android/docviewer/pdf/PdfTileCollection;I)V
.end method

.method public abstract requestTile(Lcom/amazon/android/docviewer/pdf/IPdfRenderer$TileRequest;)V
.end method
