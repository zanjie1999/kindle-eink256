.class public interface abstract Lcom/amazon/kcp/reader/IReaderController$StartPageVisitor;
.super Ljava/lang/Object;
.source "IReaderController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/IReaderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StartPageVisitor"
.end annotation


# virtual methods
.method public abstract visit(Lcom/amazon/kcp/reader/IReaderController$StartPageBeginning;)V
.end method

.method public abstract visit(Lcom/amazon/kcp/reader/IReaderController$StartPageDefault;)V
.end method

.method public abstract visit(Lcom/amazon/kcp/reader/IReaderController$StartPagePosition;)V
.end method
