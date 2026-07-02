.class public final Lcom/amazon/kindle/ffs/utils/WifiConfigurationFactoryKt;
.super Ljava/lang/Object;
.source "WifiConfigurationFactory.kt"


# static fields
.field private static final WEP_ASCII_KEY_LENGTHS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final WEP_HEX_KEY_LENGTHS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/Integer;

    const/4 v2, 0x5

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const/16 v2, 0x1d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/amazon/kindle/ffs/utils/WifiConfigurationFactoryKt;->WEP_ASCII_KEY_LENGTHS:Ljava/util/List;

    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0xa

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const/16 v1, 0x3a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/ffs/utils/WifiConfigurationFactoryKt;->WEP_HEX_KEY_LENGTHS:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getWEP_ASCII_KEY_LENGTHS$p()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/kindle/ffs/utils/WifiConfigurationFactoryKt;->WEP_ASCII_KEY_LENGTHS:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getWEP_HEX_KEY_LENGTHS$p()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/kindle/ffs/utils/WifiConfigurationFactoryKt;->WEP_HEX_KEY_LENGTHS:Ljava/util/List;

    return-object v0
.end method
