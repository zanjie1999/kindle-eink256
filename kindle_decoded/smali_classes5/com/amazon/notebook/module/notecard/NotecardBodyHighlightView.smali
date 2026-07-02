.class public Lcom/amazon/notebook/module/notecard/NotecardBodyHighlightView;
.super Lcom/amazon/notebook/module/notecard/NotecardBodyView;
.source "NotecardBodyHighlightView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/amazon/notebook/module/notecard/NotecardBodyView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lcom/amazon/notebook/module/notecard/NotecardBodyView;->isHighlightable:Z

    return-void
.end method
