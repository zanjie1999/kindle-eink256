.class Lcom/amazon/kcp/reader/ReaderActivity$ReaderOrientationChangeListener;
.super Landroid/view/OrientationEventListener;
.source "ReaderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ReaderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReaderOrientationChangeListener"
.end annotation


# instance fields
.field final activity:Lcom/amazon/kcp/reader/ReaderActivity;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kcp/reader/ReaderActivity;)V
    .locals 0

    .line 375
    invoke-direct {p0, p1}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 376
    iput-object p2, p0, Lcom/amazon/kcp/reader/ReaderActivity$ReaderOrientationChangeListener;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity$ReaderOrientationChangeListener;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    if-eqz v0, :cond_0

    .line 382
    invoke-static {v0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->access$000(Lcom/amazon/kcp/reader/ReaderActivity;I)V

    :cond_0
    return-void
.end method
