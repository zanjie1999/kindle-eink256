.class Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl$1;
.super Ljava/lang/Object;
.source "DefaultBookmarkImpl.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;
    .locals 16

    move-object/from16 v0, p1

    .line 34
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 35
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 36
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 37
    const-class v3, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/audible/mobile/domain/Asin;

    .line 38
    const-class v4, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/audible/mobile/domain/Time;

    .line 39
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 40
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/audible/mobile/bookmarks/domain/BookmarkType;->valueOf(Ljava/lang/String;)Lcom/audible/mobile/bookmarks/domain/BookmarkType;

    move-result-object v4

    .line 41
    const-class v11, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;

    invoke-virtual {v11}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Lcom/audible/mobile/domain/Time;

    .line 42
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 43
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 44
    const-class v14, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;

    invoke-virtual {v14}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v14

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/audible/mobile/domain/CustomerId;

    .line 45
    new-instance v15, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;

    move-object v0, v15

    invoke-direct/range {v0 .. v14}, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;-><init>(JLcom/audible/mobile/domain/Asin;Lcom/audible/mobile/bookmarks/domain/BookmarkType;Lcom/audible/mobile/domain/Time;JJLjava/lang/String;Lcom/audible/mobile/domain/Time;Ljava/lang/String;Ljava/lang/String;Lcom/audible/mobile/domain/CustomerId;)V

    return-object v15
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl$1;->createFromParcel(Landroid/os/Parcel;)Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;
    .locals 0

    .line 50
    new-array p1, p1, [Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl$1;->newArray(I)[Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;

    move-result-object p1

    return-object p1
.end method
