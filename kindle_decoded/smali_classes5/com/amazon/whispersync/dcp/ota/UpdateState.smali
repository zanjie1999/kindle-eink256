.class public final enum Lcom/amazon/whispersync/dcp/ota/UpdateState;
.super Ljava/lang/Enum;
.source "UpdateState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whispersync/dcp/ota/UpdateState;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whispersync/dcp/ota/UpdateState;

.field static final synthetic $assertionsDisabled:Z

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/whispersync/dcp/ota/UpdateState;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum Complete:Lcom/amazon/whispersync/dcp/ota/UpdateState;

.field public static final enum Deduped:Lcom/amazon/whispersync/dcp/ota/UpdateState;

.field public static final enum DownloadPaused:Lcom/amazon/whispersync/dcp/ota/UpdateState;

.field public static final enum Downloaded:Lcom/amazon/whispersync/dcp/ota/UpdateState;

.field public static final enum Downloading:Lcom/amazon/whispersync/dcp/ota/UpdateState;

.field public static final enum Failed:Lcom/amazon/whispersync/dcp/ota/UpdateState;

.field public static final enum Installed:Lcom/amazon/whispersync/dcp/ota/UpdateState;

.field public static final enum Installing:Lcom/amazon/whispersync/dcp/ota/UpdateState;

.field public static final enum Pending:Lcom/amazon/whispersync/dcp/ota/UpdateState;

.field public static final enum QueuedForWifi:Lcom/amazon/whispersync/dcp/ota/UpdateState;

.field public static final TAG:Ljava/lang/String;

