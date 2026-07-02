.class public interface abstract Lcom/amazon/kcp/application/ActivityFactory;
.super Ljava/lang/Object;
.source "ActivityFactory.java"


# virtual methods
.method public abstract getReaderActivity(Lcom/amazon/android/docviewer/KindleDocViewer;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/docviewer/KindleDocViewer;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/kcp/reader/ReaderActivity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getReddingActivity(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDoc;Landroid/os/Bundle;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amazon/android/docviewer/KindleDoc;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/kcp/redding/ReddingActivity;",
            ">;"
        }
    .end annotation
.end method
