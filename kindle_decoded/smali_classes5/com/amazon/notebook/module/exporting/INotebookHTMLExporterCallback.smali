.class public interface abstract Lcom/amazon/notebook/module/exporting/INotebookHTMLExporterCallback;
.super Ljava/lang/Object;
.source "INotebookHTMLExporterCallback.java"


# virtual methods
.method public abstract receiveHTMLFile(Ljava/io/File;Landroid/net/Uri;Lcom/amazon/notebook/module/exporting/NotebookExportStatus;F)V
.end method

.method public abstract receiveOversize()V
.end method

.method public abstract receiveProgressUpdate(I)V
.end method
