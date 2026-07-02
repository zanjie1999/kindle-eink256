.class public final Lcom/amazon/kindle/setting/item/MoreItemUIBuilderRepository;
.super Ljava/lang/Object;
.source "MoreItemUIBuilderRepository.kt"


# static fields
.field private static final INSTANCE:Lcom/amazon/kindle/setting/item/ItemUIBuilderRepositoryImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/setting/item/ItemUIBuilderRepositoryImpl<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lcom/amazon/kindle/setting/item/MoreItemUIBuilderRepository;

    invoke-direct {v0}, Lcom/amazon/kindle/setting/item/MoreItemUIBuilderRepository;-><init>()V

    .line 9
    new-instance v0, Lcom/amazon/kindle/setting/item/ItemUIBuilderRepositoryImpl;

    invoke-direct {v0}, Lcom/amazon/kindle/setting/item/ItemUIBuilderRepositoryImpl;-><init>()V

    sput-object v0, Lcom/amazon/kindle/setting/item/MoreItemUIBuilderRepository;->INSTANCE:Lcom/amazon/kindle/setting/item/ItemUIBuilderRepositoryImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getInstance()Lcom/amazon/kindle/setting/item/ItemUIBuilderRepository;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/kindle/setting/item/ItemUIBuilderRepository<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 12
    sget-object v0, Lcom/amazon/kindle/setting/item/MoreItemUIBuilderRepository;->INSTANCE:Lcom/amazon/kindle/setting/item/ItemUIBuilderRepositoryImpl;

    return-object v0
.end method
