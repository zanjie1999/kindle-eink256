.class public abstract Lcom/amazon/krf/platform/element/TextPageElement;
.super Lcom/amazon/krf/platform/element/PageElement;
.source "TextPageElement.java"


# instance fields
.field private final mText:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/amazon/krf/platform/PositionRange;[Landroid/graphics/RectF;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/amazon/krf/platform/element/PageElement;-><init>(Lcom/amazon/krf/platform/PositionRange;[Landroid/graphics/RectF;)V

    .line 24
    iput-object p3, p0, Lcom/amazon/krf/platform/element/TextPageElement;->mText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/krf/platform/element/TextPageElement;->mText:Ljava/lang/String;

    return-object v0
.end method
