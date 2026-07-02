.class public final Lcom/amazon/kcp/reader/ui/ColumnConfigManager;
.super Ljava/lang/Object;
.source "ReaderColumnConfig.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/reader/ui/ColumnConfigManager;

.field private static final INSTANCE$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/amazon/kcp/reader/ui/ColumnConfigManager;

    invoke-direct {v0}, Lcom/amazon/kcp/reader/ui/ColumnConfigManager;-><init>()V

    sput-object v0, Lcom/amazon/kcp/reader/ui/ColumnConfigManager;->INSTANCE:Lcom/amazon/kcp/reader/ui/ColumnConfigManager;

    .line 25
    sget-object v0, Lcom/amazon/kcp/reader/ui/ColumnConfigManager$INSTANCE$2;->INSTANCE:Lcom/amazon/kcp/reader/ui/ColumnConfigManager$INSTANCE$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ui/ColumnConfigManager;->INSTANCE$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getINSTANCE()Lcom/amazon/kcp/reader/ui/DefaultColumnConfig;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/reader/ui/ColumnConfigManager;->INSTANCE$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ui/DefaultColumnConfig;

    return-object v0
.end method

.method public static final getInstance()Lcom/amazon/kcp/reader/ui/ColumnConfigProvider;
    .locals 1

    .line 35
    sget-object v0, Lcom/amazon/kcp/reader/ui/ColumnConfigManager;->INSTANCE:Lcom/amazon/kcp/reader/ui/ColumnConfigManager;

    invoke-direct {v0}, Lcom/amazon/kcp/reader/ui/ColumnConfigManager;->getINSTANCE()Lcom/amazon/kcp/reader/ui/DefaultColumnConfig;

    move-result-object v0

    return-object v0
.end method
