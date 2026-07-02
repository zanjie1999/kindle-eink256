.class interface abstract Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;
.super Ljava/lang/Object;
.source "RenderedDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/mobi/RenderedDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "RenderedDocListener"
.end annotation


# virtual methods
.method public abstract onAudioAreaActivated(Ljava/lang/String;)V
.end method

.method public abstract onMobiActiveAreaSelection(Lcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea;)V
.end method

.method public abstract onMobiActiveAreaToggled(Lcom/amazon/kindle/krf/KRF/Reader/Position;)V
.end method

.method public abstract onMobiBuyBook()V
.end method

.method public abstract onMobiNavigationFailed(I)V
.end method

.method public abstract onMobiNoteSelection(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V
.end method

.method public abstract onMobiOpenAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V
.end method

.method public abstract onMobiOpenExternalLink(Ljava/lang/String;)V
.end method

.method public abstract onMobiPositionChanged(IZ)V
.end method

.method public abstract onMobiPositionWillChange(I)V
.end method

.method public abstract onMobiRefresh()V
.end method

.method public abstract onMobiSettingsChanged()V
.end method

.method public abstract onMobiShowBookDetails()V
.end method

.method public abstract onVideoAreaActivated(Ljava/lang/String;)V
.end method
