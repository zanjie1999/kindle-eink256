.class final Lcom/amazon/kindle/krx/ui/bottomsheet/RegisteredActivityInfo;
.super Ljava/lang/Object;
.source "BottomSheetPresenterImpl.kt"


# instance fields
.field private final activityReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/fragment/app/FragmentActivity;",
            ">;"
        }
    .end annotation
.end field

.field private final layoutId:I


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/fragment/app/FragmentActivity;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "activityReference"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/RegisteredActivityInfo;->activityReference:Ljava/lang/ref/WeakReference;

    iput p2, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/RegisteredActivityInfo;->layoutId:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/amazon/kindle/krx/ui/bottomsheet/RegisteredActivityInfo;Ljava/lang/ref/WeakReference;IILjava/lang/Object;)Lcom/amazon/kindle/krx/ui/bottomsheet/RegisteredActivityInfo;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/RegisteredActivityInfo;->activityReference:Ljava/lang/ref/WeakReference;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/RegisteredActivityInfo;->layoutId:I

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/krx/ui/bottomsheet/RegisteredActivityInfo;->copy(Ljava/lang/ref/WeakReference;I)Lcom/amazon/kindle/krx/ui/bottomsheet/RegisteredActivityInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/fragment/app/FragmentActivity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/RegisteredActivityInfo;->activityReference:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/RegisteredActivityInfo;->layoutId:I

    return v0
.end method

.method public final copy(Ljava/lang/ref/WeakReference;I)Lcom/amazon/kindle/krx/ui/bottomsheet/RegisteredActivityInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/fragment/app/FragmentActivity;",
            ">;I)",
            "Lcom/amazon/kindle/krx/ui/bottomsheet/RegisteredActivityInfo;"
        }
    .end annotation

    const-string v0, "activityReference"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/amazon/kindle/krx/ui/bottomsheet/RegisteredActivityInfo;

    invoke-direct {v0, p1, p2}, Lcom/amazon/kindle/krx/ui/bottomsheet/RegisteredActivityInfo;-><init>(Ljava/lang/ref/WeakReference;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kindle/krx/ui/bottomsheet/RegisteredActivityInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kindle/krx/ui/bottomsheet/RegisteredActivityInfo;

    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/RegisteredActivityInfo;->activityReference:Ljava/lang/ref/WeakReference;

    iget-object v1, p1, Lcom/amazon/kindle/krx/ui/bottomsheet/RegisteredActivityInfo;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/RegisteredActivityInfo;->layoutId:I

    iget p1, p1, Lcom/amazon/kindle/krx/ui/bottomsheet/RegisteredActivityInfo;->layoutId:I

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

.method public final getActivityReference()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/fragment/app/FragmentActivity;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/RegisteredActivityInfo;->activityReference:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public final getLayoutId()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/RegisteredActivityInfo;->layoutId:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/RegisteredActivityInfo;->activityReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/RegisteredActivityInfo;->layoutId:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RegisteredActivityInfo(activityReference="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/RegisteredActivityInfo;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", layoutId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/RegisteredActivityInfo;->layoutId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
