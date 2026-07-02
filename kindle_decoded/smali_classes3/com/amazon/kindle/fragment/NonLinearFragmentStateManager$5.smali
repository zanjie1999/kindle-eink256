.class final Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager$5;
.super Ljava/lang/Object;
.source "NonLinearFragmentStateManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 621
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;
    .locals 2

    .line 623
    new-instance v0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;-><init>(Landroid/os/Parcel;Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 621
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager$5;->createFromParcel(Landroid/os/Parcel;)Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;
    .locals 0

    .line 627
    new-array p1, p1, [Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 621
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager$5;->newArray(I)[Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;

    move-result-object p1

    return-object p1
.end method
