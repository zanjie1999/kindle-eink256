.class public final Lcom/amazon/kindle/setting/item/ItemsUpdateServiceSingleton;
.super Ljava/lang/Object;
.source "ItemsUpdateService.kt"


# static fields
.field private static final INSTANCE:Lcom/amazon/kindle/setting/item/ItemsUpdateServiceImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/amazon/kindle/setting/item/ItemsUpdateServiceSingleton;

    invoke-direct {v0}, Lcom/amazon/kindle/setting/item/ItemsUpdateServiceSingleton;-><init>()V

    .line 10
    new-instance v0, Lcom/amazon/kindle/setting/item/ItemsUpdateServiceImpl;

    invoke-direct {v0}, Lcom/amazon/kindle/setting/item/ItemsUpdateServiceImpl;-><init>()V

    sput-object v0, Lcom/amazon/kindle/setting/item/ItemsUpdateServiceSingleton;->INSTANCE:Lcom/amazon/kindle/setting/item/ItemsUpdateServiceImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getInstance()Lcom/amazon/kindle/setting/item/ItemsUpdateService;
    .locals 1

    .line 16
    sget-object v0, Lcom/amazon/kindle/setting/item/ItemsUpdateServiceSingleton;->INSTANCE:Lcom/amazon/kindle/setting/item/ItemsUpdateServiceImpl;

    return-object v0
.end method
