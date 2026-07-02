.class public final Lcom/amazon/kindle/krx/content/bookopen/ConstraintLayoutGroup;
.super Ljava/lang/Object;
.source "ConstraintLayoutGroupVisibilityWorkaround.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConstraintLayoutGroupVisibilityWorkaround.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConstraintLayoutGroupVisibilityWorkaround.kt\ncom/amazon/kindle/krx/content/bookopen/ConstraintLayoutGroup\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,23:1\n13506#2,2:24\n*E\n*S KotlinDebug\n*F\n+ 1 ConstraintLayoutGroupVisibilityWorkaround.kt\ncom/amazon/kindle/krx/content/bookopen/ConstraintLayoutGroup\n*L\n12#1,2:24\n*E\n"
.end annotation


# instance fields
.field private final views:[Landroid/view/View;

.field private visibility:I


# direct methods
.method public varargs constructor <init>([Landroid/view/View;)V
    .locals 1

    const-string v0, "views"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/krx/content/bookopen/ConstraintLayoutGroup;->views:[Landroid/view/View;

    const/4 p1, 0x4

    .line 10
    iput p1, p0, Lcom/amazon/kindle/krx/content/bookopen/ConstraintLayoutGroup;->visibility:I

    return-void
.end method


# virtual methods
.method public final getViews()[Landroid/view/View;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/ConstraintLayoutGroup;->views:[Landroid/view/View;

    return-object v0
.end method

.method public final getVisibility()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/amazon/kindle/krx/content/bookopen/ConstraintLayoutGroup;->visibility:I

    return v0
.end method

.method public final setVisibility(I)V
    .locals 4

    .line 12
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/ConstraintLayoutGroup;->views:[Landroid/view/View;

    .line 24
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 12
    invoke-virtual {v3, p1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 13
    :cond_0
    iput p1, p0, Lcom/amazon/kindle/krx/content/bookopen/ConstraintLayoutGroup;->visibility:I

    return-void
.end method
