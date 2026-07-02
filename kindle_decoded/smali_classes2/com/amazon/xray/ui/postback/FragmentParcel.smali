.class public Lcom/amazon/xray/ui/postback/FragmentParcel;
.super Ljava/lang/Object;
.source "FragmentParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/xray/ui/postback/FragmentParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final arguments:Landroid/os/Bundle;

.field private final className:Ljava/lang/String;

.field private final savedState:Landroidx/fragment/app/Fragment$SavedState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/amazon/xray/ui/postback/FragmentParcel$1;

    invoke-direct {v0}, Lcom/amazon/xray/ui/postback/FragmentParcel$1;-><init>()V

    sput-object v0, Lcom/amazon/xray/ui/postback/FragmentParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/xray/ui/postback/FragmentParcel;->className:Ljava/lang/String;

    .line 57
    const-class v0, Lcom/amazon/xray/ui/postback/FragmentParcel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment$SavedState;

    iput-object v0, p0, Lcom/amazon/xray/ui/postback/FragmentParcel;->savedState:Landroidx/fragment/app/Fragment$SavedState;

    .line 58
    const-class v0, Lcom/amazon/xray/ui/postback/FragmentParcel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/xray/ui/postback/FragmentParcel;->arguments:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/amazon/xray/ui/postback/FragmentParcel$1;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/postback/FragmentParcel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/xray/ui/postback/FragmentParcel;->className:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->saveFragmentInstanceState(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment$SavedState;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/xray/ui/postback/FragmentParcel;->savedState:Landroidx/fragment/app/Fragment$SavedState;

    .line 46
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/xray/ui/postback/FragmentParcel;->arguments:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getArguments()Landroid/os/Bundle;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/amazon/xray/ui/postback/FragmentParcel;->arguments:Landroid/os/Bundle;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/amazon/xray/ui/postback/FragmentParcel;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getSavedState()Landroidx/fragment/app/Fragment$SavedState;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/amazon/xray/ui/postback/FragmentParcel;->savedState:Landroidx/fragment/app/Fragment$SavedState;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 89
    iget-object p2, p0, Lcom/amazon/xray/ui/postback/FragmentParcel;->className:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object p2, p0, Lcom/amazon/xray/ui/postback/FragmentParcel;->savedState:Landroidx/fragment/app/Fragment$SavedState;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 91
    iget-object p2, p0, Lcom/amazon/xray/ui/postback/FragmentParcel;->arguments:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
