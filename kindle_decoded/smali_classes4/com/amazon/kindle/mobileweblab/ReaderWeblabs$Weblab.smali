.class public final enum Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;
.super Ljava/lang/Enum;
.source "ReaderWeblabs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/mobileweblab/ReaderWeblabs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Weblab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

.field public static final enum COMICS_ONE_TAP_CX_END_ACTIONS_NIS_ENABLED:Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

.field public static final enum COROUTINES_DOWNLOAD_WORKFLOW_ENABLED:Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

.field public static final enum OKHTTP_DOWNLOADS_ENABLED:Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

.field public static final enum ONE_TAP_CX_END_ACTIONS_EXPANDO_ENABLED:Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

.field public static final enum ONE_TAP_CX_FOS_END_ACTIONS_EXPANDO_ENABLED:Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

.field public static final enum ONE_TAP_CX_FOS_END_ACTIONS_NIS_ENABLED:Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

.field public static final enum ONE_TAP_CX_FOS_HOME_ENABLED:Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

.field public static final enum ONE_TAP_CX_FOS_SEARCH_ENABLED:Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

.field public static final enum ONE_TAP_CX_LIBRARY_ENABLED:Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

.field public static final enum ONE_TAP_CX_SDP_ENABLED:Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

.field public static final enum REQUIRED_EXCLUSIVE_THREADING_ENABLED:Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

.field public static final enum SINGLE_GLOBAL_CLOUDFRONT_ENABLED:Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

.field public static final enum SUPPORTED_VOUCHER_VERSIONS_MANIFEST:Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;


# instance fields
.field private final defaultTreatment:Ljava/lang/String;

