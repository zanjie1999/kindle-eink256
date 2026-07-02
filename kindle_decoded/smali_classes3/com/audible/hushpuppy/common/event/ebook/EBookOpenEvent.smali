.class public final Lcom/audible/hushpuppy/common/event/ebook/EBookOpenEvent;
.super Ljava/lang/Object;
.source "EBookOpenEvent.java"


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Ebook cannot be passed null"

    .line 25
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method
