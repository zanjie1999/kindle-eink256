.class synthetic Lcom/amazon/kindle/collections/CollectionsManagerHolder$1;
.super Ljava/lang/Object;
.source "CollectionsManagerHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/collections/CollectionsManagerHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$kindle$collections$ICollectionsSyncManager$CollectionsSyncType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 42
    invoke-static {}, Lcom/amazon/kindle/collections/ICollectionsSyncManager$CollectionsSyncType;->values()[Lcom/amazon/kindle/collections/ICollectionsSyncManager$CollectionsSyncType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kindle/collections/CollectionsManagerHolder$1;->$SwitchMap$com$amazon$kindle$collections$ICollectionsSyncManager$CollectionsSyncType:[I

    :try_start_0
    sget-object v1, Lcom/amazon/kindle/collections/ICollectionsSyncManager$CollectionsSyncType;->FULL:Lcom/amazon/kindle/collections/ICollectionsSyncManager$CollectionsSyncType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/amazon/kindle/collections/CollectionsManagerHolder$1;->$SwitchMap$com$amazon$kindle$collections$ICollectionsSyncManager$CollectionsSyncType:[I

    sget-object v1, Lcom/amazon/kindle/collections/ICollectionsSyncManager$CollectionsSyncType;->INCREMENTAL:Lcom/amazon/kindle/collections/ICollectionsSyncManager$CollectionsSyncType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/amazon/kindle/collections/CollectionsManagerHolder$1;->$SwitchMap$com$amazon$kindle$collections$ICollectionsSyncManager$CollectionsSyncType:[I

    sget-object v1, Lcom/amazon/kindle/collections/ICollectionsSyncManager$CollectionsSyncType;->STARTUP:Lcom/amazon/kindle/collections/ICollectionsSyncManager$CollectionsSyncType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
