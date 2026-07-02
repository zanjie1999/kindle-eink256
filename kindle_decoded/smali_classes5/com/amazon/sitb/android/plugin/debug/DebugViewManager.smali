.class public Lcom/amazon/sitb/android/plugin/debug/DebugViewManager;
.super Ljava/lang/Object;
.source "DebugViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugBookPrice;,
        Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;
    }
.end annotation


# static fields
.field private static debugViewState:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

.field private static useDebugValues:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    sget-object v0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;->UNKNOWN:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    sput-object v0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager;->debugViewState:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    const/4 v0, 0x0

    .line 16
    sput-boolean v0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager;->useDebugValues:Z

    return-void
.end method

.method private static getBookPriceBorrowable()Lcom/amazon/sitb/android/BookPrice;
    .locals 3

    .line 268
    new-instance v0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugBookPrice;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1, v1}, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugBookPrice;-><init>(ZZZ)V

    return-object v0
.end method

.method private static getBookPriceFree()Lcom/amazon/sitb/android/BookPrice;
    .locals 3

    .line 278
    new-instance v0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugBookPrice;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v1}, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugBookPrice;-><init>(ZZZ)V

    return-object v0
.end method

.method private static getBookPriceUnusable()Lcom/amazon/sitb/android/BookPrice;
    .locals 2

    .line 273
    new-instance v0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugBookPrice;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugBookPrice;-><init>(ZZZ)V

    return-object v0
.end method

.method private static getBookPriceUsable()Lcom/amazon/sitb/android/BookPrice;
    .locals 3

    .line 283
    new-instance v0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugBookPrice;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugBookPrice;-><init>(ZZZ)V

    return-object v0
.end method

.method public static getFailureCode()Ljava/lang/String;
    .locals 2

    .line 131
    sget-object v0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$1;->$SwitchMap$com$amazon$sitb$android$plugin$debug$DebugViewManager$DebugViewState:[I

    sget-object v1, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager;->debugViewState:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v0, "NONE"

    return-object v0

    :pswitch_1
    const-string v0, "SERVER_ERROR"

    return-object v0

    :pswitch_2
    const-string v0, "CONNECTION_ERROR"

    return-object v0

    :pswitch_3
    const-string v0, "PROGRAM_VIOLATION_ERROR"

    return-object v0

    :pswitch_4
    const-string v0, "TECH_ERROR"

    return-object v0

    :pswitch_5
    const-string v0, "OTHER"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "price-increased"

    return-object v0

    :pswitch_7
    const-string v0, "need-billing-address"

    return-object v0

    :pswitch_8
    const-string v0, "mfa-challenge-required"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getNewState()Lcom/amazon/sitb/android/BookState;
    .locals 2

    .line 35
    sget-object v0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$1;->$SwitchMap$com$amazon$sitb$android$plugin$debug$DebugViewManager$DebugViewState:[I

    sget-object v1, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager;->debugViewState:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 77
    sget-object v0, Lcom/amazon/sitb/android/BookState;->UNKNOWN:Lcom/amazon/sitb/android/BookState;

    return-object v0

    .line 73
    :pswitch_0
    sget-object v0, Lcom/amazon/sitb/android/BookState;->CANCELING:Lcom/amazon/sitb/android/BookState;

    return-object v0

    .line 70
    :pswitch_1
    sget-object v0, Lcom/amazon/sitb/android/BookState;->PAYMENT_FAILURE:Lcom/amazon/sitb/android/BookState;

    return-object v0

    .line 64
    :pswitch_2
    sget-object v0, Lcom/amazon/sitb/android/BookState;->PAYMENT_ERROR:Lcom/amazon/sitb/android/BookState;

    return-object v0

    .line 61
    :pswitch_3
    sget-object v0, Lcom/amazon/sitb/android/BookState;->DOWNLOADED:Lcom/amazon/sitb/android/BookState;

    return-object v0

    .line 57
    :pswitch_4
    sget-object v0, Lcom/amazon/sitb/android/BookState;->DOWNLOADING:Lcom/amazon/sitb/android/BookState;

    return-object v0

    .line 53
    :pswitch_5
    sget-object v0, Lcom/amazon/sitb/android/BookState;->OWNED:Lcom/amazon/sitb/android/BookState;

    return-object v0

    .line 49
    :pswitch_6
    sget-object v0, Lcom/amazon/sitb/android/BookState;->PURCHASING:Lcom/amazon/sitb/android/BookState;

    return-object v0

    .line 46
    :pswitch_7
    sget-object v0, Lcom/amazon/sitb/android/BookState;->UNOWNED:Lcom/amazon/sitb/android/BookState;

    return-object v0

    .line 40
    :pswitch_8
    sget-object v0, Lcom/amazon/sitb/android/BookState;->RECENTLY_CANCELED:Lcom/amazon/sitb/android/BookState;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getNextBookPrice()Lcom/amazon/sitb/android/BookPrice;
    .locals 2

    .line 88
    sget-object v0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$1;->$SwitchMap$com$amazon$sitb$android$plugin$debug$DebugViewManager$DebugViewState:[I

    sget-object v1, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager;->debugViewState:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 120
    invoke-static {}, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager;->getBookPriceUsable()Lcom/amazon/sitb/android/BookPrice;

    move-result-object v0

    return-object v0

    .line 103
    :pswitch_0
    invoke-static {}, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager;->getBookPriceBorrowable()Lcom/amazon/sitb/android/BookPrice;

    move-result-object v0

    return-object v0

    .line 100
    :pswitch_1
    invoke-static {}, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager;->getBookPriceUsable()Lcom/amazon/sitb/android/BookPrice;

    move-result-object v0

    return-object v0

    .line 96
    :pswitch_2
    invoke-static {}, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager;->getBookPriceFree()Lcom/amazon/sitb/android/BookPrice;

    move-result-object v0

    return-object v0

    .line 92
    :pswitch_3
    invoke-static {}, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager;->getBookPriceUnusable()Lcom/amazon/sitb/android/BookPrice;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getPercentComplete()I
    .locals 1

    const/16 v0, 0x32

    return v0
.end method

.method public static setDebugViewState(Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;)V
    .locals 0

    .line 20
    sput-object p0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager;->debugViewState:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    return-void
.end method

.method public static setUseDebugValues(Z)V
    .locals 0

    .line 25
    sput-boolean p0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager;->useDebugValues:Z

    return-void
.end method

.method public static useDebugValues()Z
    .locals 1

    .line 30
    sget-boolean v0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager;->useDebugValues:Z

    return v0
.end method

.method public static wasPurchasedThisReadingSession()Z
    .locals 2

    .line 181
    sget-object v0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$1;->$SwitchMap$com$amazon$sitb$android$plugin$debug$DebugViewManager$DebugViewState:[I

    sget-object v1, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager;->debugViewState:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
