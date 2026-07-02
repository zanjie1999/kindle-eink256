.class public abstract Lcom/amazon/readingactions/ui/widget/BookGridBase;
.super Lcom/amazon/readingactions/ui/widget/WidgetBase;
.source "BookGridBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/readingactions/ui/widget/WidgetBase<",
        "Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/amazon/readingactions/ui/widget/WidgetBase;-><init>(Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;)V

    return-void
.end method


# virtual methods
.method protected isSharingSupported()Z
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;

    iget-boolean v0, v0, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->showShareButton:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/ea/ui/helper/ShareHelper;->isSharingSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
