.class public Lcom/amazon/krf/internal/VirtualViewImpl;
.super Ljava/lang/Object;
.source "VirtualViewImpl.java"

# interfaces
.implements Lcom/amazon/krf/platform/VirtualView;
.implements Ljava/util/Comparator;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/krf/platform/VirtualView;",
        "Ljava/util/Comparator<",
        "Lcom/amazon/krf/internal/VirtualViewImpl;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lcom/amazon/krf/internal/VirtualViewImpl;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_DESC:Ljava/lang/String; = ""

.field private static final DEFAULT_DETAILED_DESC:Ljava/lang/String; = ""

.field private static final DEFAULT_EXTRAS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_ID:I = 0x0

.field private static final DEFAULT_IS_CLICKABLE:Z = false

.field private static final DEFAULT_IS_TEXTUAL:Z = false

.field private static final DEFAULT_ORDER:I = -0x80000000

.field private static final DEFAULT_RECT:Landroid/graphics/Rect;

.field private static final DEFAULT_SHORT_DESC:Ljava/lang/String; = ""

.field private static final DEFAULT_TEXT:Ljava/lang/String; = ""

.field private static final DEFAULT_TYPE:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

.field private static final DEFAULT_ZORDER:I = 0x0

.field public static final FULL_STOP:Ljava/lang/String; = ". "

.field private static final INVALID_ID:I


# instance fields
.field private final mContentDescription:Ljava/lang/String;

.field private final mDetailDescription:Ljava/lang/String;

.field private final mExtras:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mId:I

.field private final mIsClickable:Z

.field private final mIsTextual:Z

.field private mOrder:I

.field private final mRect:Landroid/graphics/Rect;

.field private final mShortDescription:Ljava/lang/String;

.field private final mTextContent:Ljava/lang/String;

.field private final mViewType:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

.field private final mZOrder:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    sget-object v0, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;->UNDEFINED:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    sput-object v0, Lcom/amazon/krf/internal/VirtualViewImpl;->DEFAULT_TYPE:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    .line 17
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/amazon/krf/internal/VirtualViewImpl;->DEFAULT_RECT:Landroid/graphics/Rect;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/krf/internal/VirtualViewImpl;->DEFAULT_EXTRAS:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 13

    .line 77
    sget-object v2, Lcom/amazon/krf/internal/VirtualViewImpl;->DEFAULT_TYPE:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    sget-object v3, Lcom/amazon/krf/internal/VirtualViewImpl;->DEFAULT_RECT:Landroid/graphics/Rect;

    sget-object v12, Lcom/amazon/krf/internal/VirtualViewImpl;->DEFAULT_EXTRAS:Ljava/util/HashMap;

    const/4 v1, 0x0

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const/4 v8, 0x0

    const/high16 v9, -0x80000000

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/amazon/krf/internal/VirtualViewImpl;-><init>(ILcom/amazon/krf/platform/VirtualView$VirtualViewType;Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZLjava/util/HashMap;)V

    return-void
.end method

