.class Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler$BackActionStackEntry;
.super Ljava/lang/Object;
.source "BookReaderDocViewerEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackActionStackEntry"
.end annotation


# instance fields
.field public m_action:Lcom/amazon/kindle/krx/reader/IBookBackStack$PostBackAction;

.field public m_position:J


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler;JLcom/amazon/kindle/krx/reader/IBookBackStack$PostBackAction;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-wide p2, p0, Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler$BackActionStackEntry;->m_position:J

    .line 31
    iput-object p4, p0, Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler$BackActionStackEntry;->m_action:Lcom/amazon/kindle/krx/reader/IBookBackStack$PostBackAction;

    return-void
.end method
