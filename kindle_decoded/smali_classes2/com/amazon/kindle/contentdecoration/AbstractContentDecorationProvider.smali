.class public abstract Lcom/amazon/kindle/contentdecoration/AbstractContentDecorationProvider;
.super Ljava/lang/Object;
.source "AbstractContentDecorationProvider.java"

# interfaces
.implements Lcom/amazon/krf/platform/ContentDecorationDataProvider;


# instance fields
.field private contentDecorationListener:Lcom/amazon/krf/platform/ContentDecorationListener;

.field private final docViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/rendering/KRIFDocViewer;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/amazon/kindle/contentdecoration/AbstractContentDecorationProvider;->docViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    const/4 p1, 0x0

    .line 36
    iput-object p1, p0, Lcom/amazon/kindle/contentdecoration/AbstractContentDecorationProvider;->contentDecorationListener:Lcom/amazon/krf/platform/ContentDecorationListener;

    return-void
.end method


# virtual methods
.method public getContentDecorationListener()Lcom/amazon/krf/platform/ContentDecorationListener;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/amazon/kindle/contentdecoration/AbstractContentDecorationProvider;->contentDecorationListener:Lcom/amazon/krf/platform/ContentDecorationListener;

    return-object v0
.end method

.method public getDocViewer()Lcom/amazon/kindle/rendering/KRIFDocViewer;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/amazon/kindle/contentdecoration/AbstractContentDecorationProvider;->docViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    return-object v0
.end method

.method postDecorationsUpdate(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/krf/platform/ContentDecoration;",
            ">;",
            "Ljava/util/List<",
            "Lcom/amazon/krf/platform/ContentDecoration;",
            ">;)V"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/amazon/kindle/contentdecoration/AbstractContentDecorationProvider;->contentDecorationListener:Lcom/amazon/krf/platform/ContentDecorationListener;

    if-eqz v0, :cond_0

    .line 81
    invoke-interface {v0, p1, p2}, Lcom/amazon/krf/platform/ContentDecorationListener;->onContentDecorationChanged(Ljava/util/List;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public setContentDecorationListener(Lcom/amazon/krf/platform/ContentDecorationListener;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/amazon/kindle/contentdecoration/AbstractContentDecorationProvider;->contentDecorationListener:Lcom/amazon/krf/platform/ContentDecorationListener;

    return-void
.end method
