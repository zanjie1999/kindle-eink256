.class public Lcom/amazon/kcp/reader/accessibility/VirtualView;
.super Ljava/lang/Object;
.source "VirtualView.java"

# interfaces
.implements Lcom/amazon/kindle/krx/accessibility/IVirtualView;


# static fields
.field private static VIRTUAL_VIEW_ID_GENERATOR:I = 0x400


# instance fields
.field private final bounds:Landroid/graphics/Rect;

.field private final description:Ljava/lang/String;

.field private final id:I

.field private final textual:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;Ljava/lang/String;Z)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 21
    invoke-static {p2}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    invoke-static {}, Lcom/amazon/kcp/reader/accessibility/VirtualView;->GenerateNewId()I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/reader/accessibility/VirtualView;->id:I

    .line 26
    iput-object p1, p0, Lcom/amazon/kcp/reader/accessibility/VirtualView;->bounds:Landroid/graphics/Rect;

    .line 27
    iput-object p2, p0, Lcom/amazon/kcp/reader/accessibility/VirtualView;->description:Ljava/lang/String;

    .line 28
    iput-boolean p3, p0, Lcom/amazon/kcp/reader/accessibility/VirtualView;->textual:Z

    return-void

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Must provide a non-null, non-empty content description"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Must provide a bounds for parent"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static GenerateNewId()I
    .locals 2

    .line 57
    sget v0, Lcom/amazon/kcp/reader/accessibility/VirtualView;->VIRTUAL_VIEW_ID_GENERATOR:I

    add-int/lit8 v0, v0, 0x1

    const v1, 0x7ffffffe

    rem-int/2addr v0, v1

    sput v0, Lcom/amazon/kcp/reader/accessibility/VirtualView;->VIRTUAL_VIEW_ID_GENERATOR:I

    return v0
.end method


# virtual methods
.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/VirtualView;->bounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/VirtualView;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/amazon/kcp/reader/accessibility/VirtualView;->id:I

    return v0
.end method

.method public handleHoverEvent(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isTextual()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/accessibility/VirtualView;->textual:Z

    return v0
.end method
