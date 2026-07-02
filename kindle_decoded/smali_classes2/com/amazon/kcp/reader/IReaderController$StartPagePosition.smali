.class public final Lcom/amazon/kcp/reader/IReaderController$StartPagePosition;
.super Lcom/amazon/kcp/reader/IReaderController$StartPage;
.source "IReaderController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/IReaderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StartPagePosition"
.end annotation


# instance fields
.field public final position:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 135
    invoke-direct {p0}, Lcom/amazon/kcp/reader/IReaderController$StartPage;-><init>()V

    .line 136
    iput p1, p0, Lcom/amazon/kcp/reader/IReaderController$StartPagePosition;->position:I

    return-void
.end method


# virtual methods
.method public accept(Lcom/amazon/kcp/reader/IReaderController$StartPageVisitor;)V
    .locals 0

    .line 140
    invoke-interface {p1, p0}, Lcom/amazon/kcp/reader/IReaderController$StartPageVisitor;->visit(Lcom/amazon/kcp/reader/IReaderController$StartPagePosition;)V

    return-void
.end method
