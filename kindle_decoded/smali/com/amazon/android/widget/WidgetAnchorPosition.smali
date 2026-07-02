.class public final Lcom/amazon/android/widget/WidgetAnchorPosition;
.super Ljava/lang/Object;
.source "WidgetAnchorPosition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/widget/WidgetAnchorPosition$Location;
    }
.end annotation


# static fields
.field public static final NONE:Lcom/amazon/android/widget/WidgetAnchorPosition;


# instance fields
.field final leftBound:I

.field public final location:Lcom/amazon/android/widget/WidgetAnchorPosition$Location;

.field final rightBound:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 20
    new-instance v0, Lcom/amazon/android/widget/WidgetAnchorPosition;

    sget-object v1, Lcom/amazon/android/widget/WidgetAnchorPosition$Location;->NONE:Lcom/amazon/android/widget/WidgetAnchorPosition$Location;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/amazon/android/widget/WidgetAnchorPosition;-><init>(Lcom/amazon/android/widget/WidgetAnchorPosition$Location;II)V

    sput-object v0, Lcom/amazon/android/widget/WidgetAnchorPosition;->NONE:Lcom/amazon/android/widget/WidgetAnchorPosition;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/android/widget/WidgetAnchorPosition$Location;II)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/amazon/android/widget/WidgetAnchorPosition;->location:Lcom/amazon/android/widget/WidgetAnchorPosition$Location;

    .line 57
    iput p2, p0, Lcom/amazon/android/widget/WidgetAnchorPosition;->leftBound:I

    .line 58
    iput p3, p0, Lcom/amazon/android/widget/WidgetAnchorPosition;->rightBound:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 63
    instance-of v0, p1, Lcom/amazon/android/widget/WidgetAnchorPosition;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 64
    check-cast p1, Lcom/amazon/android/widget/WidgetAnchorPosition;

    .line 65
    iget-object v0, p0, Lcom/amazon/android/widget/WidgetAnchorPosition;->location:Lcom/amazon/android/widget/WidgetAnchorPosition$Location;

    iget-object v2, p1, Lcom/amazon/android/widget/WidgetAnchorPosition;->location:Lcom/amazon/android/widget/WidgetAnchorPosition$Location;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amazon/android/widget/WidgetAnchorPosition;->leftBound:I

    iget v2, p1, Lcom/amazon/android/widget/WidgetAnchorPosition;->leftBound:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/amazon/android/widget/WidgetAnchorPosition;->rightBound:I

    iget p1, p1, Lcom/amazon/android/widget/WidgetAnchorPosition;->rightBound:I

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 74
    iget-object v1, p0, Lcom/amazon/android/widget/WidgetAnchorPosition;->location:Lcom/amazon/android/widget/WidgetAnchorPosition$Location;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/android/widget/WidgetAnchorPosition;->leftBound:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/android/widget/WidgetAnchorPosition;->rightBound:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
