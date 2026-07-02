.class public Lcom/amazon/bookwizard/data/KuAssets;
.super Ljava/lang/Object;
.source "KuAssets.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/bookwizard/data/KuAssets;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private legalText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "legalText"
    .end annotation
.end field

.field private offerIntroText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "introductionTextT2"
    .end annotation
.end field

.field private previewIntroText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "introductionTextPreview"
    .end annotation
.end field

.field private previewLegalText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "legalTextPreview"
    .end annotation
.end field

.field private welcomeIntroText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "introductionTextT1"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/amazon/bookwizard/data/KuAssets$1;

    invoke-direct {v0}, Lcom/amazon/bookwizard/data/KuAssets$1;-><init>()V

    sput-object v0, Lcom/amazon/bookwizard/data/KuAssets;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/bookwizard/data/KuAssets;->welcomeIntroText:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/bookwizard/data/KuAssets;->offerIntroText:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/bookwizard/data/KuAssets;->previewIntroText:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/bookwizard/data/KuAssets;->legalText:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/bookwizard/data/KuAssets;->previewLegalText:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/amazon/bookwizard/data/KuAssets$1;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/amazon/bookwizard/data/KuAssets;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 123
    iget-object p2, p0, Lcom/amazon/bookwizard/data/KuAssets;->welcomeIntroText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget-object p2, p0, Lcom/amazon/bookwizard/data/KuAssets;->offerIntroText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    iget-object p2, p0, Lcom/amazon/bookwizard/data/KuAssets;->previewIntroText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    iget-object p2, p0, Lcom/amazon/bookwizard/data/KuAssets;->legalText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    iget-object p2, p0, Lcom/amazon/bookwizard/data/KuAssets;->previewLegalText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
