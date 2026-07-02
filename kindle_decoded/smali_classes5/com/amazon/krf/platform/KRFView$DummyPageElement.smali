.class Lcom/amazon/krf/platform/KRFView$DummyPageElement;
.super Lcom/amazon/krf/platform/element/PageElement;
.source "KRFView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/krf/platform/KRFView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DummyPageElement"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/krf/platform/KRFView;


# direct methods
.method public constructor <init>(Lcom/amazon/krf/platform/KRFView;Lcom/amazon/krf/platform/Position;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/amazon/krf/platform/KRFView$DummyPageElement;->this$0:Lcom/amazon/krf/platform/KRFView;

    .line 314
    new-instance p1, Lcom/amazon/krf/platform/PositionRange;

    invoke-direct {p1, p2, p2}, Lcom/amazon/krf/platform/PositionRange;-><init>(Lcom/amazon/krf/platform/Position;Lcom/amazon/krf/platform/Position;)V

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/amazon/krf/platform/element/PageElement;-><init>(Lcom/amazon/krf/platform/PositionRange;[Landroid/graphics/RectF;)V

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
