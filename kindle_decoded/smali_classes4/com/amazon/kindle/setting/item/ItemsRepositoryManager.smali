.class public final Lcom/amazon/kindle/setting/item/ItemsRepositoryManager;
.super Ljava/lang/Object;
.source "ItemsRepository.kt"


# static fields
.field private static final INSTANCE:Lcom/amazon/kindle/setting/item/ItemsRepositoryImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/amazon/kindle/setting/item/ItemsRepositoryManager;

    invoke-direct {v0}, Lcom/amazon/kindle/setting/item/ItemsRepositoryManager;-><init>()V

    .line 11
    new-instance v0, Lcom/amazon/kindle/setting/item/ItemsRepositoryImpl;

    invoke-direct {v0}, Lcom/amazon/kindle/setting/item/ItemsRepositoryImpl;-><init>()V

    sput-object v0, Lcom/amazon/kindle/setting/item/ItemsRepositoryManager;->INSTANCE:Lcom/amazon/kindle/setting/item/ItemsRepositoryImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getInstance()Lcom/amazon/kindle/setting/item/ItemsRepository;
    .locals 1

    .line 14
    sget-object v0, Lcom/amazon/kindle/setting/item/ItemsRepositoryManager;->INSTANCE:Lcom/amazon/kindle/setting/item/ItemsRepositoryImpl;

    return-object v0
.end method
