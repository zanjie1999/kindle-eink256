.class public interface abstract Lcom/amazon/kcp/reader/IReaderLayoutCustomizer;
.super Ljava/lang/Object;
.source "IReaderLayoutCustomizer.java"


# virtual methods
.method public abstract getSystemUIFlagsAnimator(Lcom/amazon/kcp/reader/ui/ReaderLayout;I)Landroid/animation/Animator;
.end method

.method public abstract getSystemUILayoutFlags()I
.end method

.method public abstract getSystemUiFlags(Z)I
.end method

.method public abstract onCreate(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kcp/reader/ui/ReaderLayout;)V
.end method

.method public abstract onReaderModeChanged(Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;Lcom/amazon/kcp/reader/ui/ReaderLayout;)V
.end method

.method public abstract onSelectionAreaChanged(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V
.end method

.method public abstract onWindowFocusChanged(ZLcom/amazon/kcp/reader/ui/ReaderLayout;)V
.end method

.method public abstract setVisibleOverlays(Lcom/amazon/kcp/reader/ui/ReaderLayout;II)V
.end method
