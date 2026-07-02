.class public abstract Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ViewModel;
.super Ljava/lang/Object;
.source "ViewModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field private mState:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;


# direct methods
.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-class v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ViewModel;->mState:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ViewModel;->mState:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getState()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ViewModel;->mState:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ViewModel;->mState:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
