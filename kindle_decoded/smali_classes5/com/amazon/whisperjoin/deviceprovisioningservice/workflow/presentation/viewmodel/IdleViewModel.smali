.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/IdleViewModel;
.super Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ViewModel;
.source "IdleViewModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/IdleViewModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/IdleViewModel$1;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/IdleViewModel$1;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/IdleViewModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 11
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;->IDLE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ViewModel;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ViewModel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method