.method public constructor <init>(ILcom/amazon/krf/platform/VirtualView$VirtualViewType;Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZLjava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/amazon/krf/platform/VirtualView$VirtualViewType;",
            "Landroid/graphics/Rect;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIZZ",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    if-eqz p6, :cond_0

    if-eqz p7, :cond_0

    if-eqz p12, :cond_0

    .line 62
    iput p1, p0, Lcom/amazon/krf/internal/VirtualViewImpl;->mId:I

    .line 63
    iput-object p2, p0, Lcom/amazon/krf/internal/VirtualViewImpl;->mViewType:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    .line 64
    iput-object p3, p0, Lcom/amazon/krf/internal/VirtualViewImpl;->mRect:Landroid/graphics/Rect;

    .line 65
    iput-object p4, p0, Lcom/amazon/krf/internal/VirtualViewImpl;->mTextContent:Ljava/lang/String;

    .line 66
    iput-object p5, p0, Lcom/amazon/krf/internal/VirtualViewImpl;->mContentDescription:Ljava/lang/String;

    .line 67
    iput-object p6, p0, Lcom/amazon/krf/internal/VirtualViewImpl;->mShortDescription:Ljava/lang/String;

    .line 68
    iput-object p7, p0, Lcom/amazon/krf/internal/VirtualViewImpl;->mDetailDescription:Ljava/lang/String;

    .line 69
    iput p8, p0, Lcom/amazon/krf/internal/VirtualViewImpl;->mZOrder:I

    .line 70
    iput p9, p0, Lcom/amazon/krf/internal/VirtualViewImpl;->mOrder:I

    .line 71
    iput-boolean p10, p0, Lcom/amazon/krf/internal/VirtualViewImpl;->mIsTextual:Z

    .line 72
    iput-boolean p11, p0, Lcom/amazon/krf/internal/VirtualViewImpl;->mIsClickable:Z

    .line 73
    iput-object p12, p0, Lcom/amazon/krf/internal/VirtualViewImpl;->mExtras:Ljava/util/HashMap;

    return-void

    .line 60
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null objects are not allowed for any of arguments of VirtualViewImpl constructor"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;ZILcom/amazon/krf/platform/VirtualView$VirtualViewType;)V
    .locals 13

    .line 119
    sget-object v12, Lcom/amazon/krf/internal/VirtualViewImpl;->DEFAULT_EXTRAS:Ljava/util/HashMap;

    const-string v6, ""

    const-string v7, ""

    const/high16 v9, -0x80000000

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p7

    move-object/from16 v3, p4

    move-object/from16 v4, p3

    move-object v5, p2

    move/from16 v8, p6

    move/from16 v10, p5

    invoke-direct/range {v0 .. v12}, Lcom/amazon/krf/internal/VirtualViewImpl;-><init>(ILcom/amazon/krf/platform/VirtualView$VirtualViewType;Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZLjava/util/HashMap;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Rect;Lcom/amazon/krf/platform/VirtualView$VirtualViewType;)V
    .locals 13

    .line 103
    sget-object v12, Lcom/amazon/krf/internal/VirtualViewImpl;->DEFAULT_EXTRAS:Ljava/util/HashMap;

    const/4 v1, 0x0

    const-string v4, ""

    const-string v6, ""

    const-string v7, ""

    const/4 v8, 0x0

    const/high16 v9, -0x80000000

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object/from16 v2, p3

    move-object v3, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v12}, Lcom/amazon/krf/internal/VirtualViewImpl;-><init>(ILcom/amazon/krf/platform/VirtualView$VirtualViewType;Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZLjava/util/HashMap;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Lcom/amazon/krf/platform/VirtualView$VirtualViewType;ZLjava/lang/String;Ljava/util/HashMap;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/graphics/Rect;",
            "Lcom/amazon/krf/platform/VirtualView$VirtualViewType;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 92
    invoke-static {p1, p2}, Lcom/amazon/krf/internal/VirtualViewImpl;->appendPhase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x0

    const/4 v8, 0x0

    const/high16 v9, -0x80000000

    const/4 v10, 0x0

    move-object v0, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p3

    move-object v4, p1

    move-object v6, p2

    move-object/from16 v7, p6

    move/from16 v11, p5

    move-object/from16 v12, p7

    invoke-direct/range {v0 .. v12}, Lcom/amazon/krf/internal/VirtualViewImpl;-><init>(ILcom/amazon/krf/platform/VirtualView$VirtualViewType;Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZLjava/util/HashMap;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;ZILcom/amazon/krf/platform/VirtualView$VirtualViewType;)V
    .locals 13

    .line 134
    sget-object v12, Lcom/amazon/krf/internal/VirtualViewImpl;->DEFAULT_EXTRAS:Ljava/util/HashMap;

    const/4 v1, -0x1

    const-string v6, ""

    const-string v7, ""

    const/high16 v9, -0x80000000

    const/4 v11, 0x0

    move-object v0, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p3

    move-object v4, p2

    move-object v5, p1

    move/from16 v8, p5

    move/from16 v10, p4

    invoke-direct/range {v0 .. v12}, Lcom/amazon/krf/internal/VirtualViewImpl;-><init>(ILcom/amazon/krf/platform/VirtualView$VirtualViewType;Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZLjava/util/HashMap;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;ZLcom/amazon/krf/platform/VirtualView$VirtualViewType;)V
    .locals 13

    .line 148
    sget-object v12, Lcom/amazon/krf/internal/VirtualViewImpl;->DEFAULT_EXTRAS:Ljava/util/HashMap;

    const/4 v1, -0x1

    const-string v6, ""

    const-string v7, ""

    const/4 v8, 0x0

    const/high16 v9, -0x80000000

    const/4 v11, 0x0

    move-object v0, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p3

    move-object v4, p2

    move-object v5, p1

    move/from16 v10, p4

    invoke-direct/range {v0 .. v12}, Lcom/amazon/krf/internal/VirtualViewImpl;-><init>(ILcom/amazon/krf/platform/VirtualView$VirtualViewType;Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZLjava/util/HashMap;)V

    return-void
.end method

.method protected static appendPhase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 231
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 234
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public compare(Lcom/amazon/krf/internal/VirtualViewImpl;Lcom/amazon/krf/internal/VirtualViewImpl;)I
    .locals 0

    .line 213
    invoke-virtual {p1, p2}, Lcom/amazon/krf/internal/VirtualViewImpl;->compareTo(Lcom/amazon/krf/internal/VirtualViewImpl;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 11
    check-cast p1, Lcom/amazon/krf/internal/VirtualViewImpl;

    check-cast p2, Lcom/amazon/krf/internal/VirtualViewImpl;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/krf/internal/VirtualViewImpl;->compare(Lcom/amazon/krf/internal/VirtualViewImpl;Lcom/amazon/krf/internal/VirtualViewImpl;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lcom/amazon/krf/internal/VirtualViewImpl;)I
    .locals 1

    .line 208
    invoke-virtual {p0}, Lcom/amazon/krf/internal/VirtualViewImpl;->getZOrder()I

    move-result v0

    invoke-virtual {p1}, Lcom/amazon/krf/internal/VirtualViewImpl;->getZOrder()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 11
    check-cast p1, Lcom/amazon/krf/internal/VirtualViewImpl;

    invoke-virtual {p0, p1}, Lcom/amazon/krf/internal/VirtualViewImpl;->compareTo(Lcom/amazon/krf/internal/VirtualViewImpl;)I

    move-result p1

    return p1
.end method

.method public contains(FF)Z
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/amazon/krf/internal/VirtualViewImpl;->mRect:Landroid/graphics/Rect;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 244
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/amazon/krf/internal/VirtualViewImpl;

    if-eq v1, v2, :cond_1

    return v0

    .line 248
    :cond_1
    check-cast p1, Lcom/amazon/krf/internal/VirtualViewImpl;

    .line 250
    iget v1, p0, Lcom/amazon/krf/internal/VirtualViewImpl;->mId:I

    iget v2, p1, Lcom/amazon/krf/internal/VirtualViewImpl;->mId:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/amazon/krf/internal/VirtualViewImpl;->mZOrder:I

    iget v2, p1, Lcom/amazon/krf/internal/VirtualViewImpl;->mZOrder:I

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/amazon/krf/internal/VirtualViewImpl;->mIsTextual:Z

    iget-boolean v2, p1, Lcom/amazon/krf/internal/VirtualViewImpl;->mIsTextual:Z

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/amazon/krf/internal/VirtualViewImpl;->mIsClickable:Z

    iget-boolean v2, p1, Lcom/amazon/krf/internal/VirtualViewImpl;->mIsClickable:Z

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/amazon/krf/internal/VirtualViewImpl;->mOrder:I

    iget v2, p1, Lcom/amazon/krf/internal/VirtualViewImpl;->mOrder:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/amazon/krf/internal/VirtualViewImpl;->mContentDescription:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/krf/internal/VirtualViewImpl;->mContentDescription:Ljava/lang/String;

    .line 255
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amazon/krf/internal/VirtualViewImpl;->mRect:Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/amazon/krf/internal/VirtualViewImpl;->mRect:Landroid/graphics/Rect;

    .line 256
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amazon/krf/internal/VirtualViewImpl;->mTextContent:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/krf/internal/VirtualViewImpl;->mTextContent:Ljava/lang/String;

    .line 257
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amazon/krf/internal/VirtualViewImpl;->mViewType:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    iget-object v2, p1, Lcom/amazon/krf/internal/VirtualViewImpl;->mViewType:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    .line 258
    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amazon/krf/internal/VirtualViewImpl;->mShortDescription:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/krf/internal/VirtualViewImpl;->mShortDescription:Ljava/lang/String;

    .line 259
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amazon/krf/internal/VirtualViewImpl;->mDetailDescription:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/krf/internal/VirtualViewImpl;->mDetailDescription:Ljava/lang/String;

    .line 260
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amazon/krf/internal/VirtualViewImpl;->mExtras:Ljava/util/HashMap;

    iget-object p1, p1, Lcom/amazon/krf/internal/VirtualViewImpl;->mExtras:Ljava/util/HashMap;

    .line 261
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/amazon/krf/internal/VirtualViewImpl;->mRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/amazon/krf/internal/VirtualViewImpl;->mContentDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getDetailDescription()Ljava/lang/String;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/amazon/krf/internal/VirtualViewImpl;->mDetailDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getExtras()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/amazon/krf/internal/VirtualViewImpl;->mExtras:Ljava/util/HashMap;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 158
    iget v0, p0, Lcom/amazon/krf/internal/VirtualViewImpl;->mId:I

    return v0
.end method

.method public getOrder()I
    .locals 1

    .line 198
    iget v0, p0, Lcom/amazon/krf/internal/VirtualViewImpl;->mOrder:I

    return v0
.end method

.method public getShortDescription()Ljava/lang/String;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/amazon/krf/internal/VirtualViewImpl;->mShortDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/amazon/krf/internal/VirtualViewImpl;->mTextContent:Ljava/lang/String;

    return-object v0
.end method

.method public getViewType()Lcom/amazon/krf/platform/VirtualView$VirtualViewType;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/amazon/krf/internal/VirtualViewImpl;->mViewType:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    return-object v0
.end method

.method public getZOrder()I
    .locals 1

    .line 178
    iget v0, p0, Lcom/amazon/krf/internal/VirtualViewImpl;->mZOrder:I

    return v0
.end method

.method public isClickable()Z
    .locals 1

    .line 225
    iget-boolean v0, p0, Lcom/amazon/krf/internal/VirtualViewImpl;->mIsClickable:Z

    return v0
.end method

.method public isTextual()Z
    .locals 1

    .line 183
    iget-boolean v0, p0, Lcom/amazon/krf/internal/VirtualViewImpl;->mIsTextual:Z

    return v0
.end method

.method public setId(I)V
    .locals 0

    .line 153
    iput p1, p0, Lcom/amazon/krf/internal/VirtualViewImpl;->mId:I

    return-void
.end method

.method public setOrder(I)V
    .locals 0

    .line 193
    iput p1, p0, Lcom/amazon/krf/internal/VirtualViewImpl;->mOrder:I

    return-void
.end method
