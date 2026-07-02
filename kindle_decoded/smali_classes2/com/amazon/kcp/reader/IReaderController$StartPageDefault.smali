.class public final Lcom/amazon/kcp/reader/IReaderController$StartPageDefault;
.super Lcom/amazon/kcp/reader/IReaderController$StartPage;
.source "IReaderController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/IReaderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StartPageDefault"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/amazon/kcp/reader/IReaderController$StartPage;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/amazon/kcp/reader/IReaderController$StartPageVisitor;)V
    .locals 0

    .line 92
    invoke-interface {p1, p0}, Lcom/amazon/kcp/reader/IReaderController$StartPageVisitor;->visit(Lcom/amazon/kcp/reader/IReaderController$StartPageDefault;)V

    return-void
.end method
