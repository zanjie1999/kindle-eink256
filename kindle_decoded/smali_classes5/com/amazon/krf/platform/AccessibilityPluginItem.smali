.class public Lcom/amazon/krf/platform/AccessibilityPluginItem;
.super Ljava/lang/Object;
.source "AccessibilityPluginItem.java"


# instance fields
.field private final mAnnotatable:Z

.field private final mRect:Landroid/graphics/RectF;

.field private final mSwipeNavOrder:I

.field private final mText:Ljava/lang/String;

.field private final mZOrder:I


# direct methods
.method constructor <init>(Landroid/graphics/RectF;Ljava/lang/String;ZII)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/amazon/krf/platform/AccessibilityPluginItem;->mRect:Landroid/graphics/RectF;

    .line 23
    iput-object p2, p0, Lcom/amazon/krf/platform/AccessibilityPluginItem;->mText:Ljava/lang/String;

    .line 24
    iput-boolean p3, p0, Lcom/amazon/krf/platform/AccessibilityPluginItem;->mAnnotatable:Z

    .line 25
    iput p4, p0, Lcom/amazon/krf/platform/AccessibilityPluginItem;->mSwipeNavOrder:I

    .line 26
    iput p5, p0, Lcom/amazon/krf/platform/AccessibilityPluginItem;->mZOrder:I

    return-void
.end method


# virtual methods
.method public getRect()Landroid/graphics/RectF;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazon/krf/platform/AccessibilityPluginItem;->mRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getSwipeNavOrder()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/amazon/krf/platform/AccessibilityPluginItem;->mSwipeNavOrder:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazon/krf/platform/AccessibilityPluginItem;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getZOrder()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/amazon/krf/platform/AccessibilityPluginItem;->mZOrder:I

    return v0
.end method

.method public isAnnotatable()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/amazon/krf/platform/AccessibilityPluginItem;->mAnnotatable:Z

    return v0
.end method
