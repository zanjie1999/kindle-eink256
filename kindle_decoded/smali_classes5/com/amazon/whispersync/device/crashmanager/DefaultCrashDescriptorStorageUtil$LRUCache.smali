.class Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil$LRUCache;
.super Ljava/util/LinkedHashMap;
.source "DefaultCrashDescriptorStorageUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LRUCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final mMaxCapacity:I

.field final synthetic this$0:Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;I)V
    .locals 2

    .line 352
    iput-object p1, p0, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil$LRUCache;->this$0:Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;

    add-int/lit8 p1, p2, 0x1

    const/4 v0, 0x1

    const/high16 v1, 0x3f400000    # 0.75f

    .line 353
    invoke-direct {p0, p1, v1, v0}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 354
    iput p2, p0, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil$LRUCache;->mMaxCapacity:I

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 359
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result p1

    iget v0, p0, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil$LRUCache;->mMaxCapacity:I

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
