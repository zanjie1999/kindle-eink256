.class public Lcom/amazon/kindle/observablemodel/CollectionItemID;
.super Lcom/amazon/kindle/observablemodel/ItemID;
.source "CollectionItemID.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/kindle/observablemodel/CollectionItemID;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mCollectionID:Lcom/amazon/kindle/observablemodel/ItemID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/amazon/kindle/observablemodel/CollectionItemID$1;

    invoke-direct {v0}, Lcom/amazon/kindle/observablemodel/CollectionItemID$1;-><init>()V

    sput-object v0, Lcom/amazon/kindle/observablemodel/CollectionItemID;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/amazon/kindle/observablemodel/ItemID;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 31
    invoke-direct {p0, p1}, Lcom/amazon/kindle/observablemodel/ItemID;-><init>(Landroid/os/Parcel;)V

    .line 33
    const-class v0, Lcom/amazon/kindle/observablemodel/CollectionItemID;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/observablemodel/ItemID;

    iput-object p1, p0, Lcom/amazon/kindle/observablemodel/CollectionItemID;->mCollectionID:Lcom/amazon/kindle/observablemodel/ItemID;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kindle/observablemodel/ItemID;)V
    .locals 1

    .line 14
    invoke-virtual {p1}, Lcom/amazon/kindle/observablemodel/ItemID;->getType()I

    move-result v0

    invoke-virtual {p1}, Lcom/amazon/kindle/observablemodel/ItemID;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/amazon/kindle/observablemodel/ItemID;-><init>(ILjava/lang/String;)V

    .line 15
    iput-object p2, p0, Lcom/amazon/kindle/observablemodel/CollectionItemID;->mCollectionID:Lcom/amazon/kindle/observablemodel/ItemID;

    return-void
.end method


# virtual methods
.method public getCollectionID()Lcom/amazon/kindle/observablemodel/ItemID;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/CollectionItemID;->mCollectionID:Lcom/amazon/kindle/observablemodel/ItemID;

    return-object v0
.end method

.method public getParentID()Lcom/amazon/kindle/observablemodel/ItemID;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/CollectionItemID;->mCollectionID:Lcom/amazon/kindle/observablemodel/ItemID;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 25
    invoke-super {p0, p1, p2}, Lcom/amazon/kindle/observablemodel/ItemID;->writeToParcel(Landroid/os/Parcel;I)V

    .line 27
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/CollectionItemID;->mCollectionID:Lcom/amazon/kindle/observablemodel/ItemID;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
