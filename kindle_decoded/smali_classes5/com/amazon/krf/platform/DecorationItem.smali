.class public Lcom/amazon/krf/platform/DecorationItem;
.super Ljava/lang/Object;
.source "DecorationItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;
    }
.end annotation


# instance fields
.field private final mDecor:Lcom/amazon/krf/platform/ContentDecoration;

.field private final mMergedRect:Landroid/graphics/RectF;

.field private final mRects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private final mText:Ljava/lang/String;

.field private final mType:Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Landroid/graphics/RectF;Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;Ljava/lang/String;Lcom/amazon/krf/platform/ContentDecoration;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/RectF;",
            ">;",
            "Landroid/graphics/RectF;",
            "Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;",
            "Ljava/lang/String;",
            "Lcom/amazon/krf/platform/ContentDecoration;",
            ")V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccessibilityItem type:"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iput-object p1, p0, Lcom/amazon/krf/platform/DecorationItem;->mRects:Ljava/util/ArrayList;

    .line 44
    iput-object p2, p0, Lcom/amazon/krf/platform/DecorationItem;->mMergedRect:Landroid/graphics/RectF;

    .line 45
    iput-object p3, p0, Lcom/amazon/krf/platform/DecorationItem;->mType:Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;

    .line 46
    iput-object p4, p0, Lcom/amazon/krf/platform/DecorationItem;->mText:Ljava/lang/String;

    .line 47
    iput-object p5, p0, Lcom/amazon/krf/platform/DecorationItem;->mDecor:Lcom/amazon/krf/platform/ContentDecoration;

    return-void
.end method


# virtual methods
.method public getContentDecoration()Lcom/amazon/krf/platform/ContentDecoration;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/amazon/krf/platform/DecorationItem;->mDecor:Lcom/amazon/krf/platform/ContentDecoration;

    return-object v0
.end method

.method public getRect()Landroid/graphics/RectF;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/amazon/krf/platform/DecorationItem;->mMergedRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getRects()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/amazon/krf/platform/DecorationItem;->mRects:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/amazon/krf/platform/DecorationItem;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/amazon/krf/platform/DecorationItem;->mType:Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;

    return-object v0
.end method
