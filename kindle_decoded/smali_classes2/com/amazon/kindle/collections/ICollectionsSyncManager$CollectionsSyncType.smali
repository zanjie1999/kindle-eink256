.class public final enum Lcom/amazon/kindle/collections/ICollectionsSyncManager$CollectionsSyncType;
.super Ljava/lang/Enum;
.source "ICollectionsSyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/collections/ICollectionsSyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CollectionsSyncType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/collections/ICollectionsSyncManager$CollectionsSyncType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/collections/ICollectionsSyncManager$CollectionsSyncType;

.field public static final enum FULL:Lcom/amazon/kindle/collections/ICollectionsSyncManager$CollectionsSyncType;

.field public static final enum INCREMENTAL:Lcom/amazon/kindle/collections/ICollectionsSyncManager$CollectionsSyncType;

.field public static final enum STARTUP:Lcom/amazon/kindle/collections/ICollectionsSyncManager$CollectionsSyncType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 11
    new-instance v0, Lcom/amazon/kindle/collections/ICollectionsSyncManager$CollectionsSyncType;

    const/4 v1, 0x0

    const-string v2, "STARTUP"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/collections/ICollectionsSyncManager$CollectionsSyncType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/collections/ICollectionsSyncManager$CollectionsSyncType;->STARTUP:Lcom/amazon/kindle/collections/ICollectionsSyncManager$CollectionsSyncType;

    .line 12
    new-instance v0, Lcom/amazon/kindle/collections/ICollectionsSyncManager$CollectionsSyncType;

    const/4 v2, 0x1

    const-string v3, "FULL"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/collections/ICollectionsSyncManager$CollectionsSyncType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/collections/ICollectionsSyncManager$CollectionsSyncType;->FULL:Lcom/amazon/kindle/collections/ICollectionsSyncManager$CollectionsSyncType;

    .line 13
    new-instance v0, Lcom/amazon/kindle/collections/ICollectionsSyncManager$CollectionsSyncType;

    const/4 v3, 0x2

    const-string v4, "INCREMENTAL"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/collections/ICollectionsSyncManager$CollectionsSyncType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/collections/ICollectionsSyncManager$CollectionsSyncType;->INCREMENTAL:Lcom/amazon/kindle/collections/ICollectionsSyncManager$CollectionsSyncType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/kindle/collections/ICollectionsSyncManager$CollectionsSyncType;

    .line 10
    sget-object v5, Lcom/amazon/kindle/collections/ICollectionsSyncManager$CollectionsSyncType;->STARTUP:Lcom/amazon/kindle/collections/ICollectionsSyncManager$CollectionsSyncType;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/kindle/collections/ICollectionsSyncManager$CollectionsSyncType;->FULL:Lcom/amazon/kindle/collections/ICollectionsSyncManager$CollectionsSyncType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/kindle/collections/ICollectionsSyncManager$CollectionsSyncType;->$VALUES:[Lcom/amazon/kindle/collections/ICollectionsSyncManager$CollectionsSyncType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/collections/ICollectionsSyncManager$CollectionsSyncType;
    .locals 1

    .line 10
    const-class v0, Lcom/amazon/kindle/collections/ICollectionsSyncManager$CollectionsSyncType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/collections/ICollectionsSyncManager$CollectionsSyncType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/collections/ICollectionsSyncManager$CollectionsSyncType;
    .locals 1

    .line 10
    sget-object v0, Lcom/amazon/kindle/collections/ICollectionsSyncManager$CollectionsSyncType;->$VALUES:[Lcom/amazon/kindle/collections/ICollectionsSyncManager$CollectionsSyncType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/collections/ICollectionsSyncManager$CollectionsSyncType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/collections/ICollectionsSyncManager$CollectionsSyncType;

    return-object v0
.end method
