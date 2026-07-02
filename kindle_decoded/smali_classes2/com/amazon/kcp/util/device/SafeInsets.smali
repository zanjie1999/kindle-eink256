.class public final Lcom/amazon/kcp/util/device/SafeInsets;
.super Ljava/lang/Object;
.source "SafeInsets.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/util/device/SafeInsets$Companion;
    }
.end annotation


# static fields
.field public static final EMPTY_INSETS:Lcom/amazon/kcp/util/device/SafeInsets;


# instance fields
.field private final bottom:I

.field private final left:I

.field private final right:I

.field private final top:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/amazon/kcp/util/device/SafeInsets$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/util/device/SafeInsets$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 15
    new-instance v0, Lcom/amazon/kcp/util/device/SafeInsets;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xf

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/amazon/kcp/util/device/SafeInsets;-><init>(IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kcp/util/device/SafeInsets;->EMPTY_INSETS:Lcom/amazon/kcp/util/device/SafeInsets;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kcp/util/device/SafeInsets;-><init>(IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/amazon/kcp/util/device/SafeInsets;->left:I

    iput p2, p0, Lcom/amazon/kcp/util/device/SafeInsets;->right:I

    iput p3, p0, Lcom/amazon/kcp/util/device/SafeInsets;->top:I

    iput p4, p0, Lcom/amazon/kcp/util/device/SafeInsets;->bottom:I

    return-void
.end method

.method public synthetic constructor <init>(IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    const/4 p3, 0x0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    const/4 p4, 0x0

    .line 12
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/util/device/SafeInsets;-><init>(IIII)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kcp/util/device/SafeInsets;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kcp/util/device/SafeInsets;

    iget v0, p0, Lcom/amazon/kcp/util/device/SafeInsets;->left:I

    iget v1, p1, Lcom/amazon/kcp/util/device/SafeInsets;->left:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/amazon/kcp/util/device/SafeInsets;->right:I

    iget v1, p1, Lcom/amazon/kcp/util/device/SafeInsets;->right:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/amazon/kcp/util/device/SafeInsets;->top:I

    iget v1, p1, Lcom/amazon/kcp/util/device/SafeInsets;->top:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/amazon/kcp/util/device/SafeInsets;->bottom:I

    iget p1, p1, Lcom/amazon/kcp/util/device/SafeInsets;->bottom:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getBottom()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/amazon/kcp/util/device/SafeInsets;->bottom:I

    return v0
.end method

.method public final getLeft()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/amazon/kcp/util/device/SafeInsets;->left:I

    return v0
.end method

.method public final getRight()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/amazon/kcp/util/device/SafeInsets;->right:I

    return v0
.end method

.method public final getTop()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/amazon/kcp/util/device/SafeInsets;->top:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/amazon/kcp/util/device/SafeInsets;->left:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/amazon/kcp/util/device/SafeInsets;->right:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/amazon/kcp/util/device/SafeInsets;->top:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/amazon/kcp/util/device/SafeInsets;->bottom:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SafeInsets(left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kcp/util/device/SafeInsets;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kcp/util/device/SafeInsets;->right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kcp/util/device/SafeInsets;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kcp/util/device/SafeInsets;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