.field public static final enum Unknown:Lcom/amazon/whispersync/dcp/ota/UpdateState;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 16
    const-class v0, Lcom/amazon/whispersync/dcp/ota/UpdateState;

    .line 18
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/UpdateState;

    const/4 v1, 0x0

    const-string v2, "Pending"

    invoke-direct {v0, v2, v1, v1}, Lcom/amazon/whispersync/dcp/ota/UpdateState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/UpdateState;->Pending:Lcom/amazon/whispersync/dcp/ota/UpdateState;

    .line 19
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/UpdateState;

    const/4 v2, 0x1

    const-string v3, "Downloading"

    invoke-direct {v0, v3, v2, v2}, Lcom/amazon/whispersync/dcp/ota/UpdateState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/UpdateState;->Downloading:Lcom/amazon/whispersync/dcp/ota/UpdateState;

    .line 20
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/UpdateState;

    const/4 v3, 0x2

    const-string v4, "Downloaded"

    invoke-direct {v0, v4, v3, v3}, Lcom/amazon/whispersync/dcp/ota/UpdateState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/UpdateState;->Downloaded:Lcom/amazon/whispersync/dcp/ota/UpdateState;

    .line 21
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/UpdateState;

    const/4 v4, 0x3

    const-string v5, "Installing"

    invoke-direct {v0, v5, v4, v4}, Lcom/amazon/whispersync/dcp/ota/UpdateState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/UpdateState;->Installing:Lcom/amazon/whispersync/dcp/ota/UpdateState;

    .line 22
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/UpdateState;

    const/4 v5, 0x4

    const-string v6, "Installed"

    invoke-direct {v0, v6, v5, v5}, Lcom/amazon/whispersync/dcp/ota/UpdateState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/UpdateState;->Installed:Lcom/amazon/whispersync/dcp/ota/UpdateState;

    .line 23
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/UpdateState;

    const/4 v6, 0x5

    const-string v7, "Complete"

    invoke-direct {v0, v7, v6, v6}, Lcom/amazon/whispersync/dcp/ota/UpdateState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/UpdateState;->Complete:Lcom/amazon/whispersync/dcp/ota/UpdateState;

    .line 24
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/UpdateState;

    const/4 v7, 0x6

    const-string v8, "Failed"

    invoke-direct {v0, v8, v7, v7}, Lcom/amazon/whispersync/dcp/ota/UpdateState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/UpdateState;->Failed:Lcom/amazon/whispersync/dcp/ota/UpdateState;

    .line 25
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/UpdateState;

    const/4 v8, 0x7

    const-string v9, "Deduped"

    invoke-direct {v0, v9, v8, v8}, Lcom/amazon/whispersync/dcp/ota/UpdateState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/UpdateState;->Deduped:Lcom/amazon/whispersync/dcp/ota/UpdateState;

    .line 26
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/UpdateState;

    const/16 v9, 0x8

    const-string v10, "DownloadPaused"

    invoke-direct {v0, v10, v9, v9}, Lcom/amazon/whispersync/dcp/ota/UpdateState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/UpdateState;->DownloadPaused:Lcom/amazon/whispersync/dcp/ota/UpdateState;

    .line 27
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/UpdateState;

    const/16 v10, 0x9

    const-string v11, "QueuedForWifi"

    invoke-direct {v0, v11, v10, v10}, Lcom/amazon/whispersync/dcp/ota/UpdateState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/UpdateState;->QueuedForWifi:Lcom/amazon/whispersync/dcp/ota/UpdateState;

    .line 30
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/UpdateState;

    const v11, 0x7fffffff

    const/16 v12, 0xa

    const-string v13, "Unknown"

    invoke-direct {v0, v13, v12, v11}, Lcom/amazon/whispersync/dcp/ota/UpdateState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/UpdateState;->Unknown:Lcom/amazon/whispersync/dcp/ota/UpdateState;

    const/16 v11, 0xb

    new-array v11, v11, [Lcom/amazon/whispersync/dcp/ota/UpdateState;

    .line 16
    sget-object v13, Lcom/amazon/whispersync/dcp/ota/UpdateState;->Pending:Lcom/amazon/whispersync/dcp/ota/UpdateState;

    aput-object v13, v11, v1

    sget-object v1, Lcom/amazon/whispersync/dcp/ota/UpdateState;->Downloading:Lcom/amazon/whispersync/dcp/ota/UpdateState;

    aput-object v1, v11, v2

    sget-object v1, Lcom/amazon/whispersync/dcp/ota/UpdateState;->Downloaded:Lcom/amazon/whispersync/dcp/ota/UpdateState;

    aput-object v1, v11, v3

    sget-object v1, Lcom/amazon/whispersync/dcp/ota/UpdateState;->Installing:Lcom/amazon/whispersync/dcp/ota/UpdateState;

    aput-object v1, v11, v4

    sget-object v1, Lcom/amazon/whispersync/dcp/ota/UpdateState;->Installed:Lcom/amazon/whispersync/dcp/ota/UpdateState;

    aput-object v1, v11, v5

    sget-object v1, Lcom/amazon/whispersync/dcp/ota/UpdateState;->Complete:Lcom/amazon/whispersync/dcp/ota/UpdateState;

    aput-object v1, v11, v6

    sget-object v1, Lcom/amazon/whispersync/dcp/ota/UpdateState;->Failed:Lcom/amazon/whispersync/dcp/ota/UpdateState;

    aput-object v1, v11, v7

    sget-object v1, Lcom/amazon/whispersync/dcp/ota/UpdateState;->Deduped:Lcom/amazon/whispersync/dcp/ota/UpdateState;

    aput-object v1, v11, v8

    sget-object v1, Lcom/amazon/whispersync/dcp/ota/UpdateState;->DownloadPaused:Lcom/amazon/whispersync/dcp/ota/UpdateState;

    aput-object v1, v11, v9

    sget-object v1, Lcom/amazon/whispersync/dcp/ota/UpdateState;->QueuedForWifi:Lcom/amazon/whispersync/dcp/ota/UpdateState;

    aput-object v1, v11, v10

    aput-object v0, v11, v12

    sput-object v11, Lcom/amazon/whispersync/dcp/ota/UpdateState;->$VALUES:[Lcom/amazon/whispersync/dcp/ota/UpdateState;

    .line 32
    const-class v0, Lcom/amazon/whispersync/dcp/ota/UpdateState;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/UpdateState;->TAG:Ljava/lang/String;

    .line 33
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/UpdateState$1;

    invoke-direct {v0}, Lcom/amazon/whispersync/dcp/ota/UpdateState$1;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/UpdateState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput p3, p0, Lcom/amazon/whispersync/dcp/ota/UpdateState;->mValue:I

    return-void
.end method

.method public static fromCollection(Ljava/util/Collection;)Lcom/amazon/whispersync/dcp/ota/UpdateState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/whispersync/dcp/ota/UpdateState;",
            ">;)",
            "Lcom/amazon/whispersync/dcp/ota/UpdateState;"
        }
    .end annotation

    .line 76
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/ota/UpdateState;->fromCollection(Ljava/util/Set;)Lcom/amazon/whispersync/dcp/ota/UpdateState;

    move-result-object p0

    return-object p0
.end method

.method private static fromCollection(Ljava/util/Set;)Lcom/amazon/whispersync/dcp/ota/UpdateState;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/amazon/whispersync/dcp/ota/UpdateState;",
            ">;)",
            "Lcom/amazon/whispersync/dcp/ota/UpdateState;"
        }
    .end annotation

    .line 82
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    sget-object p0, Lcom/amazon/whispersync/dcp/ota/UpdateState;->Failed:Lcom/amazon/whispersync/dcp/ota/UpdateState;

    return-object p0

    .line 87
    :cond_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 89
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/dcp/ota/UpdateState;

    return-object p0

    .line 92
    :cond_1
    sget-object v0, Lcom/amazon/whispersync/dcp/ota/UpdateState;->Failed:Lcom/amazon/whispersync/dcp/ota/UpdateState;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    sget-object p0, Lcom/amazon/whispersync/dcp/ota/UpdateState;->Failed:Lcom/amazon/whispersync/dcp/ota/UpdateState;

    return-object p0

    .line 97
    :cond_2
    sget-object v0, Lcom/amazon/whispersync/dcp/ota/UpdateState;->Pending:Lcom/amazon/whispersync/dcp/ota/UpdateState;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 99
    sget-object p0, Lcom/amazon/whispersync/dcp/ota/UpdateState;->Pending:Lcom/amazon/whispersync/dcp/ota/UpdateState;

    return-object p0

    .line 102
    :cond_3
    sget-object v0, Lcom/amazon/whispersync/dcp/ota/UpdateState;->Downloading:Lcom/amazon/whispersync/dcp/ota/UpdateState;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 104
    sget-object p0, Lcom/amazon/whispersync/dcp/ota/UpdateState;->Downloading:Lcom/amazon/whispersync/dcp/ota/UpdateState;

    return-object p0

    .line 107
    :cond_4
    sget-object v0, Lcom/amazon/whispersync/dcp/ota/UpdateState;->DownloadPaused:Lcom/amazon/whispersync/dcp/ota/UpdateState;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 109
    sget-object p0, Lcom/amazon/whispersync/dcp/ota/UpdateState;->DownloadPaused:Lcom/amazon/whispersync/dcp/ota/UpdateState;

    return-object p0

    .line 111
    :cond_5
    sget-object v0, Lcom/amazon/whispersync/dcp/ota/UpdateState;->QueuedForWifi:Lcom/amazon/whispersync/dcp/ota/UpdateState;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 113
    sget-object p0, Lcom/amazon/whispersync/dcp/ota/UpdateState;->QueuedForWifi:Lcom/amazon/whispersync/dcp/ota/UpdateState;

    return-object p0

    .line 116
    :cond_6
    sget-object v0, Lcom/amazon/whispersync/dcp/ota/UpdateState;->Downloaded:Lcom/amazon/whispersync/dcp/ota/UpdateState;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amazon/whispersync/dcp/ota/UpdateState;

    const/4 v2, 0x0

    sget-object v3, Lcom/amazon/whispersync/dcp/ota/UpdateState;->Installing:Lcom/amazon/whispersync/dcp/ota/UpdateState;

    aput-object v3, v0, v2

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/UpdateState;->Installed:Lcom/amazon/whispersync/dcp/ota/UpdateState;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/UpdateState;->Complete:Lcom/amazon/whispersync/dcp/ota/UpdateState;

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcom/amazon/whispersync/dcp/framework/CollectionHelpers;->containsAny(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 119
    sget-object p0, Lcom/amazon/whispersync/dcp/ota/UpdateState;->Installing:Lcom/amazon/whispersync/dcp/ota/UpdateState;

    return-object p0

    .line 122
    :cond_7
    sget-object v0, Lcom/amazon/whispersync/dcp/ota/UpdateState;->Downloaded:Lcom/amazon/whispersync/dcp/ota/UpdateState;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 124
    sget-object p0, Lcom/amazon/whispersync/dcp/ota/UpdateState;->Downloaded:Lcom/amazon/whispersync/dcp/ota/UpdateState;

    return-object p0

    .line 127
    :cond_8
    sget-object v0, Lcom/amazon/whispersync/dcp/ota/UpdateState;->Installing:Lcom/amazon/whispersync/dcp/ota/UpdateState;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 129
    sget-object p0, Lcom/amazon/whispersync/dcp/ota/UpdateState;->Installing:Lcom/amazon/whispersync/dcp/ota/UpdateState;

    return-object p0

    .line 132
    :cond_9
    sget-object v0, Lcom/amazon/whispersync/dcp/ota/UpdateState;->Installed:Lcom/amazon/whispersync/dcp/ota/UpdateState;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 134
    sget-object p0, Lcom/amazon/whispersync/dcp/ota/UpdateState;->Installed:Lcom/amazon/whispersync/dcp/ota/UpdateState;

    return-object p0

    .line 137
    :cond_a
    sget-object v0, Lcom/amazon/whispersync/dcp/ota/UpdateState;->Complete:Lcom/amazon/whispersync/dcp/ota/UpdateState;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 139
    sget-object p0, Lcom/amazon/whispersync/dcp/ota/UpdateState;->Complete:Lcom/amazon/whispersync/dcp/ota/UpdateState;

    return-object p0

    .line 142
    :cond_b
    sget-object v0, Lcom/amazon/whispersync/dcp/ota/UpdateState;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown State Combination: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-static {v2, p0}, Lcom/amazon/whispersync/dcp/framework/StringUtils;->join(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    sget-object p0, Lcom/amazon/whispersync/dcp/ota/UpdateState;->Unknown:Lcom/amazon/whispersync/dcp/ota/UpdateState;

    return-object p0
.end method

.method public static fromValue(I)Lcom/amazon/whispersync/dcp/ota/UpdateState;
    .locals 5

    .line 62
    invoke-static {}, Lcom/amazon/whispersync/dcp/ota/UpdateState;->values()[Lcom/amazon/whispersync/dcp/ota/UpdateState;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 64
    invoke-virtual {v3}, Lcom/amazon/whispersync/dcp/ota/UpdateState;->value()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    :cond_1
    sget-object p0, Lcom/amazon/whispersync/dcp/ota/UpdateState;->Unknown:Lcom/amazon/whispersync/dcp/ota/UpdateState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/dcp/ota/UpdateState;
    .locals 1

    .line 16
    const-class v0, Lcom/amazon/whispersync/dcp/ota/UpdateState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/dcp/ota/UpdateState;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whispersync/dcp/ota/UpdateState;
    .locals 1

    .line 16
    sget-object v0, Lcom/amazon/whispersync/dcp/ota/UpdateState;->$VALUES:[Lcom/amazon/whispersync/dcp/ota/UpdateState;

    invoke-virtual {v0}, [Lcom/amazon/whispersync/dcp/ota/UpdateState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/dcp/ota/UpdateState;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public value()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/amazon/whispersync/dcp/ota/UpdateState;->mValue:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 156
    iget p2, p0, Lcom/amazon/whispersync/dcp/ota/UpdateState;->mValue:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
