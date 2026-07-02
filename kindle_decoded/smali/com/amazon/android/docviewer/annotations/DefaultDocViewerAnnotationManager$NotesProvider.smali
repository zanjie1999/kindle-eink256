.class interface abstract Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$NotesProvider;
.super Ljava/lang/Object;
.source "DefaultDocViewerAnnotationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "NotesProvider"
.end annotation


# virtual methods
.method public abstract provideNotes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/reader/Note;",
            ">;"
        }
    .end annotation
.end method
