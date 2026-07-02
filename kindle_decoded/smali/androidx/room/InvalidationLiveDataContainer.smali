.class Landroidx/room/InvalidationLiveDataContainer;
.super Ljava/lang/Object;
.source "InvalidationLiveDataContainer.java"


# instance fields
.field private final mDatabase:Landroidx/room/RoomDatabase;


# direct methods
.method constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 37
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    .line 43
    iput-object p1, p0, Landroidx/room/InvalidationLiveDataContainer;->mDatabase:Landroidx/room/RoomDatabase;

    return-void
.end method