.field private final id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 26
    new-instance v0, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

    const/4 v1, 0x0

    const-string v2, "C"

    const-string v3, "ONE_TAP_CX_LIBRARY_ENABLED"

    const-string v4, "KINDLE_ANDROID_DELIVERYCX_LIBRARY_ONE_TAP_BOOK_OPEN_255916"

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;->ONE_TAP_CX_LIBRARY_ENABLED:Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

    .line 27
    new-instance v0, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

    const/4 v3, 0x1

    const-string v4, "ONE_TAP_CX_SDP_ENABLED"

    const-string v5, "KINDLE_ANDROID_DELIVERYCX_STORE_ONE_TAP_BOOK_OPEN_284552"

    invoke-direct {v0, v4, v3, v5, v2}, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;->ONE_TAP_CX_SDP_ENABLED:Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

    .line 28
    new-instance v0, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

    const/4 v4, 0x2

    const-string v5, "COMICS_ONE_TAP_CX_END_ACTIONS_NIS_ENABLED"

    const-string v6, "COMICS_ANDROID_DELIVERYCX_END_ACTIONS_ONE_TAP_BOOK_OPEN_387901"

    invoke-direct {v0, v5, v4, v6, v2}, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;->COMICS_ONE_TAP_CX_END_ACTIONS_NIS_ENABLED:Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

    .line 29
    new-instance v0, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

    const/4 v5, 0x3

    const-string v6, "ONE_TAP_CX_END_ACTIONS_EXPANDO_ENABLED"

    const-string v7, "KINDLE_ANDROID_DELIVERYCX_END_ACTIONS_EXPANDO_ONE_TAP_BOOK_OPEN_338101"

    invoke-direct {v0, v6, v5, v7, v2}, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;->ONE_TAP_CX_END_ACTIONS_EXPANDO_ENABLED:Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

    .line 30
    new-instance v0, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

    const/4 v6, 0x4

    const-string v7, "REQUIRED_EXCLUSIVE_THREADING_ENABLED"

    const-string v8, "KINDLE_ANDROID_REQUIRED_EXCLUSIVE_THREADING_289055"

    invoke-direct {v0, v7, v6, v8, v2}, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;->REQUIRED_EXCLUSIVE_THREADING_ENABLED:Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

    .line 31
    new-instance v0, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

    const/4 v7, 0x5

    const-string v8, "SINGLE_GLOBAL_CLOUDFRONT_ENABLED"

    const-string v9, "KINDLE_ANDROID_DELIVERYCX_SINGLE_CLOUTFRONT_DISTRIBUTION_286447"

    invoke-direct {v0, v8, v7, v9, v2}, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;->SINGLE_GLOBAL_CLOUDFRONT_ENABLED:Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

    .line 32
    new-instance v0, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

    const/4 v8, 0x6

    const-string v9, "SUPPORTED_VOUCHER_VERSIONS_MANIFEST"

    const-string v10, "KINDLE_ANDROID_DELIVERYCX_PREFETCH_VOUCHER_391752"

    invoke-direct {v0, v9, v8, v10, v2}, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;->SUPPORTED_VOUCHER_VERSIONS_MANIFEST:Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

    .line 33
    new-instance v0, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

    const/4 v9, 0x7

    const-string v10, "OKHTTP_DOWNLOADS_ENABLED"

    const-string v11, "KINDLE_ANDROID_DELIVERYCX_OKHTTP_389615"

    invoke-direct {v0, v10, v9, v11, v2}, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;->OKHTTP_DOWNLOADS_ENABLED:Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

    .line 34
    new-instance v0, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

    const/16 v10, 0x8

    const-string v11, "ONE_TAP_CX_FOS_END_ACTIONS_NIS_ENABLED"

    const-string v12, "KINDLE_ANDROID_DELIVERYCX_END_ACTIONS_ONE_TAP_BOOK_OPEN_401042"

    invoke-direct {v0, v11, v10, v12, v2}, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;->ONE_TAP_CX_FOS_END_ACTIONS_NIS_ENABLED:Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

    .line 35
    new-instance v0, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

    const/16 v11, 0x9

    const-string v12, "ONE_TAP_CX_FOS_HOME_ENABLED"

    const-string v13, "KINDLE_FOS_DELIVERYCX_HOME_ONE_TAP_BOOK_OPEN_401058"

    invoke-direct {v0, v12, v11, v13, v2}, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;->ONE_TAP_CX_FOS_HOME_ENABLED:Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

    .line 36
    new-instance v0, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

    const/16 v12, 0xa

    const-string v13, "ONE_TAP_CX_FOS_SEARCH_ENABLED"

    const-string v14, "KINDLE_FOS_DELIVERYCX_SEARCH_ONE_TAP_BOOK_OPEN_405092"

    invoke-direct {v0, v13, v12, v14, v2}, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;->ONE_TAP_CX_FOS_SEARCH_ENABLED:Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

    .line 37
    new-instance v0, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

    const/16 v13, 0xb

    const-string v14, "ONE_TAP_CX_FOS_END_ACTIONS_EXPANDO_ENABLED"

    const-string v15, "KINDLE_ANDROID_DELIVERYCX_FOS_END_ACTIONS_EXPANDO_ONE_TAP_BOOK_OPEN_402077"

    invoke-direct {v0, v14, v13, v15, v2}, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;->ONE_TAP_CX_FOS_END_ACTIONS_EXPANDO_ENABLED:Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

    .line 38
    new-instance v0, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

    const/16 v14, 0xc

    const-string v15, "COROUTINES_DOWNLOAD_WORKFLOW_ENABLED"

    const-string v13, "KINDLE_ANDROID_DELIVERYCX_COROUTINES_WORKFLOW_402814"

    invoke-direct {v0, v15, v14, v13, v2}, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;->COROUTINES_DOWNLOAD_WORKFLOW_ENABLED:Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

    const/16 v2, 0xd

    new-array v2, v2, [Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

    .line 25
    sget-object v13, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;->ONE_TAP_CX_LIBRARY_ENABLED:Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

    aput-object v13, v2, v1

    sget-object v1, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;->ONE_TAP_CX_SDP_ENABLED:Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

    aput-object v1, v2, v3

    sget-object v1, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;->COMICS_ONE_TAP_CX_END_ACTIONS_NIS_ENABLED:Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

    aput-object v1, v2, v4

    sget-object v1, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;->ONE_TAP_CX_END_ACTIONS_EXPANDO_ENABLED:Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

    aput-object v1, v2, v5

    sget-object v1, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;->REQUIRED_EXCLUSIVE_THREADING_ENABLED:Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

    aput-object v1, v2, v6

    sget-object v1, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;->SINGLE_GLOBAL_CLOUDFRONT_ENABLED:Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

    aput-object v1, v2, v7

    sget-object v1, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;->SUPPORTED_VOUCHER_VERSIONS_MANIFEST:Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

    aput-object v1, v2, v8

    sget-object v1, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;->OKHTTP_DOWNLOADS_ENABLED:Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

    aput-object v1, v2, v9

    sget-object v1, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;->ONE_TAP_CX_FOS_END_ACTIONS_NIS_ENABLED:Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

    aput-object v1, v2, v10

    sget-object v1, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;->ONE_TAP_CX_FOS_HOME_ENABLED:Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

    aput-object v1, v2, v11

    sget-object v1, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;->ONE_TAP_CX_FOS_SEARCH_ENABLED:Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

    aput-object v1, v2, v12

    sget-object v1, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;->ONE_TAP_CX_FOS_END_ACTIONS_EXPANDO_ENABLED:Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

    const/16 v3, 0xb

    aput-object v1, v2, v3

    aput-object v0, v2, v14

    sput-object v2, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;->$VALUES:[Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput-object p3, p0, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;->id:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;->defaultTreatment:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;
    .locals 1

    .line 25
    const-class v0, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;
    .locals 1

    .line 25
    sget-object v0, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;->$VALUES:[Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

    invoke-virtual {v0}, [Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

    return-object v0
.end method


# virtual methods
.method getDefaultTreatment()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;->defaultTreatment:Ljava/lang/String;

    return-object v0
.end method

.method getId()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getTreatmentAndRecordTrigger()Ljava/lang/String;
    .locals 1

    .line 72
    invoke-static {p0}, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs;->getTreatmentAndRecordTrigger(Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
