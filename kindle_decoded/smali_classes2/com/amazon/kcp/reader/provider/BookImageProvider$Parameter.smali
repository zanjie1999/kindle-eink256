.class public final enum Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;
.super Ljava/lang/Enum;
.source "BookImageProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/provider/BookImageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Parameter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

.field public static final enum ACCOUNT_SECRETS:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

.field public static final enum CONTAINER_FILES:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

.field public static final enum CROP_TO_FIT:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

.field public static final enum DOCUMENT_PATH:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

.field public static final enum DSN:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

.field public static final enum END_POSITION:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

.field public static final enum FILE_DESCRIPTOR:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

.field public static final enum PAGE_INDEX:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

.field public static final enum PAGE_RECT:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

.field public static final enum START_POSITION:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

.field public static final enum VOUCHER_FILES:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 24
    new-instance v0, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    const/4 v1, 0x0

    const-string v2, "DOCUMENT_PATH"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;->DOCUMENT_PATH:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    .line 25
    new-instance v0, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    const/4 v2, 0x1

    const-string v3, "PAGE_INDEX"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;->PAGE_INDEX:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    .line 26
    new-instance v0, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    const/4 v3, 0x2

    const-string v4, "PAGE_RECT"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;->PAGE_RECT:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    .line 27
    new-instance v0, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    const/4 v4, 0x3

    const-string v5, "FILE_DESCRIPTOR"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;->FILE_DESCRIPTOR:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    .line 28
    new-instance v0, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    const/4 v5, 0x4

    const-string v6, "DSN"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;->DSN:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    .line 29
    new-instance v0, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    const/4 v6, 0x5

    const-string v7, "ACCOUNT_SECRETS"

    invoke-direct {v0, v7, v6}, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;->ACCOUNT_SECRETS:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    .line 30
    new-instance v0, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    const/4 v7, 0x6

    const-string v8, "VOUCHER_FILES"

    invoke-direct {v0, v8, v7}, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;->VOUCHER_FILES:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    .line 31
    new-instance v0, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    const/4 v8, 0x7

    const-string v9, "CONTAINER_FILES"

    invoke-direct {v0, v9, v8}, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;->CONTAINER_FILES:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    .line 32
    new-instance v0, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    const/16 v9, 0x8

    const-string v10, "START_POSITION"

    invoke-direct {v0, v10, v9}, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;->START_POSITION:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    .line 33
    new-instance v0, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    const/16 v10, 0x9

    const-string v11, "END_POSITION"

    invoke-direct {v0, v11, v10}, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;->END_POSITION:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    .line 34
    new-instance v0, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    const/16 v11, 0xa

    const-string v12, "CROP_TO_FIT"

    invoke-direct {v0, v12, v11}, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;->CROP_TO_FIT:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    const/16 v12, 0xb

    new-array v12, v12, [Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    .line 23
    sget-object v13, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;->DOCUMENT_PATH:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    aput-object v13, v12, v1

    sget-object v1, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;->PAGE_INDEX:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    aput-object v1, v12, v2

    sget-object v1, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;->PAGE_RECT:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    aput-object v1, v12, v3

    sget-object v1, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;->FILE_DESCRIPTOR:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    aput-object v1, v12, v4

    sget-object v1, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;->DSN:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    aput-object v1, v12, v5

    sget-object v1, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;->ACCOUNT_SECRETS:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    aput-object v1, v12, v6

    sget-object v1, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;->VOUCHER_FILES:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    aput-object v1, v12, v7

    sget-object v1, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;->CONTAINER_FILES:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    aput-object v1, v12, v8

    sget-object v1, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;->START_POSITION:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    aput-object v1, v12, v9

    sget-object v1, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;->END_POSITION:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    aput-object v1, v12, v10

    aput-object v0, v12, v11

    sput-object v12, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;->$VALUES:[Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;
    .locals 1

    .line 23
    const-class v0, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;
    .locals 1

    .line 23
    sget-object v0, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;->$VALUES:[Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    invoke-virtual {v0}, [Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    return-object v0
.end method
